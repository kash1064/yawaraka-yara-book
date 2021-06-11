# Compile
CC		:= gcc
CPP     := g++
CFLAGS := -C -w -no-pie -fno-pie
LFLAGS := -S -w
MINGW := x86_64-w64-mingw32-c++
MFLAG := -C -w -no-pie -fno-pie
NASM := nasm
AFLAG := -felf64
YARAC := yarac
YFLAG := 
SAMPLE_SRC_DIR := /yaramaster/sample_source
SAMPLE_UTIL_DIR := /yaramaster/sample_utils
SAMPLE_LST_DIR := /yaramaster/sample_lst
SAMPLE_DUMP_DIR := /yaramaster/sample_dump
YARA_RULE_DIR := /yaramaster/yararules
COMPILED_RULE_DIR := /yaramaster/yararule_compiled
OBJ_FILES := 03_helloworld.obj 03_addnum.obj 03_helloworld_wide.obj \
			 04_helloworld.obj 04_bytedata.obj \
			 05_base64flag.obj 07_hello_elf.obj
EXE_FILES := 04_helloworld.exe 06_hello_pe.exe
ASM_OBJECTS := 04_text_offset.o 04_for_condition.o
BIN_FILES := 03_xor_converter.bin
OBJ_DUMP_FILES := 03_helloworld.dump 03_addnum.dump 03_helloworld_wide.dump \
				  04_helloworld.dump 04_bytedata.dump \
				  05_base64flag.dump 07_hello_elf.dump
YARA_RULE_COMPILED := 02_option_test.yarc  02_sample_A.yarc  02_sample_B.yarc  02_strings_and_condition.yarc \
					  03_ascii_text.yarc 03_hex_strings.yarc 03_wide_text.yarc 03_base64_text.yarc \
					  03_nocase_text.yarc 03_xor_text.yarc 03_fullword_text.yarc 03_private_text.yarc

%.dump : ${OBJ_FILES} ${BIN_FILES}
	objdump -d $< > ${SAMPLE_DUMP_DIR}/$*.dump

%.obj : ${SAMPLE_SRC_DIR}/%.cpp
	$(CPP) ${CFLAGS} $< -o $@ 
	$(CPP) ${LFLAGS} $< -o ${SAMPLE_LST_DIR}/$*.lst

%.bin : ${SAMPLE_UTIL_DIR}/%.cpp
	$(CPP) ${CFLAGS} $< -o $@ 

%.o : ${SAMPLE_SRC_DIR}/%.asm
	$(NASM) ${AFLAG} $< -o ${SAMPLE_SRC_DIR}/$@
	${CC} ${CFLAGS} ${SAMPLE_SRC_DIR}/$@ -o $*.obj

%.yarc : ${YARA_RULE_DIR}/%.yar
	$(YARAC) ${YFLAG} $< ${COMPILED_RULE_DIR}/$@

%.exe : ${SAMPLE_SRC_DIR}/%.cpp
	${MINGW} ${MFLAG} $< -o $@ 

all_compile: ${OBJ_FILES} ${OBJ_DUMP_FILES} ${ASM_OBJECTS} ${BIN_FILES} ${YARA_RULE_COMPILED} ${EXE_FILES}

clear_all_outputs:
	-find . -name "*.lst" -exec rm {} \;
	-find . -name "*.bin" -exec rm {} \;
	-find . -name "*.obj" -exec rm {} \;
	-find . -name "*.o" -exec rm {} \;
	-find . -name "*.dump" -exec rm {} \;
	-find . -name "*.yarc" -exec rm {} \;
	-find . -name "*.exe" -exec rm {} \;

test:
	make clear_all_outputs
	make all_compile

module:
	cp sample_module/04_dict_module.c /yara-4.1.0/libyara/modules
	cp sample_module/05_sample_module.c /yara-4.1.0/libyara/modules
	echo "MODULE(my_dict)" >> \
		/yara-4.1.0/libyara/modules/module_list
	echo "MODULES += modules/04_dict_module.c" >> \
		/yara-4.1.0/libyara/Makefile.am

	# echo "MODULE(sample_module)" >> \
	# 	/yara-4.1.0/libyara/modules/module_list
	# echo "MODULES += modules/05_sample_module.c" >> \
	# 	/yara-4.1.0/libyara/Makefile.am

	cd /yara-4.1.0; make; make install

	echo "/usr/local/lib" >> /etc/ld.so.conf
	ldconfig