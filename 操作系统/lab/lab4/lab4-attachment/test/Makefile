C_SRC       = $(sort $(wildcard *null.c))
OBJ		    = $(patsubst %.c,%.o,$(C_SRC))

C_SRC_TEST       = $(sort $(wildcard *test.c))
OBJ_TEST		 = $(patsubst %.c,%.o,$(C_SRC_TEST))


all:$(OBJ)
	
%.o:%.c
	${GCC}  ${CFLAG} -c $<

test:$(OBJ_TEST)
	
%.o:%.c
	${GCC}  ${CFLAG} -c $<

clean:
	$(shell rm *.o 2>/dev/null)