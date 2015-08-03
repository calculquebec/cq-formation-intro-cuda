CC=nvcc
CFLAGS=-arch=sm_12 
LDFLAGS=

.SUFFIXES: .cu

SOURCES=$(PREFIX).cu
EXECUTABLE=$(PREFIX)

OBJECTS=$(SOURCES:.cu=.o)

all: $(OBJECTS) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cu.o:
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(EXECUTABLE) $(OBJECTS)
