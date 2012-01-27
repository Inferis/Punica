//
//  FamilyButtonsCell.h
//  SplitTheTab
//
//  Created by Tom Adriaenssen on 27/01/12.
//  Copyright (c) 2012 Adriaenssen BVBA. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FamilyButtonsCellDelegate <NSObject>

- (void)didSelectAddFamily;
- (void)didSelectCategorySettings;

@end

@interface FamilyButtonsCell : UITableViewCell

@property (nonatomic, retain) id<FamilyButtonsCellDelegate> delegate;

@end
