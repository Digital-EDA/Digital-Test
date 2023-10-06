from scipy.fftpack import fft
from math import cos, sin
from math import pi
import matplotlib.pyplot as plt
import linecache
import random
import logic as lc

root_path = 'D:/Project/ASIC/FFT_IFFT_IP/user/sim'

real_ipath = "%s/test/in/real.vec"  % (root_path)
imag_ipath = "%s/test/in/imag.vec"  % (root_path)
real_opath = "%s/test/out/real.vec" % (root_path)
imag_opath = "%s/test/out/imag.vec" % (root_path)

total=11
owidth=12 # 实际输出数据的有效位数
M=pow(2, owidth-1)-1 

# 生成测试数据
def generateTest(step):
    ifre = open(real_ipath, 'w')
    ifim = open(imag_ipath, 'w')
    for i in range(pow(2, step)):
        # re = round((2*random.random()-1)*M)
        # im = round((2*random.random()-1)*M)
        re = round(M*sin(2*pi*i/128))
        im = 0
        ifre.writelines(lc.dec2bin(re, owidth, True)+'\n')
        ifim.writelines(lc.dec2bin(im, owidth, True)+'\n')
    ifre.close()
    ifim.close()
    
def import_data(step, type):
    if type == 'input':
        dat = []
        for i in range(pow(2, step)):
            reline = linecache.getline(real_ipath, i+1).lstrip('\n')
            imline = linecache.getline(imag_ipath, i+1).lstrip('\n')
            re = lc.str2dec(reline, 2, owidth, True)
            im = lc.str2dec(imline, 2, owidth, True)
            dat.append(re + im*1j)
        return extFFT(fft(dat))
    elif type == 'output':
        for i in range(pow(2, step)):
            reline = linecache.getline(real_opath, i).lstrip('\n')
            imline = linecache.getline(imag_opath, i).lstrip('\n')
            re = lc.normalize(lc.str2dec(reline, 2, owidth, True))
            im = lc.normalize(lc.str2dec(imline, 2, owidth, True))
            lc.inversionSort(re, owidth)
            lc.inversionSort(im, owidth)
        return {re, im}

def extFFT(arr):
    re = []; im = []
    for val in arr:
        re.append(round(val.real))
        im.append(round(val.imag))
    # re = lc.normalize(re)
    # im = lc.normalize(im)
    plt.plot(range(len(arr)), re)
    plt.show()
    plt.plot(range(len(arr)), im)
    plt.show()

def compare(step):
    # res = generateTest(step)
    res = import_data(step, 'input')
    out = import_data(11, 'output')
    for val in out:
        ore = int(val.real); oim = int(val.imag);
        print("re: %d, im: %d" % (ore, oim))
        rediff = res.real - ore
        imdiff = res.imag - oim
        print("re diff: %d, im diff: %d" % (rediff, imdiff))



generateTest(11)
# res = import_data(11, 'input')
# drawFFT(res)