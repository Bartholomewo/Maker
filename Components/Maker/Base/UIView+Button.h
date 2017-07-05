//
//  UIView+Button.h
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MakerUntil.h"

@interface UIView (Button)

- (UIButton *(^)(MK_STRING, ControlStateOption)) btn_title;
- (UIButton *(^)(MK_COLOR, ControlStateOption)) btn_titleColor;
- (UIButton *(^)(MK_UIIMAGE, ControlStateOption, MK_BOOL)) btn_image;
- (UIButton *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) btn_font;
- (UIButton *(^)(MK_BOOL)) btn_selected;
- (UIButton *(^)(MK_BOOL)) btn_enabled;
- (UIButton *(^)(UIEdgeInsets, UIEdgeInsetsOption)) btn_insets;
- (UIButton *(^)(id, SEL, ControlEventsOption)) btn_action;
- (UIButton *(^)(ControlEventsOption, ButtonPressedBlock))btn_actionBlock;
- (UIButton *) btn_end;

@end
