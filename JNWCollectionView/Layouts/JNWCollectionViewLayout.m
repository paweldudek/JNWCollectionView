/*
 Copyright (c) 2013, Jonathan Willing. All rights reserved.
 Licensed under the MIT license <http://opensource.org/licenses/MIT>
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
 documentation files (the "Software"), to deal in the Software without restriction, including without limitation
 the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and
 to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions
 of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
 TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
 CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 IN THE SOFTWARE.
 */

#import "JNWCollectionViewLayout.h"
#import "NSIndexPath+JNWAdditions.h"

@interface JNWCollectionViewLayout()
@property (nonatomic, weak, readwrite) JNWCollectionView *collectionView;
@end

@implementation JNWCollectionViewLayoutAttributes

- (id)copyWithZone:(NSZone *)zone
{
    JNWCollectionViewLayoutAttributes *copy = [[[self class] allocWithZone:zone] init];

    if (copy != nil) {
        copy.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
        copy.alpha = self.alpha;
    }

    return copy;
}

@end

@implementation JNWCollectionViewLayout

- (void)prepareLayout {
	// For subclasses
}

- (instancetype)initWithCollectionView:(JNWCollectionView *)collectionView {
	self = [super init];
	if (self == nil) return nil;
	self.collectionView = collectionView;
	return self;
}

- (JNWCollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath {
	return nil;
}

- (JNWCollectionViewLayoutAttributes *)layoutAttributesForSupplementaryItemInSection:(NSInteger)section kind:(NSString *)kind {
	return nil;
}

- (NSArray *)indexPathsForItemsInRect:(CGRect)rect {
	return nil;
}

- (CGRect)rectForSectionAtIndex:(NSInteger)index {
	return CGRectNull;
}

- (CGSize)contentSize {
	return CGSizeZero;
}

- (NSIndexPath *)indexPathForNextItemInDirection:(JNWCollectionViewDirection)direction currentIndexPath:(NSIndexPath *)currentIndexPath {
	return currentIndexPath;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds {
	return YES;
}

- (NSIndexPath *)indexPathForLastItem
{
    NSInteger section = self.collectionView.numberOfSections - 1;
    NSInteger item = [self.collectionView numberOfItemsInSection:section] - 1;
    return [NSIndexPath jnw_indexPathForItem:item inSection:section];
}

- (NSIndexPath *)indexPathForFirstItem
{
    return [NSIndexPath jnw_indexPathForItem:0 inSection:0];
}
@end
