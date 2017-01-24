//
//  GridDemoViewController.h
//  JNWCollectionViewDemo
//
//  Created by Jonathan Willing on 4/15/13.
//  Copyright (c) 2013 AppJon. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <JNWCollectionView/JNWCollectionViewFramework.h>
#import <JNWCollectionView/JNWCollectionViewGridLayout.h>

@interface GridDemoViewController : NSViewController <JNWCollectionViewDataSource, JNWCollectionViewGridLayoutDelegate>

@property (nonatomic, weak) IBOutlet JNWCollectionView *collectionView;

- (IBAction)addItem:(id)sender;

@end
