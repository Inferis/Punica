//
//  FamilyCell.m
//  SplitTheTab
//
//  Created by Tom Adriaenssen on 27/01/12.
//  Copyright (c) 2012 Adriaenssen BVBA. All rights reserved.
//

#import "FamilyCell.h"
#import "Family.h"

@implementation FamilyCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)apply:(Family *)family {
    self.textLabel.text = family.name;
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    NSString *normalImg, *highImg;
    if (family.totalMembers == 0) {
        normalImg = @"Family_Empty_N.png";
        highImg = @"Family_Empty_H.png";
    }
    else if (family.totalMembers == 1) {
        normalImg = @"Family_Empty_N.png";
        highImg = @"Family_Empty_H.png";
    }
    else {
        normalImg = @"Family_Empty_N.png";
        highImg = @"Family_Empty_H.png";
    }
    
    self.imageView.image = [UIImage imageNamed:normalImg];
    self.imageView.highlighted = [UIImage imageNamed:highImg];
}

@end
