#include "chromosome.hh"
#include <iostream>

using namespace std;

int main(){
    
    Cities::permutation_t pur  = {(1,1),(2,2),(3,3),(4,4)};
    Cities cities(pur);
    Chromosome chromosome(&cities);

//    if (chromosome.is_valid())
//	    cout<<"is valid";

//    cout << "\nFitness is:"<<chromosome.get_fitness();

    return 0;
}
