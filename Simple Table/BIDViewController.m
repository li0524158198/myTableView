//
//  BIDViewController.m
//  Simple Table
//
//  Created by liweihua on 13-3-24.
//  Copyright (c) 2013年 iy1. All rights reserved.
//

#import "BIDViewController.h"
#import "BIDNameAndColorCell.h"


@interface BIDViewController ()

@end

@implementation BIDViewController
@synthesize listData;
@synthesize computers;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSArray *array = [[NSArray alloc]initWithObjects:@"sleepy",@"sneey",@"bashful", nil];
    self.listData = array;
    [array release];    
    NSDictionary *row1 = [[NSDictionary alloc]initWithObjectsAndKeys:@"MacBook",@"Name",@"White",@"Color", nil];
    NSDictionary *row2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"MacBook Pro",@"Name",@"Silver",@"Color", nil];
    NSDictionary *row3 = [[NSDictionary alloc]initWithObjectsAndKeys:@"iMac",@"Name",@"Silver",@"Color", nil];
    NSDictionary *row4 = [[NSDictionary alloc]initWithObjectsAndKeys:@"Mac Pro",@"Name",@"Silver",@"Color", nil];
    NSDictionary *row5 = [[NSDictionary alloc]initWithObjectsAndKeys:@"Mac Mini",@"Name",@"Silver",@"Color", nil];
    self.computers = [[NSArray alloc]initWithObjects:row1,row2,row3,row4,row5, nil];

}

- (void)viewDidUnload
{
    self.computers = nil;
    self.listData = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark-
#pragma mark Table View Data Source Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//    return [self.listData count];
    return [self.computers count];
}


//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1
//                                     reuseIdentifier:SimpleTableIdentifier];
//    }
//
//    
//    
//    UIImage *image = [UIImage imageNamed:@"star.png"];
//    cell.imageView.image = image;
//
//    NSUInteger row = [indexPath row];
//    cell.textLabel.text = [listData objectAtIndex:row];
//    cell.textLabel.font = [UIFont boldSystemFontOfSize:50];
//    
//    if (row < 2) {
//        cell.detailTextLabel.text = @"sss";
//    }
//    else
//    {
//        cell.detailTextLabel.text = @"dddd" ;
//    }
//    return cell;
//}


//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//   static NSString *CellTableIdentifier = @"CellTableIdentifier";
//    BIDNameAndColorCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
//    if (cell == nil) {
//        cell = [[BIDNameAndColorCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellTableIdentifier];
//    }
//    
//    NSUInteger row = [indexPath row];
//    NSDictionary *rowData = [self.computers objectAtIndex:row];
//    
//    cell.name = [rowData objectForKey:@"Name"];
//    cell.color = [rowData objectForKey:@"Color"];
//    
//    return cell;
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellTableIdentifier = @"CellTableIdentifier";
    static BOOL nibsRegistered = NO;
    if (nibsRegistered) {
        UINib *nib = [UINib nibWithNibName:@"BIDNameAndColorCell" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:CellTableIdentifier];
        nibsRegistered = YES;
    }
    
    BIDNameAndColorCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
    
    NSUInteger row = [indexPath row];
    NSDictionary *rowData = [self.computers objectAtIndex:row];
    
    cell.name = [rowData objectForKey:@"Name"];
    cell.color = [rowData objectForKey:@"Color"];
    return  cell;
}

- (CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 65.0;
}


#pragma mark-
#pragma mark Table Delegate Methods

- (NSInteger) tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row = [indexPath row];
    return row;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row = [indexPath row];
    if (row == 0) {
        return nil;
    }
    
    return indexPath;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row = [indexPath row];
    NSString *rowValue = [listData objectAtIndex:row];
    NSString *message = [[NSString alloc] initWithFormat:@"You selected %@", rowValue];
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Row Selected"
                          message:message
                          delegate:nil
                          cancelButtonTitle:@"Yes, I did"
                          otherButtonTitles:nil];
    
    [alert show];
    [alert release];
     
//     [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}



@end









