#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSMutableString *s = [[NSMutableString alloc] initWithString: @""];
    if (numbersArray.count > 4 || numbersArray.count == 0) {
        return @"";
    }
    for (int i = 0; i < numbersArray.count; i++) {
        if ([numbersArray[i] intValue] > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
        if ([numbersArray[i] intValue] < 0) {
            return @"Negative numbers are not valid for input.";
        }
        if (i != 0){
            [s appendFormat: @"."];
        }
        [s appendFormat:@"%@", numbersArray[i]];
    }
    
    
    for (long int x = numbersArray.count; x < 4; x++) {
        [s appendFormat: @"."];
        [s appendFormat:@"%@", @"0"];
    }
    
    
    
    NSString *result = [[NSString alloc] initWithString: s];
    return result;
}

@end
