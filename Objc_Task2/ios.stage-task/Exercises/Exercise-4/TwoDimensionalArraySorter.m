#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    //NSMutableArray *varArray = [NSMutableArray new];
    NSMutableArray *stringsArray = [NSMutableArray new];
    NSMutableArray *numbersArray = [NSMutableArray new];
    //NSMutableArray *finalMutArray = [NSMutableArray new];
    NSArray *stringsSorted = [NSArray new];
    NSArray *numbersSorted = [NSArray new];
    //NSArray *finalArray = [NSArray new];
    stringsSorted = @[];
    numbersSorted = @[];
    //finalArray = @[];

    if (array == nil || ![array[0] isKindOfClass:[NSArray class]]) {
        return @[];
    }
    
    for (int i = 0; i < array.count; i++) {
        NSArray *insideArray = [[NSArray alloc] initWithArray:array[i]];
        if ([insideArray[0] isKindOfClass:[NSString class]]) {
            for (int x = 0; x < insideArray.count; x++){
                [stringsArray addObject:insideArray[x]];
                }
        } else {
            for (int x = 0; x < insideArray.count; x++){
                [numbersArray addObject:insideArray[x]];
                }
        }
    }
    
    stringsSorted = [stringsArray sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    NSSortDescriptor* sortOrder = [NSSortDescriptor sortDescriptorWithKey: @"self" ascending: YES];
    numbersSorted = [numbersArray sortedArrayUsingDescriptors: [NSArray arrayWithObject: sortOrder]];
    
    NSLog(@"numbersSorted: %@", numbersSorted);
    NSLog(@"stringsSorted: %@", stringsSorted);
    
    if (stringsSorted.count != 0 && numbersSorted.count != 0) {
        NSArray *finalArray = [[NSArray alloc] initWithObjects:numbersSorted, stringsSorted, nil];
        return finalArray;
    }
    
    if (stringsSorted.count != 0 && numbersSorted.count == 0) {
        return stringsSorted;
    }
    
    if (stringsSorted.count == 0 && numbersSorted.count != 0) {
        return numbersSorted;
    }
    
    
    return @[];
}

@end
