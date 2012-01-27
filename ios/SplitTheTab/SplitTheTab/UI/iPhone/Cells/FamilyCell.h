//
//  FamilyCell.h
//  SplitTheTab
//
//  Created by Tom Adriaenssen on 27/01/12.
//  Copyright (c) 2012 Adriaenssen BVBA. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Family;

@interface FamilyCell : UITableViewCell

- (void)apply:(Family*)family;

@end
