//
//  UIView+Label.m
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "UIView+Label.h"

@implementation UIView (Label)
- (UILabel *(^)(MK_STRING)) lab_text { MK_RETURNNIL; }
- (UILabel *(^)(MK_COLOR)) lab_textColor { MK_RETURNNIL; }
- (UILabel *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) lab_font { MK_RETURNNIL; }
- (UILabel *(^)(TextAlignmentOption)) lab_textAlinment { MK_RETURNNIL; }
- (UILabel *(^)(LineBreakModeOption)) lab_lineBreakMode { MK_RETURNNIL; }
- (UILabel *(^)(MK_INTEGER)) lab_numberOfSection { MK_RETURNNIL; }
- (UILabel *(^)(MK_BOOL))lab_enabled { MK_RETURNNIL; }

@end
