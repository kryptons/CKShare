//
//  CKShareSheet.h
//  CKActionSheet
//
//  Created by 陈文昊 on 16/6/19.
//  Copyright © 2016年 NSObject. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CKShareSheetDelegate;

@interface CKShareSheet : UIView

@property (nonatomic, assign) id<CKShareSheetDelegate> delegate;

- (instancetype)initWithTitle:(NSString *)title delegate:(id<CKShareSheetDelegate>)delegate cancelButtonTitle:(NSString *)cancelButtonTitle;

- (void)show;

@end

@protocol CKShareSheetDelegate <NSObject>

@optional

- (void)shareSheet:(CKShareSheet *)shareView clickedButtonAtIndex:(NSInteger)index;

@end
