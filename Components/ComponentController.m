//
//  ComponentController.m
//  Components
//
//  Created by ZhaoHeng on 2017/6/14.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "ComponentController.h"
#import "UIView+Maker.h"
@interface ComponentController ()

@end

@implementation ComponentController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] init];
    [self.view addSubview:label];
    label.frame = CGRectMake(100, 0, 100, 100);
    label.layer.cornerRadius = 10;
    label.layer.masksToBounds = YES;
    label.layer.borderWidth = 10;
    label.layer.borderColor = [MakerUntil colorWithHexString:@"#123456"].CGColor;
    label.backgroundColor = [MakerUntil colorWithHexString:@"#f1f1f1"];
    label.text = @"hellolad";
    label.textColor = [MakerUntil colorWithHexString:@"#cccccc"];
    label.font = [UIFont systemFontOfSize:17 weight:2.0];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    UILabel *label2 = UILabel.maker
    .com_setup(self.view)
    .com_frame(100, 150, 100 ,100)
    .com_cornerRadius(10, YES)
    .com_border(10, @"123456")
    .com_backgroundColor(@"#f1f1f1")
    .lab_text(@"hellolad")
    .lab_textColor(@"#cccccc")
    .lab_font(17, 2.0, nil)
    .lab_textAlinment(NSTextAlignmentCenter);

    UIButton.maker
    .com_setup(self.view)
    .com_frame(100, 300 ,100 ,100)
    .com_backgroundColor(@"#dddddd")
    .com_cornerRadius(10, YES)
    .com_tag(1)
    .com_alpha(0.5)
    .btn_font(10, 0, nil)
    .btn_title(@"点击我", UIControlStateNormal)
    .btn_titleColor(@"#aaaaaa", UIControlStateNormal)
    .btn_actionBlock(UIControlEventTouchUpInside, ^(id sender){
        NSLog(@"action_block");
    });
}

- (void) buttonPressed:(UIButton *)button {
    NSLog(@"action");
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

//    ViewController* VC = [ViewController new];
//    [self presentViewController:VC animated:YES completion:nil];
}

@end
