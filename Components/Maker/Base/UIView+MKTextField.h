//
//  UIView+MKTextField.h
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MakerUntil.h"

@interface UIView (MKTextField)

- (UITextField *(^)(MK_STRING)) tf_text;
- (UITextField *(^)(NSAttributedString *)) tf_attrText;
- (UITextField *(^)(MK_COLOR)) tf_textColor;
/** 设置标题文字style size weight family */
- (UITextField *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) tf_font;
- (UITextField *(^)(MKTextAlignmentOption)) tf_textAlinment;
- (UITextField *(^)(id)) tf_delegate;
- (UITextField *(^)(MKTextBorderStyleOption)) tf_style;
- (UITextField *(^)(MK_STRING)) tf_placeholder;
- (UITextField *(^)(MKTextFieldViewModeOption)) tf_clearMode;
- (UITextField *(^)(MK_UIVIEW, MKTextFieldViewModeOption)) tf_leftView;
- (UITextField *(^)(MK_UIVIEW, MKTextFieldViewModeOption)) tf_rightView;

@end
