//
//  BIDNameAndColorCell.m
//  Simple Table
//
//  Created by liweihua on 13-3-27.
//  Copyright (c) 2013年 iy1. All rights reserved.
//

#import "BIDNameAndColorCell.h"

#define kNameValueTag 1
#define kColorValueTag 2

@implementation BIDNameAndColorCell

@synthesize name;
@synthesize color;
@synthesize nameLabel;
@synthesize colorLabel;

//- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
//{
//    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
//    if (self) {
//        // Initialization code
//        CGRect nameLabelRect = CGRectMake(0, 5, 70, 15);
//        UILabel *nameLabel = [[UILabel alloc] initWithFrame:nameLabelRect];
//        nameLabel.textAlignment = NSTextAlignmentRight;
//        nameLabel.text = @"Name";
//        nameLabel.font = [UIFont boldSystemFontOfSize:12];
//        [self.contentView addSubview:nameLabel];
//        
//        CGRect colorLabelRect = CGRectMake(0, 26, 70, 15);
//        UILabel *colorLabel = [[UILabel alloc] initWithFrame:colorLabelRect];
//        colorLabel.textAlignment = NSTextAlignmentRight;
//        colorLabel.text = @"Color";
//        colorLabel.font = [UIFont boldSystemFontOfSize:12];
//        [self.contentView addSubview:colorLabel];
//        
//        CGRect nameValueRect = CGRectMake(80, 5, 200, 15);
//        UILabel *nameValue = [[UILabel alloc] initWithFrame:nameValueRect];
//        nameValue.tag = kNameValueTag;
//        [self.contentView addSubview:nameValue];
//        
//        CGRect colorValueRect = CGRectMake(80, 26, 200, 15);
//        UILabel *colorValue = [[UILabel alloc] initWithFrame:colorValueRect];
//        colorValue.tag = kColorValueTag;
//        [self.contentView addSubview:colorValue];
//        
//        
//    }
//    return self;
//}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setName:(NSString *)n
{
    if (![n isEqualToString: name]) {
        name = [n copy];
//        UILabel *nameLabel = (UILabel *)[self.contentView viewWithTag:kNameValueTag];
        nameLabel.text = name;
    }
}

- (void)setColor:(NSString *)c
{
    if (![c isEqualToString:color]) {
        color = [c copy];
//        UILabel *colorLabel = (UILabel *)[self.contentView viewWithTag:kColorValueTag];
        colorLabel.text = color;
    }
}



@end













