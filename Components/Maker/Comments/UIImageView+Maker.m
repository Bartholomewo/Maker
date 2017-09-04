//
//  UIImageView+Maker.m
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "UIImageView+Maker.h"
#import <objc/runtime.h>

@implementation UIImageView (Maker)

- (void)setMk_imageName:(NSString *)mk_imageName {
    objc_setAssociatedObject(self, mk_imageNameKey, mk_imageName, OBJC_ASSOCIATION_COPY);
}
- (NSString *) mk_imageName {
    return objc_getAssociatedObject(self, mk_imageNameKey);
}

- (UIImageView *(^)(MK_STRING)) img_imageName {
    return ^(MK_STRING imageName) {
        self.image = [UIImage imageNamed:imageName];
        self.mk_imageName = imageName;
        return self;
    };
}
- (UIImageView *(^)(MK_UIIMAGE)) img_image {
    return ^(MK_UIIMAGE image) {
        self.image = image;
        return self;
    };
}
- (UIImageView *(^)(NSArray <UIImage*> *)) img_images {
    return ^(NSArray <UIImage*> *images) {
        self.animationImages = images;
        return self;
    };
}
- (UIImageView *(^)(MK_TIMEINTERVAL, MK_INTEGER)) img_animation {
    return ^(MK_TIMEINTERVAL repeat, MK_INTEGER duration) {
        self.animationRepeatCount = repeat;
        self.animationDuration = duration;
        return self;
    };
}

@end
