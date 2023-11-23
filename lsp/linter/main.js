const childProcess = require("child_process");

remove_files = ["xvlog.pb", "xvhdl.pb"]
remove_folders = ["xsim.dir"]

/**
 * 
 * @param {string} file 
 * @param {string[]} args
 * @returns {Promise<{ stdout: string, stderr: string }>} 
 */
async function easyExec(file, args) {
    const allArguments = [file, ...args];
    const command = allArguments.join(' ');

    const p = new Promise( ( resolve, _ ) => {
        childProcess.exec(command, ( _, stdout, stderr ) => {
            resolve({ stdout, stderr });
        });
    });

    return p;
}


async function linter_vlog(path) {
    let command = `xvlog ${path} --nolog`;

    const { stdout, stderr } = await easyExec('C:/modeltech64_10.4/win64/vlog.exe', [path, '--nolog']);
    console.log(stdout);
    for (const line of stdout.split('\n')) {
        if (line.startsWith('ERROR')) {
            const tokens = line.split(/:?\s*(?:\[|\])\s*/);
            console.log(tokens);
        }
    }
}

linter_vlog("./parent.v")
