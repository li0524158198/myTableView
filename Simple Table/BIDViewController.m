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
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleTableIdentifier];
    }
    
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [listData objectAtIndex:row];
    
    UIImage *image = [UIImage imageNamed:@"star.png"];
    cell.imageView.image = image;
//    cell.imageView.highlighted = YES;
    return cell;
}


@end
