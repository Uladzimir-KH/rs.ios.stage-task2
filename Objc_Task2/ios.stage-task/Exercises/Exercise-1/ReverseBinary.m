#import "ReverseBinary.h"
#include <math.h>

UInt8 ReverseInteger(UInt8 n) {
    NSMutableString *binaryNumber = [[NSMutableString alloc] initWithString:@""];
    UInt8 var = n;
    UInt8 charPosition;
    //UInt8 result;
    for (int i = 0; i < 8; i++) {
        if (var%2 == 0) {
            [binaryNumber insertString:@"0" atIndex:i];
        } else {
            [binaryNumber insertString:@"1" atIndex:i];
        }
        var = var/2;
    }
    var = 0;
    
    charPosition = 8;
    for (int i = 0; i < 8; i++) {
        charPosition = charPosition - 1;
        NSString *stringChar = [binaryNumber substringWithRange:NSMakeRange(i, 1)];
        var = var + [stringChar integerValue] * pow(2, charPosition);
        
    }
    
    //var = [binaryNumber integerValue];
    //var = ;
        
    NSLog(@"___n:____:%d", n);
    NSLog(@"___var:____:%d", var);
    
    return var;
}
