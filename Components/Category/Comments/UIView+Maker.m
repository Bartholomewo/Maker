//
//  UIView+Maker.m
//  Components
//
//  Created by ZhaoHeng on 2017/6/15.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "UIView+Maker.h"
#import <objc/runtime.h>

@implementation UIView (Maker)

+ (UIView *)maker {
    return [self new];
}

- (UIView *(^)(MK_FLOAT, MK_FLOAT, MK_FLOAT, MK_FLOAT)) com_frame {
    return ^(MK_FLOAT x, MK_FLOAT y, MK_FLOAT w, MK_FLOAT h) {
        self.frame = CGRectMake(x, y, w, h);
        return self;
    };
}
- (UIView *(^)(MK_COLOR)) com_backgroundColor {
    return ^(MK_COLOR color) {
        if ([color isKindOfClass:[UIColor class]]) {
            self.backgroundColor = (UIColor *)color;
        } else {
            self.backgroundColor = [MakerUntil colorWithHexString:color];
        }
        return self;
    };
}
- (UIView *(^)(MK_FLOAT)) com_alpha {
    return ^(MK_FLOAT alpha) {
        self.alpha = alpha;
        return self;
    };
}
- (UIView *(^)(MK_BOOL)) com_hidden {
    return ^(MK_BOOL hidden) {
        self.hidden = hidden;
        return self;
    };
}
- (UIView *(^)(MK_FLOAT, MK_BOOL)) com_cornerRadius {
    return ^(MK_FLOAT radius, MK_BOOL maskToBounds) {
        self.layer.cornerRadius = radius;
        self.layer.masksToBounds = maskToBounds;
        return self;
    };
}
- (UIView *(^)(MK_FLOAT, MK_COLOR)) com_border {
    return ^(MK_FLOAT width, MK_COLOR color) {
        self.layer.borderWidth = width;
        if ([color isKindOfClass:[UIColor class]]) {
            self.layer.borderColor = ((UIColor *)color).CGColor;
        } else {
            self.layer.borderColor = [MakerUntil colorWithHexString:color].CGColor;
        }
        return self;
    };
}
- (UIView *(^)(MK_INTEGER)) com_tag {
    return ^(MK_INTEGER tag) {
        self.tag = tag;
        return self;
    };
}
- (UIView *(^)(ViewContentModeOption)) com_contentMode {
    return ^(ViewContentModeOption mode) {
        self.contentMode = [MakerUntil viewContentMode:mode];
        return self;
    };
}
- (UIView *(^)(MK_BOOL)) com_userInterface {
    return ^(MK_BOOL flag) {
        self.userInteractionEnabled = flag;
        return self;
    };
}
- (UIView *(^)(MK_UIVIEW)) com_setup {
    return ^(MK_UIVIEW view) {
        [view addSubview:self];
        return self;
    };
}


@end
