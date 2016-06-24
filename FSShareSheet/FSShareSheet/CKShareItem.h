//
//  CKShareItem.h
//  CKActionSheet
//
//  Created by 陈文昊 on 16/6/19.
//  Copyright © 2016年 NSObject. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CKShareItem : UIView

@property (nonatomic, retain) UIButton *button;
@property (nonatomic, retain) UILabel  *titleLabel;

@property (nonatomic, copy)   NSString *imgName;
@property (nonatomic, copy)   NSString *title;

@end
