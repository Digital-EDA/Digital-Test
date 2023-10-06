RAM_PATH:= /mnt/d/Project/ASIC/FFT_IFFT_IP/user/src/utils/RAM
ROM_PATH:= /mnt/d/Project/ASIC/FFT_IFFT_IP/user/src/utils/ROM
BIN_PATH:= /mnt/d/Project/ASIC/FFT_IFFT_IP/user/data/twiddle/bin

S018VM:= /mnt/d/Project/ASIC/library/smic180/mem/S018VM_V0P1PC_CDK
S018SP:= /mnt/d/Project/ASIC/library/smic180/mem/S018SP_v0p1pc_CDK
S018DP:= /mnt/d/Project/ASIC/library/smic180/mem/S018DP_v0p2pa_CDK
S018RF2P:= /mnt/d/Project/ASIC/library/smic180/mem/S018RF2P_v0p2pb_CDK

# 共用参数
MEM_ARGE:= -bits 48 # 数据位宽
MEM_ARGE+= -v # 生成Verilog代码	
MEM_ARGE+= -lib # 生成lib文件
MEM_ARGE+= -cdl
MEM_ARGE+= -gds
MEM_ARGE+= -lef
MEM_ARGE+= -pdf
MEM_ARGE+= -mbist
# MEM_ARGE+= -bitwrite  # 支持bit位读写(DRAM)   
MEM_ARGE+= -powermesh
# MEM_ARGE+= -powerring -ringwidth 4
MEM_ARGE+= -savepath # 放在最后方便设置保存路径

RAM_LEN:= 512
.PHONY: ram
ram : 
	rm -rf ${RAM_PATH}/2048FP
	mkdir ${RAM_PATH}/2048FP
	mkdir ${RAM_PATH}/2048FP/db
	cd ${S018RF2P} && \
	java -jar ./S018RF2P.jar ${MEM_ARGE} ${RAM_PATH}/2048FP \
		 -instname FRAM${RAM_LEN} \
		 -words ${RAM_LEN} \
		 -mux 2
	rm -rf ${RAM_PATH}/2048FP/gds ${RAM_PATH}/2048FP/log 
	
ROM_STEP:=8
ROM_LEN:=64
.PHONY: rom
rom :
# rm -rf ${ROM_PATH}/twiddle${ROM_STEP}
# mkdir ${ROM_PATH}/twiddle${ROM_STEP}
	cd ${S018VM} && \
	java -jar ./S018VM.jar ${MEM_ARGE} ${ROM_PATH}/twiddle${ROM_STEP} \
		 -words ${ROM_LEN} \
		 -mux 16 \
		 -codefile ${BIN_PATH}/twiddle${ROM_STEP} \
		 -instname twiddle${ROM_STEP}
	rm -rf ${ROM_PATH}/twiddle${ROM_STEP}/gds ${ROM_PATH}/twiddle${ROM_STEP}/log 

.PHONY: clean-mem
clean-mem :
	rm -rf ${RAM_PATH} ${ROM_PATH}