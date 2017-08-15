//
//  UIView+MKTextField.m
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "UIView+MKTextField.h"

@implementation UIView (MKTextField)

- (UITextField *(^)(MK_STRING)) tf_text { MK_RETURNNIL; }
- (UITextField *(^)(NSAttributedString *)) tf_attrText { MK_RETURNNIL; }
- (UITextField *(^)(MK_COLOR)) tf_textColor { MK_RETURNNIL; }
- (UITextField *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) tf_font { MK_RETURNNIL; }
- (UITextField *(^)(MKTextAlignmentOption)) tf_textAlinment { MK_RETURNNIL; }
- (UITextField *(^)(id)) tf_delegate { MK_RETURNNIL; }
- (UITextField *(^)(MKTextBorderStyleOption)) tf_style { MK_RETURNNIL; }
- (UITextField *(^)(MK_STRING)) tf_placeholder { MK_RETURNNIL; }
- (UITextField *(^)(MKTextFieldViewModeOption)) tf_clearMode { MK_RETURNNIL; }
- (UITextField *(^)(MK_UIVIEW, MKTextFieldViewModeOption)) tf_leftView { MK_RETURNNIL; }
- (UITextField *(^)(MK_UIVIEW, MKTextFieldViewModeOption)) tf_rightView { MK_RETURNNIL; }

@end
