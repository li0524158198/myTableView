//
//  BIDViewController.h
//  Simple Table
//
//  Created by liweihua on 13-3-24.
//  Copyright (c) 2013年 iy1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property(retain,nonatomic) NSArray *listData;
@property(retain,nonatomic) NSArray *computers;

@end
