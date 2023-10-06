const assert = require('assert');
const fs = require('fs');
const fspath = require('path');

const parser = require('./kernel');

class BaseParser {
    constructor() {
        this._parser = this.makeParser();
    }
    makeParser() {}
    /**
     * @description 解析HDL代码
     * @param {string} code 
     * @returns {object}
     */
    parse(code) {
        return this._parser.parse(code);
    }

    /**
     * @description 给出词法解析结果
     * @param {string} code 
     * @returns {{comments: Array<CommentResult>, 
     *            defines: object, 
     *            includes: object, 
     *            symbols: Array<SymbolResult>}}
     */
    symbol(code) {
        return this._parser.symbol(code);
    }

    lint(code) {
        return this._parser.lint(code);
    }
}


class VlogParser extends BaseParser {
    makeParser() {
        return new parser.vlog();
    }
}

class VhdlParser extends BaseParser {
    makeParser() {
        return new parser.vhdl();
    }
}


const vhdlParser = new VhdlParser();
const vlogParser = new VlogParser();

function vlogFast(path) {
    const source = fs.readFileSync(path, 'utf-8') + '\n';
    const s1 = Date.now();
    const old_res = vlogParser.parse(source);
    console.log(path, '<old> compute', Date.now() - s1, 'ms');
}


function vlogAll(path) {
    const source = fs.readFileSync(path, 'utf-8') + '\n';
    const s1 = Date.now();
    const old_res = vlogParser.symbol(source);
    console.log(path, '<old> compute', Date.now() - s1, 'ms');
}

module.exports = {
    vhdlParser,
    vlogParser,
    parser,
    vlogFast,
    vlogAll
}