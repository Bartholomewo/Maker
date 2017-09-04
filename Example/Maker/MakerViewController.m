//
//  MakerViewController.m
//  Maker
//
//  Created by forkingghost on 09/04/2017.
//  Copyright (c) 2017 forkingghost. All rights reserved.
//

#import "MakerViewController.h"
#import <Maker/Maker.h>

#import "MakerConfirmViewController.h"
#import <objc/runtime.h>

@interface MakerViewController ()

@end

@implementation MakerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    static unsigned int count = 0;
    objc_property_t *propertyList = class_copyPropertyList([UITableView class], &count);
    for (int i = 0; i < count; i++) {
        const char *name = property_getName(propertyList[i]);
        NSLog(@"%@", [NSString stringWithCString:name encoding:NSUTF8StringEncoding]);
    }
	
    self.title = @"Bartholomew Kuma";
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    __weak typeof(self) weakSelf = self;
    
    UIScrollView *mainScrollView = UIScrollView.maker
    .com_setup(self.view)
    .com_frame(0, 0, screenWidth, screenHeight)
    .scr_contentSize(CGSizeMake(screenWidth, screenHeight + 100));
    
    UIImageView *cardView = UIImageView.maker
    .com_setup(mainScrollView)
    .com_frame(20, 20, screenWidth - 40, 450)
    .com_border(1.0, @"#F1F1F1")
    .com_cornerRadius(5.0)
    .com_contentMode(mk_vToFill)
    .com_userInterface(YES)
    .img_imageName(@"bartholomew_kuma");
    
    UIView *contentView = UIView.maker
    .com_setup(cardView)
    .com_frame(0, 300, screenWidth-40, 150)
    .com_backgroundColor2(@"#000000", 0.5);
    
    UILabel.maker
    .com_setup(contentView)
    .com_frame(10, 10, screenWidth-60, 50)
    .lab_text(@"バーソロミュー くま: 这个名字来自耶稣的十二门徒之一，Bartholemew。")
    .lab_lineBreakMode(mk_Char)
    .lab_numberOfSection(2)
    .lab_font1(15)
    .lab_textColor(@"#FFFFFF");
    
    UILabel.maker
    .com_setup(contentView)
    .com_frame(10, 70, screenWidth-40, 15)
    .lab_text(@"赏金：2亿9600万贝里")
    .lab_textColor(@"#EEEEEE")
    .lab_font1(13);
    

    UIButton.maker
    .com_setup(contentView)
    .com_frame(10, 105, (screenWidth-40)/2-15, 30)
    .com_backgroundColor(@"#F1F1F1")
    .com_border(1.0, [UIColor lightGrayColor])
    .com_cornerRadius(5.0)
    .btn_title(@"抓捕", mk_Normal)
    .btn_titleColor([UIColor lightGrayColor], mk_Normal)
    .btn_font1(13)
    .btn_actionBlock(mk_TouchUpInside, ^(id sender) {
        NSLog(@"抓捕");
    });
    
    UIButton.maker
    .com_setup(contentView)
    .com_frame((screenWidth-40)/2+5, 105, (screenWidth-40)/2-15, 30)
    .com_backgroundColor(@"#FF8802")
    .com_cornerRadius(5.0)
    .btn_title(@"放我走吧/(ㄒoㄒ)/~~", mk_Normal)
    .btn_titleColor(@"#FFFFFF", mk_Normal)
    .btn_font1(13)
    .btn_actionBlock(mk_TouchUpInside, ^(id sender) {
        MakerConfirmViewController *confirm = [[MakerConfirmViewController alloc] init];
        [weakSelf.navigationController pushViewController:confirm animated:YES];
    });
    
    
    UIView *textFieldView = UIView.maker
    .com_setup(mainScrollView)
    .com_frame(20, cardView.frame.origin.y + cardView.frame.size.height + 20, screenWidth - 40, 50)
    .com_backgroundColor(@"#F1F1F1");
    
    UITextField.maker
    .com_setup(textFieldView)
    .com_frame(10, 10, textFieldView.frame.size.width - 20, 30)
    .tf_style(mk_RoundedRect)
    .tf_font1(13)
    .tf_placeholder(@"测试TextField")
    .tf_delegate()
    .tf_maxLength(10)
    .tf_optionBlock(^(){
        NSLog(@"return");
    })
    .tf_changeBlock(^(NSString *text) {
        NSLog(@"%@", text);
    });
}

@end
