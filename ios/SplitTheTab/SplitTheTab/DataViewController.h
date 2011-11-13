//
//  DataViewController.h
//  SplitTheTab
//
//  Created by Tom Adriaenssen on 13/11/11.
//  Copyright (c) 2011 Adriaenssen BVBA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) id dataObject;
@end
