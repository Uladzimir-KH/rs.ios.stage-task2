#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int count = 0;
    //NSNumber *v = [[NSNumber alloc] init];
    //int v;
    for (int i = 0; i < array.count - 1; i++) {
        for (int x = i+1; x < array.count; x++) {
            // v = [array[i-1] intValue];
            if ([array[x] intValue] - [array[i] intValue] == [number intValue]){
                count = count + 1;
            }
        }
    }
    return count;
}

@end
