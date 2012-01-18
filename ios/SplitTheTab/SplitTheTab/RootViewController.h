//
//  RootViewController.h
//  SplitTheTab
//
//  Created by Tom Adriaenssen on 13/11/11.
//  Copyright (c) 2011 Adriaenssen BVBA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIPageControl* pageControl;
@property (strong, nonatomic) IBOutlet UIScrollView* pagesView;

- (IBAction)changePage:(id)sender; 

@end
