//
//  ViewController.m
//  CKShare
//
//  Created by 陈文昊 on 16/6/19.
//  Copyright © 2016年 NSObject. All rights reserved.
//

#import "ViewController.h"
#import "CKShareSheet.h"

@interface ViewController () <CKShareSheetDelegate>

@property (weak, nonatomic) IBOutlet UILabel *TitleLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)ShareAction:(id)sender {
    CKShareSheet *shareSheet = [[CKShareSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:nil];
    [shareSheet show];
}

- (void)shareSheet:(CKShareSheet *)shareView clickedButtonAtIndex:(NSInteger)index
{
    switch (index) {
        case 1:
            self.TitleLabel.text = [NSString stringWithFormat:@"微信 - tag:%ld", (long)index];
            break;
        case 2:
            self.TitleLabel.text = [NSString stringWithFormat:@"朋友圈 - tag:%ld", (long)index];
            break;
        case 3:
            self.TitleLabel.text = [NSString stringWithFormat:@"QQ - tag:%ld", (long)index];
            break;
        case 4:
            self.TitleLabel.text = [NSString stringWithFormat:@"QQ空间 - tag:%ld", (long)index];
            break;
        case 5:
            self.TitleLabel.text = [NSString stringWithFormat:@"举报 - tag:%ld", (long)index];
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
