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
    static int count = 0;
    
    UILabel *label = UILabel.maker
    .com_setup(self.view)
    .com_frame(20, 40, 100 ,40)
    .com_cornerRadius(10, YES)
    .com_border(2, @"#C3342E")
    .com_backgroundColor(@"#F1F1F1")
    .lab_text(@"Center")
    .lab_textColor(@"#C3342E")
    .lab_font(17, 0, nil)
    .lab_textAlinment(lCenter);
    
    UIButton.maker
    .com_setup(self.view)
    .com_frame(140, 40 ,80 ,40)
    .com_backgroundColor(@"#4E92DF")
    .com_cornerRadius(10, YES)
    .com_tag(1)
    .btn_font(15, 0, nil)
    .btn_title(@"Click Me", bNormal)
    .btn_titleColor(@"#FFFFFF", bNormal)
    .btn_actionBlock(bTouchUpInside, ^(id sender){
        count ++;
        if (count == 4) {
            count = 1;
        }
        if (count == 1) {
            label.lab_textAlinment(lLeft).lab_text(@"Left");
        } else if (count == 2) {
            label.lab_textAlinment(lCenter).lab_text(@"Center");
        } else if (count == 3) {
            label.lab_textAlinment(lRight).lab_text(@"Right");
        }
    });
    
    NSArray *images = @[[UIImage imageNamed:@"1.jpg"],
                        [UIImage imageNamed:@"2.jpg"],
                        [UIImage imageNamed:@"3.jpg"],
                        [UIImage imageNamed:@"4.jpg"],
                        [UIImage imageNamed:@"5.jpg"]];
    UIImageView *imageView2 = UIImageView.maker
    .com_setup(self.view)
    .com_frame(20, 100, 200, 150)
    .com_contentMode(vAspectFit)
    .img_images(images)
    .img_animation(0, 1.0);
    [imageView2 startAnimating];
    
    UIButton.maker
    .com_setup(self.view)
    .com_frame(240, 165, 100, 40)
    .com_backgroundColor(@"#4E92DF")
    .com_cornerRadius(10, YES)
    .com_tag(1)
    .btn_font(15, 0, nil)
    .btn_title(@"Stop", bNormal)
    .btn_titleColor(@"#FFFFFF", bNormal)
    .btn_actionBlock(bTouchUpInside, ^(id sender) {
        UIButton *button = (UIButton *)sender;
        if (imageView2.animating) {
            button.btn_title(@"Start", bNormal);
            [imageView2 stopAnimating];
            imageView2.img_image(images[0]);
        } else {
            button.btn_title(@"Stop", bNormal);
            [imageView2 startAnimating];
        }
    });
    
}

@end
