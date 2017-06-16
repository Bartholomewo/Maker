//
//  UIView+Label.h
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MakerUntil.h"

@interface UIView (Label)

- (UILabel *(^)(MK_STRING)) lab_text;
- (UILabel *(^)(MK_COLOR)) lab_textColor;
- (UILabel *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) lab_font;
- (UILabel *(^)(TextAlignmentOption)) lab_textAlinment;
- (UILabel *(^)(LineBreakModeOption)) lab_lineBreakMode;
- (UILabel *(^)(MK_INTEGER)) lab_numberOfSection;
- (UILabel *(^)(MK_BOOL)) lab_enabled;

@end
