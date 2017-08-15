//
//  UIView+MKImageView.h
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MakerUntil.h"

@interface UIView (MKImageView)

/** 图片名字 */
- (UIImageView *(^)(MK_STRING)) img_imageName;
/** 设置Image */
- (UIImageView *(^)(MK_UIIMAGE)) img_image;

/** 图片数组 动画 */
- (UIImageView *(^)(NSArray <UIImage*> *)) img_images;
/** 动画 repeatCount, duration */
- (UIImageView *(^)(MK_TIMEINTERVAL, MK_INTEGER)) img_animation;
- (UIImageView *)img_end;

@end
