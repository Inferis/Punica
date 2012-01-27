//
//  EditBillPhoneController.m
//  SplitTheTab
//
//  Created by Tom Adriaenssen on 27/01/12.
//  Copyright (c) 2012 Adriaenssen BVBA. All rights reserved.
//

#import "EditBillPhoneController.h"
#import "Family.h"
#import "TextEditCell.h"
#import "FamilyCell.h"
#import "FamilyButtonsCell.h"

@interface EditBillPhoneController () <FamilyButtonsCellDelegate>
@end

@implementation EditBillPhoneController

@synthesize bill = _bill;

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
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(donePressed)];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

#pragma mark - Actions

- (void)donePressed {
    [self dismissModalViewControllerAnimated:YES];
}

- (void)didSelectAddFamily {
    
}

- (void)didSelectCategorySettings {
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return section ? 1+[self.bill.families allObjects].count : 1; 
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return !section ? @"Name" : @"Families";
}

- (id)tableView:(UITableView *)tableView cellWithReuseIdentifier:(NSString*)reuseIdentifier {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    }
    
    return cell;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        TextEditCell* cell = [self tableView:tableView cellWithReuseIdentifier:@"TextEditCell"];
        [cell apply:self.bill.name];
        return cell;
    }

    if (indexPath.row < [self.bill.families allObjects].count - 1) {
        FamilyCell* cell = [self tableView:tableView cellWithReuseIdentifier:@"FamilyCell"];
        [cell apply:[self.bill.families.allObjects objectAtIndex:indexPath.row]]; 
        return cell;
    }

    FamilyButtonsCell* cell = [self tableView:tableView cellWithReuseIdentifier:@"FamilyButtonsCell"];
    cell.delegate = self;
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
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}



@end
