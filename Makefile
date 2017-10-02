.PHONY : clean all

all : reader1 test1

reader1_objects = reader1.o reader2.o

test1_objects = test1.o

LIBXML_INCL = `xml2-config --cflags`
LIBXML_LDFLAGS = `xml2-config --libs`

$(reader1_objects) : %.o : %.c
	$(CC) -c $(CFLAGS) $(LIBXML_INCL) $< -o $@

reader1 : $(reader1_objects)
	$(CC) $^ $(LIBXML_LDFLAGS) -o $@

test1 : $(test1_objects)
	$(CXX) $(CFLAGS) $^ -o $@ $(LDFLAGS)

clean:
	rm -f reader1 $(reader1_objects) test1 $(test1_objects)
