//
//  UIView+MKLabel.h
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MakerUntil.h"

@interface UIView (MKLabel)

- (UILabel *(^)(MK_STRING)) lab_text;
- (UILabel *(^)(MK_COLOR)) lab_textColor;
/** 设置标题文字style size weight family */
- (UILabel *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) lab_font;
- (UILabel *(^)(MKTextAlignmentOption)) lab_textAlignment;
- (UILabel *(^)(MKLineBreakModeOption)) lab_lineBreakMode;
- (UILabel *(^)(MK_INTEGER)) lab_numberOfSection;
- (UILabel *(^)(MK_BOOL)) lab_enabled;
/** 设置如果超过宽自动缩放字体 */
- (UILabel *(^)(MK_BOOL))lab_adjust;
- (UILabel *) lab_end;

@end
