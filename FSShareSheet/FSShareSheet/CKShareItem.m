//
//  CKShareItem.m
//  CKActionSheet
//
//  Created by 陈文昊 on 16/6/19.
//  Copyright © 2016年 NSObject. All rights reserved.
//

#import "CKShareItem.h"

@implementation CKShareItem

- (instancetype)initWithFrame:(CGRect)frame
{
    if (!(self = [super initWithFrame:frame])) return nil;
    
    self.backgroundColor = [UIColor clearColor];
    
    self.button = UIButton.new;
    [self addSubview:self.button];
    
    self.titleLabel               = UILabel.new;
    self.titleLabel.font          = [UIFont systemFontOfSize:12.f];
    self.titleLabel.numberOfLines = 2;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.baselineAdjustment = UIBaselineAdjustmentAlignCenters;
    [self addSubview:self.titleLabel];
    
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGSize curSize = self.bounds.size;
    
    self.button.frame = CGRectMake(0, 0, curSize.width, curSize.width);
    
    CGFloat titleY = CGRectGetMaxY(self.button.frame)+10;
    CGFloat titleH = [self.titleLabel.text boundingRectWithSize:CGSizeMake(curSize.width, curSize.height-titleY) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:@{NSFontAttributeName:self.titleLabel.font} context:nil].size.height;
    self.titleLabel.frame = CGRectMake(0, titleY, curSize.width, titleH);
}

- (void)setImgName:(NSString *)imgName
{
    [self.button setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
}

- (void)setTitle:(NSString *)title
{
    self.titleLabel.text = title;
}

@end
