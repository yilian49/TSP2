XX=g++-8
CXXFLAGS=-Wall -Wextra -pedantic -Werror -std=c++17 -O0 -g
LDFLAGS=$(CXXFLAGS)
OBJ=$(SRC:.cc=.o)

all: tsp

chromosome: cities.o
	$(CXX) $(LDFLAGS) -o $@ $^

test_chromosome: cities.o chromosome.o
	$(CXX) $(LDFLAGS) -o $@ $^

tsp: cities.o chromosome.o deme.o


%.o: %.cc %.hh
	$(CXX) $(CXXFLAGS) $(OPTFLAGS) -c -o $@ $<

clean:
	rm -rf *.o test_cities tsp

test: all
	#./test_cities
	./chromosome	
