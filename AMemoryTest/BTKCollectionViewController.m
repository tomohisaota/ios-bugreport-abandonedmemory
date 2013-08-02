//
//  BTKCollectionViewController.m
//  AMemoryTest
//
//  Created by Tomohisa Ota on 2013/08/02.
//  Copyright (c) 2013年 Tomohisa Ota. All rights reserved.
//

#import "BTKCollectionViewController.h"
#import "BTKCollectionViewCell.h"

@interface BTKCollectionViewController ()

@property NSArray* dataArray;

@end

@implementation BTKCollectionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *filePath = [[NSBundle mainBundle]pathForResource:self.filename ofType:@"txt"];
    NSString *content = [NSString stringWithContentsOfFile:filePath
                                                  encoding:NSUTF8StringEncoding
                                                     error:nil];
    _dataArray = [content componentsSeparatedByString:@"\n"];
    
	// Do any additional setup after loading the view.
    [self.collectionView registerClass:[BTKCollectionViewCell class]
            forCellWithReuseIdentifier:@"BTKCollectionViewCell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger) collectionView:(UICollectionView *)collectionView
      numberOfItemsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (UICollectionViewCell*) collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    BTKCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"BTKCollectionViewCell"
                                                                            forIndexPath:indexPath];
    
    cell.label.text = self.dataArray[indexPath.item];
    return cell;
}

#pragma mark UICollectionViewDelegate

@end
