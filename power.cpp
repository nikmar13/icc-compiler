#include <iostream>
using namespace std;

int main() 
{
    int result = 1;
	for (int i = 0; i < 100000; ++i) {
        int exponent = i;
        while (exponent != 0) {
            result *= exponent;
            --exponent;
        }
    }
    cout << result;
    return 0;
}

