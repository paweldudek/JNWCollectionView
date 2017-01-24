//
// Created by chris on 18.11.13.
//

#import <Foundation/Foundation.h>

@interface NSArray (Mapping)

- (NSArray*)jnw_map:(id (^)(id))block;

@end
