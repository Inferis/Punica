//
//  BillListCell.m
//  SplitTheTab
//
//  Created by Tom Adriaenssen on 27/01/12.
//  Copyright (c) 2012 Adriaenssen BVBA. All rights reserved.
//

#import "BillListCell.h"
#import "Bill.h"

@implementation BillListCell

- (id)initWithReuseIdentifier:(NSString*)reuseIdentifier {
    if ((self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier])) {
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)apply:(Bill*)bill {
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator; 
    self.imageView.image = [UIImage imageNamed:@"Bill_N.png"];
    self.imageView.highlightedImage = [UIImage imageNamed:@"Bill_H.png"];
    self.textLabel.text = @"";
    self.detailTextLabel.text = @"11/09/2011 - 18/09/2011";
}

@end
