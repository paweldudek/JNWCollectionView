//
// Created by chris on 18.11.13.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Mapping)

- (NSDictionary*)jnw_dictionaryByMappingKeys:(id (^)(id))block;

@end
