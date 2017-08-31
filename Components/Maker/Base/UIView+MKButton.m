//
//  UIView+MKButton.m
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "UIView+MKButton.h"

@implementation UIView (MKButton)

- (UIButton *(^)(MK_STRING, MKControlStateOption)) btn_title { MK_RETURNNIL; }
- (UIButton *(^)(MK_COLOR, MKControlStateOption))btn_titleColor { MK_RETURNNIL; }
- (UIButton *(^)(MK_UIIMAGE, MKControlStateOption, MK_BOOL)) btn_image { MK_RETURNNIL; }
- (UIButton *(^)(CGFloat))btn_font1 { MK_RETURNNIL; }
- (UIButton *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) btn_font2 { MK_RETURNNIL; }
- (UIButton *(^)(UIEdgeInsets, MKUIEdgeInsetsOption)) btn_insets { MK_RETURNNIL; }
- (UIButton *(^)(MK_BOOL)) btn_selected { MK_RETURNNIL; }
- (UIButton *(^)(MK_BOOL)) btn_enabled { MK_RETURNNIL; }
- (UIButton *(^)(id, SEL, MKControlEventsOption)) btn_action { MK_RETURNNIL; }
- (UIButton *(^)(MKControlEventsOption, MKButtonPressedBlock))btn_actionBlock { MK_RETURNNIL; }
- (UIButton *) btn_end { MK_RETURNNIL; }

@end
