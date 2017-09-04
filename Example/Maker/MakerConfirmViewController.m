//
//  MakerConfirmViewController.m
//  Maker
//
//  Created by ZhaoHeng on 2017/9/4.
//  Copyright © 2017年 forkingghost. All rights reserved.
//

#import "MakerConfirmViewController.h"
#import <Maker/Maker.h>

@interface MakerConfirmViewController ()

@end

@implementation MakerConfirmViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    //CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    __weak typeof(self) weakSelf = self;
    UIButton.maker
    .com_setup(self.view)
    .com_frame((screenWidth-60)/2+10, 410, (screenWidth-60)/2-5, 30)
    .com_backgroundColor(@"#FF8802")
    .com_cornerRadius(5.0)
    .btn_title(@"Pop", mk_Normal)
    .btn_titleColor(@"#FFFFFF", mk_Normal)
    .btn_font1(13)
    .btn_actionBlock(mk_TouchUpInside, ^(id sender) {
        [weakSelf dismissViewControllerAnimated:YES completion:nil];
    });
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)dealloc {
    NSLog(@"123123");
}


@end
