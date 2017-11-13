DIR=src
LIBS=-lm
OBJS=$(patsubst %.c,%.o,$(DIR)/convertabc3.c) $(patsubst %.c,%.o,$(DIR)/mylib.c)

all: genepop2table

genepop2table: $(OBJS)
	$(CXX) $(OBJS) -o $@.exe $(LIBS)

clean:
	rm $(wildcard $(DIR)/*.o) genepop2table.exe

