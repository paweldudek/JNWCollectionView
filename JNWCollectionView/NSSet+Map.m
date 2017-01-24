//
// Created by chris on 18.11.13.
//

#import "NSSet+Map.h"


@implementation NSSet (Map)

- (NSSet*)jnw_map:(id (^)(id))block
{
    NSMutableSet* result = [NSMutableSet set];
    for (id obj in self) {
        [result addObject:block(obj)];
    }
    return result;
}

@end
