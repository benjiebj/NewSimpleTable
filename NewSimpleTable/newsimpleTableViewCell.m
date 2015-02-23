//
//  newsimpleTableViewCell.m
//  NewSimpleTable
//
//  Created by Benjie dela Vega on 2/11/15.
//  Copyright (c) 2015 Benjie dela Vega. All rights reserved.
//

#import "newsimpleTableViewCell.h"

@implementation newsimpleTableViewCell
@synthesize nameLabel = _nameLabel;
@synthesize press = _press;
@synthesize thumbnailImageView = _thumbnailImageView;


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
