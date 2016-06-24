//
//  CKShareCell.h
//  CKActionSheet
//
//  Created by 陈文昊 on 16/6/19.
//  Copyright © 2016年 NSObject. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kCKShareCellHeight  120

@protocol CKShareCellDelegate <NSObject>

@optional
- (void)selectedButton:(UIButton *)button tag:(NSInteger)tagNumber;

@end

@interface CKShareCell : UITableViewCell

@property (nonatomic, assign) id<CKShareCellDelegate> delegate;
@property (nonatomic, copy)   NSArray *models;

@property (nonatomic, retain) UIScrollView *scrollView;

@end
