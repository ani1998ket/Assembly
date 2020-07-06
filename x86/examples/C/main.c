// One can use inline assebly also but it's not as portable

#include <stdio.h>
#include "add42.h"

int main(){
    int result;
    result = add42( 30 );
    printf( "Result %i\n", result );
    return 0;
}
