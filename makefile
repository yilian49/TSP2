CXX=g++-8
CXXFLAGS=-Wall -Wextra -pedantic -Werror -std=c++17 -O0 -g
LDFLAGS=$(CXXFLAGS)
OBJ=$(SRC:.cc=.o)

all: test_chromosome 

chromosome: chromosome.o cities.o
	$(CXX) $(LDFLAGS) -o $@ $^


%.o: %.cc %.hh
	$(CXX) $(CXXFLAGS) $(OPTFLAGS) -c -o $@ $<

clean:
	rm -rf *.o test_cities tsp

test: all
	./test_chromosome	
