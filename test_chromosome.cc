#include "chromosome.hh"
#include <iostream>

using namespace std;

int main(){

    Cities cities({(1,1),(2,2),(3,3),(4,4)});
    Chromosome chromosome(cities);

    cout << chromosome -> is_valid();

    return 0;
}