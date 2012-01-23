//
//  BillListPhoneController.h
//  SplitTheTab
//
//  Created by Tom Adriaenssen on 18/01/12.
//  Copyright (c) 2012 Adriaenssen BVBA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BillListPhoneController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView* tableView;

- (IBAction)settingsPressed;

@end
