//
//  UIView+ImageView.m
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "UIView+ImageView.h"

@implementation UIView (ImageView)

- (UIImageView *(^)(MK_STRING)) img_imageName { MK_RETURNNIL; }
- (UIImageView *(^)(MK_UIIMAGE)) img_image { MK_RETURNNIL; }
- (UIImageView *(^)(NSArray <UIImage*> *)) img_images { MK_RETURNNIL; }
- (UIImageView *(^)(MK_TIMEINTERVAL, MK_INTEGER)) img_animation { MK_RETURNNIL; }
- (UIImageView *)img_end { MK_RETURNNIL; }

@end
