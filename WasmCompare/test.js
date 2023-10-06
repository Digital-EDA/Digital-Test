const fs = require('fs');
const fspath = require('path');

const wasm = require('./api');
const old = require('./old');

const TEST_HOME = fspath.resolve(__filename, '..');
const TEST_FOLDER = fspath.join(TEST_HOME, 'verilog');
const TEST_FILE = fspath.join(TEST_FOLDER, 'SP018D18RP_V0p5.v');


async function main() {
    // for (const file of fs.readdirSync(TEST_FOLDER)) {
    //     const filePath = fspath.join(TEST_FOLDER, file); 
    //     const wasm_res = await wasm.vlogFast(filePath);
    //     const old_res = old.vlogFast(filePath);
    // }

    const fast = await wasm.vlogAll(TEST_FILE);
    console.log(fast.content);
}


main();