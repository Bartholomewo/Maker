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

- (void)setImageName:(NSString *)imageName {
    objc_setAssociatedObject(self, imageNameKey, imageName, OBJC_ASSOCIATION_COPY);
}
- (NSString *) imageName {
    return objc_getAssociatedObject(self, imageNameKey);
}

- (UIImageView *(^)(MK_STRING)) img_imageName {
    return ^(MK_STRING imageName) {
        self.image = [UIImage imageNamed:imageName];
        self.imageName = imageName;
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
- (UIImageView *)img_end {
    return self;
}

@end
