//
//  BTKCollectionViewCell.m
//  AMemoryTest
//
//  Created by Tomohisa Ota on 2013/08/02.
//  Copyright (c) 2013年 Tomohisa Ota. All rights reserved.
//

#import "BTKCollectionViewCell.h"

@implementation BTKCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (!self) {
        return nil;
    }
    _label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 130, 20)];
    [self.contentView addSubview:_label];
    return self;
}

@end
