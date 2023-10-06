const fs = require('fs');
const fspath = require('path');

const hdlParser = require('../wasm/parser');

function* walk(path, ext) {
    if (fs.lstatSync(path).isFile()) {
        if (path.endsWith(ext)) {
            yield path;
        }
    } else {
        for (const file of fs.readdirSync(path)) {
            const stat = fs.lstatSync(path);
            const filePath = fspath.join(path, file);
            if (stat.isDirectory()) {
                for (const targetPath of walk(filePath, ext)) {
                    yield targetPath;
                }
            } else if (stat.isFile()) {
                if (filePath.endsWith(ext)) {
                    yield filePath;
                }
            }
        }
    }
}

const _hdlParser = {
    module: null,
    tempPath: '/home/hdl_parser',

    async acquire() {
        const module = this.module;
        if (module) {
            return module;
        } else {
            const _m = await hdlParser();
            this.module = _m;
            return _m;
        }
    }
};


async function callParser(path, func) {
    const wasmModule = await _hdlParser.acquire();
    const source = fs.readFileSync(path, 'utf-8') + '\n';
    wasmModule.FS.writeFile(_hdlParser.tempPath, source, { encoding: 'utf8' });

    const s3 = Date.now();
    const res = wasmModule.ccall('call_parser', 'string', ['string', 'int'], [_hdlParser.tempPath, _hdlParser.tempPath.length, func]);
    console.log(path, '<wasm> compute', Date.now() - s3, 'ms');
    
    return JSON.parse(res);
}


async function vhdlFast(path) {
    return await callParser(path, 1);
}

async function vhdlAll(path) {
    return await callParser(path, 2);
}

async function svFast(path) {
    return await callParser(path, 3);
}

async function svAll(path) {
    return await callParser(path, 4);
}

async function vlogFast(path) {
    return await callParser(path, 5);
}

async function vlogAll(path) {
    return await callParser(path, 6);
}

module.exports = {
    walk,
    vhdlFast,
    vhdlAll,
    svFast,
    svAll,
    vlogFast,
    vlogAll
};