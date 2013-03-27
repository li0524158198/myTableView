//
//  BIDViewController.m
//  Simple Table
//
//  Created by liweihua on 13-3-24.
//  Copyright (c) 2013年 iy1. All rights reserved.
//

#import "BIDViewController.h"


@interface BIDViewController ()

@end

@implementation BIDViewController
@synthesize listData;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSArray *array = [[NSArray alloc]initWithObjects:@"sleepy",@"sneey",@"bashful", nil];
    self.listData = array;
    [array release];
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
    return [self.listData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1
                                     reuseIdentifier:SimpleTableIdentifier];
    }

    
    
    UIImage *image = [UIImage imageNamed:@"star.png"];
    cell.imageView.image = image;

    NSUInteger row = [indexPath row];
    cell.textLabel.text = [listData objectAtIndex:row];
    cell.textLabel.font = [UIFont boldSystemFontOfSize:50];
//    cell.imageView.highlighted = YES;
    
    if (row < 2) {
        cell.detailTextLabel.text = @"sss";
    }
    else
    {
        cell.detailTextLabel.text = @"dddd" ;
    }
    return cell;
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









