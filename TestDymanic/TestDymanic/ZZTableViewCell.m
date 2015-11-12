//
//  ZZTableViewCell.m
//  TestDymanic
//
//  Created by mix on 15/11/12.
//  Copyright © 2015年 mix. All rights reserved.
//

#import "ZZTableViewCell.h"

@interface ZZTableViewCell ()
@property (nonatomic, strong) UILabel *label;
@end


@implementation ZZTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 400, 0)];
        self.label.backgroundColor = [UIColor clearColor];
        self.label.numberOfLines = 0;
        [self addSubview:self.label];
        return self;
    }
    return self;
}


- (void)setText:(NSString *)text{
    self.label.text = text;
    [self.label sizeToFit];
    CGRect rect = self.frame;
    rect.size.height = self.label.frame.size.height;
    self.frame = rect;
}



@end
