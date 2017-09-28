.PHONY : clean all

all : reader1 test1

reader_objects = reader1.o

test1_objects = test1.o

CPPFLAGS += -I/usr/local/include/libxml2
LDFLAGS += -L/usr/local/lib -lxml2 -lm -ldl

reader1 : $(reader_objects)
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

test1 : $(test1_objects)
	$(CXX) $(CFLAGS) $< -o $@ $(LDFLAGS)

clean:
	rm reader1 $(reader_objects) test1 $(test1_objects)
