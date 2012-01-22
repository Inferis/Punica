//
//  BillListPhoneController.m
//  SplitTheTab
//
//  Created by Tom Adriaenssen on 18/01/12.
//  Copyright (c) 2012 Adriaenssen BVBA. All rights reserved.
//

#import "BillListPhoneController.h"
#import "IIViewDeckController.h"
#import "CentralBillPhoneController.h"

@interface BillListPhoneController () <IIViewDeckControllerDelegate> {
    CGRect _originalFrame;
}

@end

@implementation BillListPhoneController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    UILabel* titleView = [[UILabel alloc] init];
    titleView.text = @"Yer Tabs";
    titleView.font = [UIFont fontWithName:@"HelveticaNeue-CondensedBold" size:18];
    titleView.backgroundColor = [UIColor clearColor];
    titleView.shadowColor = [UIColor blackColor];
    titleView.shadowOffset = (CGSize) { 0, -1 };
    titleView.textColor = [UIColor whiteColor];
    [titleView sizeToFit];
    
    UIBarButtonItem* addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addBill)];
    //[addButton setTintColor:[UIColor colorWithRed:0.600 green:0.400 blue:0.200 alpha:1.000]];
    self.tableView.scrollsToTop = NO; // so that centerview will
    self.navigationItem.leftBarButtonItems = [NSArray arrayWithObjects:
                                              addButton,
                                              [[UIBarButtonItem alloc] initWithCustomView:titleView],
                                              nil];

    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"leftNavigationBarBackground.png"] forBarMetrics:UIBarMetricsDefault];
    _originalFrame = self.navigationController.view.frame;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

#pragma mark - Actions

- (void)addBill {
    
}

#pragma mark - viewDeck controller

- (BOOL)viewDeckControllerWillOpenLeftView:(IIViewDeckController *)viewDeckController animated:(BOOL)animated {
    self.navigationController.view.frame = CGRectSetWidth(self.navigationController.view.frame, 220);
    self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = NO;
    [self.navigationController.view setNeedsLayout];
    return YES;
}

- (BOOL)viewDeckControllerWillCloseLeftView:(IIViewDeckController *)viewDeckController animated:(BOOL)animated {
    //self.navigationController.view.frame = CGRectSetWidth(self.navigationController.view.frame, 220);
    [UIView animateWithDuration:0.3 animations:^{
        self.navigationController.view.frame = _originalFrame;
    } completion:^(BOOL finished) {
        self.navigationController.navigationBarHidden = YES;
        self.navigationController.navigationBarHidden = NO;
    }];
    
    return YES;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.viewDeckController closeLeftViewBouncing:^(IIViewDeckController *controller) {
    }];
}

@end
