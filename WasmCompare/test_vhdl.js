const fs = require('fs');
const fspath = require('path');

const wasm = require('./api');
const old = require('./old');

const TEST_HOME = fspath.resolve(__filename, '..');
const TEST_FOLDER = fspath.join(TEST_HOME, 'vhdl');
const TEST_FILE = fspath.join(TEST_FOLDER, 'ADC_CFG.vhd');

async function main() {
    // for (const file of fs.readdirSync(TEST_FOLDER)) {
    //     const filePath = fspath.join(TEST_FOLDER, file); 
    //     const wasm_res = await wasm.vlogFast(filePath);
    //     const old_res = old.vlogFast(filePath);
    // }

    // const all = await wasm.vhdlAll(TEST_FILE);
    // console.log(JSON.stringify(all, null, '  '));

    const fast = await wasm.vhdlFast(TEST_FILE);
    console.log(JSON.stringify(fast, null, '  '));
}

main();