CC=gcc
CPP=g++

CFLAGS= -g -lm -O3 -fomit-frame-pointer -pipe -lpthread
CPPFLAGS=-O3 -fomit-frame-pointer -pipe -lpthread

BINARIES= QS_lab\
	QS_lab64bit\
	BWQS16bit\
	BWQS32bit\
	BWQS64bit\
	BWQS64bit_orig\
	BWQS150bit\
	BWQS16bit_vInit\
	BWQS32bit_vInit\
	BWQS64bit_vInit\
	BWQS150bit_vInit\
	BWQS16bit_builtin\
	BWQS32bit_builtin\
	BWQS64bit_builtin\
	BWQS150bit_builtin\
	BWQS16bit_full_optm\
	BWQS16bit_full_optm_yahoo\
	BWQS16bit_full_optm_MQ2007\
	BWQS16bit_full_optm_MQ2007_2\
	BWQS32bit_full_optm\
	BWQS64bit_full_optm\
	BWQS64bit_full_optm_yahoo\
	BWQS64bit_full_optm_MSLR\
	BWQS150bit_full_optm\
	BWQS150bit_full_optm_2\
	BWQS150bit_full_optm_yahoo

all: ${BINARIES}

QS_lab:QS_lab.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

QS_lab64bit:QS_lab64bit.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS16bit:BWQS16bit.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS32bit:BWQS32bit.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS64bit:BWQS64bit.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS64bit_orig:BWQS64bit_orig.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS150bit:BWQS150bit.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS16bit_vInit:BWQS16bit_vInit.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS32bit_vInit:BWQS32bit_vInit.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS64bit_vInit:BWQS64bit_vInit.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS150bit_vInit:BWQS150bit_vInit.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS16bit_builtin:BWQS16bit_builtin.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS32bit_builtin:BWQS32bit_builtin.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS64bit_builtin:BWQS64bit_builtin.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS150bit_builtin:BWQS150bit_builtin.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS16bit_full_optm:BWQS16bit_full_optm.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS16bit_full_optm_yahoo:BWQS16bit_full_optm_yahoo.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS16bit_full_optm_MQ2007:BWQS16bit_full_optm_MQ2007.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS16bit_full_optm_MQ2007_2:BWQS16bit_full_optm_MQ2007_2.o
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS32bit_full_optm:BWQS32bit_full_optm.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS64bit_full_optm:BWQS64bit_full_optm.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS64bit_full_optm_yahoo:BWQS64bit_full_optm_yahoo.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS64bit_full_optm_MSLR:BWQS64bit_full_optm_MSLR.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS150bit_full_optm:BWQS150bit_full_optm.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS150bit_full_optm_2:BWQS150bit_full_optm_2.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

BWQS150bit_full_optm_yahoo:BWQS150bit_full_optm_yahoo.o 
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

clean:
	rm -f ${BINARIES} *.o
