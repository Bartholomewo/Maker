//
//  UIView+TextField.h
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MakerUntil.h"

@interface UIView (TextField)

- (UITextField *(^)(MK_STRING)) tf_text;
- (UITextField *(^)(NSAttributedString *)) tf_attrText;
- (UITextField *(^)(MK_COLOR)) tf_textColor;
- (UITextField *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) tf_font;
- (UITextField *(^)(TextAlignmentOption)) tf_textAlinment;
- (UITextField *(^)(id)) tf_delegate;
- (UITextField *(^)(TextBorderStyleOption)) tf_style;
- (UITextField *(^)(MK_STRING)) tf_placeholder;
- (UITextField *(^)(TextFieldViewModeOption)) tf_clearMode;
- (UITextField *(^)(MK_UIVIEW, TextFieldViewModeOption)) tf_leftView;
- (UITextField *(^)(MK_UIVIEW, TextFieldViewModeOption)) tf_rightView;

@end
