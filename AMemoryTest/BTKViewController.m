//
//  BTKViewController.m
//  AMemoryTest
//
//  Created by Tomohisa Ota on 2013/08/02.
//  Copyright (c) 2013年 Tomohisa Ota. All rights reserved.
//

#import "BTKViewController.h"
#import "BTKCollectionViewController.h"

@implementation BTKViewController

- (IBAction)toJapanese:(id)sender
{
    self.filename = @"japanese";
    [self performSegueWithIdentifier:@"toCollection" sender:self];
}

- (IBAction)toEnglish:(id)sender
{
    self.filename = @"english";
    [self performSegueWithIdentifier:@"toCollection" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    BTKCollectionViewController *vc = [segue destinationViewController];
    vc.filename = self.filename;
}

@end
