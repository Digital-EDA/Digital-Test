
ofp = open('./user/src/top.v', 'r')
content = ofp.read()

def generateInput(name):
    str = '// Parallel signal input PAD'
    for i in range(12):
        str += f'''
PIDR {name}{i}_PAD(
    .IE(1'b1),
    .PAD({name}{i}),
    .c({name.lower()}[{i}])
);
'''
    print(str)
    return str

def generateOutput(name):
    str = '// Parallel signal output PAD'
    for i in range(12):
        str += f'''
POT12R {name}{i}_PAD(
    .OEN(1'b1),
    .PAD({name}{i}),
    .I({name.lower()}[{i}])
);
'''
    print(str)
    return str

generateInput('IREAL')
generateInput('IIMAG')

generateOutput('OREAL')
generateOutput('OIMAG')

# ofp.write(content)