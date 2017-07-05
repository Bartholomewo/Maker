//
//  UIView+ImageView.h
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MakerUntil.h"

@interface UIView (ImageView)

- (UIImageView *(^)(MK_UIIMAGE)) img_image;
- (UIImageView *(^)(NSArray <UIImage*> *)) img_images;
- (UIImageView *(^)(MK_TIMEINTERVAL, MK_INTEGER)) img_animation;
- (UIImageView *)img_end;

@end
