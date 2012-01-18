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
@synthesize pagesView = _pagesView;

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    pageControlIsChangingPage = NO;

    items = [NSArray arrayWithObjects:@"Le Pal 2011", @"Feestweekend", @"Zeilen Lanzarote", @"#maagd", @"Kroegentocht", @"Nog één", @"Verbeeckx pesten", @"Hoeren", @"Verkiezingen nu", @"ABC", @"DEF", @"EFG", @"HIJ", @"KLM", @"NOP", @"1", @"2", @"3", @"4", @"5", @"6", nil];
    
    NSLog(@"Frame = %@", NSStringFromCGRect(self.pagesView.frame));
    if (_pageControl) {
        self.pagesView.contentSize = (CGSize) { self.pagesView.frame.size.width * items.count, self.pagesView.frame.size.height };
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"black-Linen.png"]];
        
        self.pageControl.numberOfPages = items.count;
        int i = 0;
        for (NSString* item in items) {
            NSLog(@"%@", NSStringFromCGSize(self.pagesView.frame.size));
            UIView* view = [[UIView alloc] initWithFrame:(CGRect) { 320*i, 0, self.pagesView.bounds.size }];
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
    CGFloat pageWidth = _scrollView.frame.size.width;
    int page = floor((_scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
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
    frame = (CGRect) { frame.size.width * self.pageControl.currentPage, 0, frame.size }; 
	
    [self.pagesView scrollRectToVisible:frame animated:YES];
    
	/*
	 *	When the animated scrolling finishings, scrollViewDidEndDecelerating will turn this off
	 */
    pageControlIsChangingPage = YES;
}

@end
