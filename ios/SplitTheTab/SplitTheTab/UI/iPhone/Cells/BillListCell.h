//
//  BillListCell.h
//  SplitTheTab
//
//  Created by Tom Adriaenssen on 27/01/12.
//  Copyright (c) 2012 Adriaenssen BVBA. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Bill;

@interface BillListCell : UITableViewCell

- (id)initWithReuseIdentifier:(NSString*)reuseIdentifier;
- (void)apply:(Bill*)bill;

@end
