//
//  UIView+TextField.m
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "UIView+TextField.h"

@implementation UIView (TextField)

- (UITextField *(^)(MK_STRING)) tf_text { MK_RETURNNIL; }
- (UITextField *(^)(NSAttributedString *)) tf_attrText { MK_RETURNNIL; }
- (UITextField *(^)(MK_COLOR)) tf_textColor { MK_RETURNNIL; }
- (UITextField *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) tf_font { MK_RETURNNIL; }
- (UITextField *(^)(TextAlignmentOption)) tf_textAlinment { MK_RETURNNIL; }
- (UITextField *(^)(id)) tf_delegate { MK_RETURNNIL; }
- (UITextField *(^)(TextBorderStyleOption)) tf_style { MK_RETURNNIL; }
- (UITextField *(^)(MK_STRING)) tf_placeholder { MK_RETURNNIL; }
- (UITextField *(^)(TextFieldViewModeOption)) tf_clearMode { MK_RETURNNIL; }
- (UITextField *(^)(MK_UIVIEW, TextFieldViewModeOption)) tf_leftView { MK_RETURNNIL; }
- (UITextField *(^)(MK_UIVIEW, TextFieldViewModeOption)) tf_rightView { MK_RETURNNIL; }

@end
