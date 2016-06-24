//
//  CKShareCell.m
//  CKActionSheet
//
//  Created by 陈文昊 on 16/6/19.
//  Copyright © 2016年 NSObject. All rights reserved.
//

#import "CKShareCell.h"
#import "CKShareItem.h"
#import "CKShareModel.h"

#define kCKShareCellBaseTag 59999

@implementation CKShareCell
@synthesize delegate;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (!(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) return nil;
    
    self.backgroundColor             = [UIColor clearColor];
    self.contentView.backgroundColor = [UIColor clearColor];
    
    self.scrollView = UIScrollView.new;
    self.scrollView.backgroundColor = [UIColor clearColor];
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.alwaysBounceHorizontal = YES;
    [self.contentView addSubview:self.scrollView];
    
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if (self.scrollView) self.scrollView.frame = self.contentView.bounds;
}

- (void)setModels:(NSArray *)models
{
    for (UIView *view in self.scrollView.subviews) {
        [view removeFromSuperview];
    }
    
    CKShareItem *tempItem;
    
    for (int i = 0; i < models.count; i ++) {
        CKShareModel *model = (CKShareModel *)models[i];
        CKShareItem *item   = CKShareItem.new;
        item.imgName        = model.imgName;
        item.title          = model.title;
        item.button.tag     = model.tagNumber+kCKShareCellBaseTag;
        item.button.exclusiveTouch = YES;
        [item.button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.scrollView addSubview:item];
        
        item.frame = CGRectMake(tempItem?CGRectGetMaxX(tempItem.frame)+15:15, 10, 60, kCKShareCellHeight-20);
        tempItem   = item;
        
        if (i == models.count-1) {
            self.scrollView.contentSize = CGSizeMake(CGRectGetMaxX(tempItem.frame)+15, CGRectGetHeight(tempItem.frame));
        }
    }
}

- (void)buttonAction:(UIButton *)button
{
    NSInteger btnTag = button.tag-kCKShareCellBaseTag;
    if ([self.delegate respondsToSelector:@selector(selectedButton:tag:)]) {
        [self.delegate selectedButton:button tag:btnTag];
    }
}

@end















