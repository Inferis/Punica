//
//  RootViewController.m
//  SplitTheTab
//
//  Created by Tom Adriaenssen on 13/11/11.
//  Copyright (c) 2011 Adriaenssen BVBA. All rights reserved.
//

#import "RootViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface RootViewController () {
    BOOL pageControlIsChangingPage;
    NSArray* items;
}

@end

@implementation RootViewController

@synthesize pageControl = _pageControl;
@synthesize pageControlHolder = _pageControlHolder;
@synthesize pagesView = _pagesView;

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    pageControlIsChangingPage = NO;

    items = [NSArray arrayWithObjects:@"Le Pal 2011", @"Feestweekend", @"Zeilen Lanzarote", @"#maagd", @"Kroegentocht", @"Nog één", @"Verbeeckx pesten", @"Hoeren", @"Verkiezingen nu", @"ABC", @"DEF", @"EFG", @"HIJ", @"KLM", @"NOP", @"1", @"2", @"3", @"4", @"5", @"6", nil];
    
    //self.pagesView.frame = (CGRect) { 0, 10, self.pagesView.frame.size.width, 416 };
    NSLog(@"Frame = %@", NSStringFromCGRect(self.pagesView.frame));
    if (_pageControl) {
        self.pagesView.contentSize = (CGSize) { self.pagesView.frame.size.width, self.pagesView.frame.size.height * items.count };
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"black-Linen.png"]];
        self.pageControl.frame = (CGRect) { CGRectGetMidX(self.pageControlHolder.frame)-200, CGRectGetMidY(self.pageControlHolder.frame)-self.pageControlHolder.frame.size.width/2, 400, self.pageControlHolder.frame.size.width };
        self.pageControl.transform = CGAffineTransformMakeRotation(M_PI_2);
        
        self.pageControl.numberOfPages = items.count;
        int i = 0;
        for (NSString* item in items) {
            NSLog(@"%f", self.pagesView.frame.size.height);
            UIView* view = [[UIView alloc] initWithFrame:(CGRect) { 0, 416*i, self.pagesView.frame.size.width, 416 }];
            //view.backgroundColor = i % 2 ? [UIColor redColor] : [UIColor blueColor];
        
            UIImageView* bg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pages.png"]];
            bg.frame = view.bounds;
            [view addSubview:bg];
            
            UILabel* title = [[UILabel alloc] initWithFrame:(CGRect) { 27, 33, view.bounds.size.width - 54, 38 }];
            title.textColor = [UIColor whiteColor];
            title.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:17];
            title.textAlignment = UITextAlignmentCenter;
            title.shadowColor = [UIColor colorWithWhite:0 alpha:0.6];
            title.shadowOffset = (CGSize) { 0, -1 };
            title.text = [items objectAtIndex:i];
            title.opaque = NO;
            title.backgroundColor = [UIColor clearColor];
            [view addSubview:title];
            
            [self.pagesView addSubview:view];
            
            NSLog(@"view = %@", [view debugDescription]);
            i++;
        }
    }

    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
            
        
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

#pragma mark - ScrollView delegate

#pragma mark -
#pragma mark UIScrollViewDelegate stuff
- (void)scrollViewDidScroll:(UIScrollView *)_scrollView
{
    if (pageControlIsChangingPage) {
        return;
    }
    
	/*
	 *	We switch page at 50% across
	 */
    CGFloat pageHeight = _scrollView.frame.size.height;
    int page = floor((_scrollView.contentOffset.y - pageHeight / 2) / pageHeight) + 1;
    self.pageControl.currentPage = page;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)_scrollView 
{
    pageControlIsChangingPage = NO;
}

#pragma mark -
#pragma mark PageControl stuff
- (IBAction)changePage:(id)sender 
{
	/*
	 *	Change the scroll view
	 */
    CGRect frame = self.pagesView.frame;
    frame = (CGRect) { 0, frame.size.height * self.pageControl.currentPage, frame.size }; 
	
    [self.pagesView scrollRectToVisible:frame animated:YES];
    
	/*
	 *	When the animated scrolling finishings, scrollViewDidEndDecelerating will turn this off
	 */
    pageControlIsChangingPage = YES;
}

@end
