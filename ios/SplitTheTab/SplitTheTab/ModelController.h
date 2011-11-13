//
//  ModelController.h
//  SplitTheTab
//
//  Created by Tom Adriaenssen on 13/11/11.
//  Copyright (c) 2011 Adriaenssen BVBA. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>
- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;
@end
