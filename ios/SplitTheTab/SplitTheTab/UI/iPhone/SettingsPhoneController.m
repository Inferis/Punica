//
//  SettingsPhoneController.m
//  SplitTheTab
//
//  Created by Tom Adriaenssen on 23/01/12.
//  Copyright (c) 2012 Adriaenssen BVBA. All rights reserved.
//

#import "SettingsPhoneController.h"

@implementation SettingsPhoneController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(donePressed)];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)donePressed {
    [self dismissModalViewControllerAnimated:YES];
}

@end
