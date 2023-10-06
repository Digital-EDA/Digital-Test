from math import cos, sin
from math import pi
import matplotlib.pyplot as plt
import logic as lc

total=11
owidth=12 # 实际输出数据的有效位数
M=pow(2, owidth-1)-1 

template = '''
`timescale 1ns/1ps
module ftwiddle  #(
    parameter    FTWI_STAGE = 11, // stage of twiddle
    parameter    REAL_WIDTH = 12, // data width of real
    parameter    IMGN_WIDTH = 12  // data width of imgn
) (
	input  [FTWI_STAGE-1:0] idx, // index (head addr) input 
	output [REAL_WIDTH-1:0] ore, // output part of real (signed)
	output [IMGN_WIDTH-1:0] oim  // output part of imgn (signed)
);

wire [REAL_WIDTH:0] re;
wire [IMGN_WIDTH:0] im;

localparam DATA_WIDTH = REAL_WIDTH + IMGN_WIDTH;
localparam DATA_DEPTH = 2**(FTWI_STAGE-3)-1;
wire [DATA_WIDTH-1:0] rom[DATA_DEPTH:0];

wire [1:0] haddr = idx[FTWI_STAGE-1:FTWI_STAGE-2];
wire [FTWI_STAGE-3:0] addr = idx[FTWI_STAGE-3:0];

assign {ore, oim} = haddr == 2'b00 ? {  re,  im } : 
                    haddr == 2'b01 ? {  im, -re } :
                    haddr == 2'b10 ? { -re, -im } :
                    haddr == 2'b11 ? { -im,  re } :
                    0;
                    
assign {re, im} = rom[addr];

generate 
    if(FTWI_STAGE == 3) begin : stage3
        // stage 3 rom
    end
    else if(FTWI_STAGE == 4) begin : stage4
        // stage 4 rom
    end
    else if(FTWI_STAGE == 5) begin : stage5
        // stage 5 rom
    end
    else if(FTWI_STAGE == 6) begin : stage6
        // stage 6 rom
    end
    else if(FTWI_STAGE == 7) begin : stage7
        // stage 7 rom
    end
    else if(FTWI_STAGE == 8) begin : stage8
        // stage 8 rom
    end
    else if(FTWI_STAGE == 9) begin : stage9
        // stage 9 rom
    end
    else if(FTWI_STAGE == 10) begin : stage10
        // stage 10 rom
    end
    else if(FTWI_STAGE == 11) begin : stage11
        // stage 11 rom
    end
endgenerate

endmodule
'''

ofbin = "./bin/twiddle"
ftwid = open("../../src/Parallel_FFT_IFFT/ptwiddle.sv",'w')

# 输入路径
ifre = open("./example/re",'r')
ifim = open("./example/im",'r')

# 用于直接进行画图
def show(x, y):
    # plt.savefig("Figure_r.png")
    plt.plot(list(range(1, x)), y)
    plt.show()

# 虽然是18位的但没实际用满，只用了16位
def test():
    i=0;
    for line in ifre :
        str = line.strip()
        out = lc.str2dec(str, 16, 18, True)
        print("%d : %s",i, out)
        i=i+1

    i=0;
    for line in ifim :
        str = line.strip()
        out = lc.str2dec(str, 16, 18, True)
        print("%d : %s",i, out)
        i=i+1

def twiddle(m, N, width):
    T = pow(2, width-1)-1 
    re =  round(T*cos(2*pi*m/N))
    im = -round(T*sin(2*pi*m/N))
    # print('re:%d, im:%d\n' % (re, im))
    reStr = lc.dec2bin(re, width, True)
    imStr = lc.dec2bin(im, width, True)
    return reStr + imStr

def rtwiddle(m, N, width):
    T = pow(2, width-1)-1 
    re =  round(T*cos(2*pi*m/N))
    im = -round(T*sin(2*pi*m/N))
    # print('re:%d, im:%d\n' % (re, im))
    reStr = lc.dec2bin(re, width, True)
    return reStr

def itwiddle(m, N, width):
    T = pow(2, width-1)-1 
    re =  round(T*cos(2*pi*m/N))
    im = -round(T*sin(2*pi*m/N))
    # print('re:%d, im:%d\n' % (re, im))
    imStr = lc.dec2bin(im, width, True)
    return imStr

def generate(step):
    str = ''
    index = pow(2, step)
    # fbin  = open('%s%d' % (ofbin, step), 'w')
    for i in range(int(index/4)):
        re =  round(M*cos(2*pi*i/index))
        im = -round(M*sin(2*pi*i/index))

        re = lc.dec2bin(re, owidth, True) 
        im = lc.dec2bin(im, owidth, True)
        str += '        assign rom[%d] = %d\'b%s%s;\n' % (i, 2*owidth, re, im)
        # fbin.write(str)

        # re = str2dec(re, 2, owidth, True) 
        # im = str2dec(im, 2, owidth, True)
        # print(i, re, im)
    # fbin.close()
    return str

# test()
# generate(8)
# for i in range(3, total+1) :
#     flag = '// stage %d rom\n' % (i)
#     template = template.replace(flag, flag + generate(i))

# ftwid.write(template)
# ftwid.close()

str = f'''module ptwiddle (
        output [12:0] rtwiddle [63:0],
        output [12:0] itwiddle [63:0]
    );
'''
for m in range(8) :
        for n in range(8) :
            str += '        assign rtwiddle[%d] = 13\'b%s;\n' % ((m*8+n), rtwiddle(n*m, 64, 13))
            str += '        assign itwiddle[%d] = 13\'b%s;\n' % ((m*8+n), rtwiddle(n*m, 64, 13))
str += 'endmodule'
print(str)
ftwid.write(str)
ftwid.close()   