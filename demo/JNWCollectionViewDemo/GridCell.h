//
//  GridCell.h
//  JNWCollectionViewDemo
//
//  Created by Jonathan Willing on 4/15/13.
//  Copyright (c) 2013 AppJon. All rights reserved.
//

#import <JNWCollectionView/JNWCollectionViewCell.h>

@interface GridCell : JNWCollectionViewCell

@property (nonatomic, copy) NSString *labelText;
@property (nonatomic, strong) NSImage *image;

@end
