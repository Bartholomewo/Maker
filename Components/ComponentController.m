//
//  ComponentController.m
//  Components
//
//  Created by ZhaoHeng on 2017/6/14.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "ComponentController.h"
#import "Maker.h"
@interface ComponentController ()

@end

@implementation ComponentController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"XX家居";
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    UIScrollView *mainScrollView = UIScrollView.maker
    .com_setup(self.view)
    .com_frame(0, 0, screenWidth, screenHeight)
    .scr_contentSize(CGSizeMake(screenWidth, screenHeight + 100))
    .scr_end;
    
    UIView *cardView = UIView.maker
    .com_setup(mainScrollView)
    .com_frame(20, 20, screenWidth - 40, 450)
    .com_border(1.0, @"#F1F1F1")
    .com_cornerRadius(5.0);
    
    UIImageView.maker
    .com_setup(cardView)
    .com_frame(0, 0, screenWidth-40, 300)
    .com_contentMode(mk_vToFill)
    .img_image([UIImage imageNamed:@"6.jpg"]);
    
    UILabel.maker
    .com_setup(cardView)
    .com_frame(10, 310, screenWidth-60, 50)
    .lab_text(@"RONZEN纯棉 无任何添加剂 床上春夏被单 床上用品 全面贡缎 欧式风格")
    .lab_lineBreakMode(mk_Char)
    .lab_numberOfSection(2)
    .lab_font2(15, 0.0, nil)
    .lab_textColor(@"#666666");
    
    UILabel.maker
    .com_setup(cardView)
    .com_frame(10, 370, screenWidth-60, 15)
    .lab_text(@"发表于 2017-06-17")
    .lab_textColor(@"#999999")
    .lab_font2(13, 0.0, nil);
    
    UIButton.maker
    .com_setup(cardView)
    .com_frame(10, 410, (screenWidth-60)/2-5, 30)
    .com_backgroundColor(@"#F1F1F1")
    .com_border(1.0, [UIColor lightGrayColor])
    .com_cornerRadius(5.0)
    .btn_title(@"加入购物车", mk_Normal)
    .btn_titleColor([UIColor lightGrayColor], mk_Normal)
    .btn_font1(13)
    .btn_actionBlock(mk_TouchUpInside, ^(id sender) {
        NSLog(@"加入购物车");
    });
    
    UIButton.maker
    .com_setup(cardView)
    .com_frame((screenWidth-60)/2+10, 410, (screenWidth-60)/2-5, 30)
    .com_backgroundColor(@"#FF8802")
    .com_cornerRadius(5.0)
    .btn_title(@"立即下单", mk_Normal)
    .btn_titleColor(@"#FFFFFF", mk_Normal)
    .btn_font1(13)
    .btn_actionBlock(mk_TouchUpInside, ^(id sender) {
        NSLog(@"立即下单");
    });
    
}

@end
