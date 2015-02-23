//
//  newsimpleTableViewCell.h
//  NewSimpleTable
//
//  Created by Benjie dela Vega on 2/11/15.
//  Copyright (c) 2015 Benjie dela Vega. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface newsimpleTableViewCell : UITableViewCell
@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UIButton *press;
@property (strong, nonatomic) IBOutlet UIImageView *thumbnailImageView;
@end
