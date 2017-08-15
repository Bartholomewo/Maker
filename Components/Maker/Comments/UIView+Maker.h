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
- (UIView *(^)(MK_FLOAT)) com_cornerRadius;
- (UIView *(^)(MK_FLOAT, MK_COLOR)) com_border;
- (UIView *(^)(MK_INTEGER)) com_tag;
- (UIView *(^)(MKViewContentModeOption)) com_contentMode;
- (UIView *(^)(MK_BOOL)) com_userInterface;
- (UIView *(^)(MK_UIVIEW)) com_setup;

@end
