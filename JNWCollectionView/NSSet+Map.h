//
// Created by chris on 18.11.13.
//

#import <Foundation/Foundation.h>

@interface NSSet (Map)

- (NSSet*)jnw_map:(id (^)(id))block;

@end
