//
//  UIView+Maker.h
//  Components
//
//  Created by ZhaoHeng on 2017/6/15.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MakerUntil.h"

@interface UIView (Maker)

+ (UIView *)maker;

- (UIView *(^)(MK_FLOAT, MK_FLOAT, MK_FLOAT, MK_FLOAT)) com_frame;
- (UIView *(^)(MK_COLOR)) com_backgroundColor;
- (UIView *(^)(MK_FLOAT)) com_alpha;
- (UIView *(^)(MK_BOOL)) com_hidden;
- (UIView *(^)(MK_FLOAT, MK_BOOL)) com_cornerRadius;
- (UIView *(^)(MK_FLOAT, MK_COLOR)) com_border;
- (UIView *(^)(MK_INTEGER)) com_tag;
- (UIView *(^)(ViewContentModeOption)) com_contentMode;
- (UIView *(^)(MK_BOOL)) com_userInterface;
- (UIView *(^)(MK_UIVIEW)) com_setup;

@end

@interface UIView (Extention)

/**
 获得一条线 或者 一个矩形
 扩展函数 该函数需要提供左右/上下内边距 距离父组件距离 高度/宽度颜色 方向
 */
- (UIView *(^)(MK_FLOAT, MK_FLOAT, MK_FLOAT, MK_FLOAT, MK_COLOR, LineViewDirection)) ext_line;

@end
