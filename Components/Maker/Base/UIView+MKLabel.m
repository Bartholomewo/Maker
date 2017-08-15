//
//  UIView+MKLabel.m
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "UIView+MKLabel.h"

@implementation UIView (MKLabel)
- (UILabel *(^)(MK_STRING)) lab_text { MK_RETURNNIL; }
- (UILabel *(^)(MK_COLOR)) lab_textColor { MK_RETURNNIL; }
- (UILabel *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) lab_font { MK_RETURNNIL; }
- (UILabel *(^)(MKTextAlignmentOption)) lab_textAlignment { MK_RETURNNIL; }
- (UILabel *(^)(MKLineBreakModeOption)) lab_lineBreakMode { MK_RETURNNIL; }
- (UILabel *(^)(MK_INTEGER)) lab_numberOfSection { MK_RETURNNIL; }
- (UILabel *(^)(MK_BOOL))lab_enabled { MK_RETURNNIL; }
- (UILabel *(^)(MK_BOOL))lab_adjust { MK_RETURNNIL; }
- (UILabel *)lab_end { MK_RETURNNIL; }

@end
