//
//  UIView+MKButton.h
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MakerUntil.h"

@interface UIView (MKButton)

/** 设置标题文字 文字 状态:mk_Normal */
- (UIButton *(^)(MK_STRING, MKControlStateOption)) btn_title;
/** 设置标题文字颜色 颜色 状态：mk_Normal */
- (UIButton *(^)(MK_COLOR, MKControlStateOption)) btn_titleColor;
/** 设置图片 图片 状态:mk_Normal 是否是背景图片 */
- (UIButton *(^)(MK_UIIMAGE, MKControlStateOption, MK_BOOL)) btn_image;
/** 设置标题文字style size weight family */
- (UIButton *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) btn_font;
- (UIButton *(^)(MK_BOOL)) btn_selected;
- (UIButton *(^)(MK_BOOL)) btn_enabled;
/** 设置标题文字Edge UIEdgeInsets， mk_Image/mk_Title */
- (UIButton *(^)(UIEdgeInsets, MKUIEdgeInsetsOption)) btn_insets;
/** 点击事件 observer, @selector, mk_TouchUpInside... */
- (UIButton *(^)(id, SEL, MKControlEventsOption)) btn_action;
/** 点击事件 mk_TouchUpInside..., block */
- (UIButton *(^)(MKControlEventsOption, MKButtonPressedBlock))btn_actionBlock;
- (UIButton *) btn_end;

@end
