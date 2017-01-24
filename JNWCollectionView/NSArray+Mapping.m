//
// Created by chris on 18.11.13.
//

#import "NSArray+Mapping.h"


@implementation NSArray (Mapping)

- (NSArray*)jnw_map:(id (^)(id))block
{
    NSMutableArray* array = [NSMutableArray arrayWithCapacity:self.count];
    for(id item in self) {
        id result = block(item);
        if (result) {
            [array addObject:result];
        }
    }
    return array;
}

@end
