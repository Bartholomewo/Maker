//
//  UIView+Button.m
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "UIView+Button.h"

@implementation UIView (Button)

- (UIButton *(^)(MK_STRING, ControlStateOption)) btn_title { MK_RETURNNIL; }
- (UIButton *(^)(MK_COLOR, ControlStateOption))btn_titleColor { MK_RETURNNIL; }
- (UIButton *(^)(MK_UIIMAGE, ControlStateOption, MK_BOOL)) btn_image { MK_RETURNNIL; }
- (UIButton *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) btn_font { MK_RETURNNIL; }
- (UIButton *(^)(UIEdgeInsets, UIEdgeInsetsOption)) btn_insets { MK_RETURNNIL; }
- (UIButton *(^)(MK_BOOL)) btn_selected { MK_RETURNNIL; }
- (UIButton *(^)(MK_BOOL)) btn_enabled { MK_RETURNNIL; }
- (UIButton *(^)(id, SEL, ControlEventsOption)) btn_action { MK_RETURNNIL; }
- (UIButton *(^)(ControlEventsOption, ButtonPressedBlock))btn_actionBlock { MK_RETURNNIL; }

@end
