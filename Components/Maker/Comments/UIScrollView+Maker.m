//
//  UIScrollView+Maker.m
//  Components
//
//  Created by 赵恒 on 2017/8/31.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "UIScrollView+Maker.h"

@implementation UIScrollView (Maker)
- (UIScrollView *(^)(MK_CGPOINT)) scr_contentOffset {
    return ^(MK_CGPOINT point) {
        self.contentOffset = point;
        return self;
    };
}
- (UIScrollView *(^)(MK_CGSize)) scr_contentSize {
    return ^(MK_CGSize size) {
        self.contentSize = size;
        return self;
    };
}
- (UIScrollView *(^)(UIEdgeInsets)) scr_contentInsets {
    return ^(UIEdgeInsets insets) {
        self.contentInset = insets;
        return self;
    };
}
- (UIScrollView *(^)(id)) scr_delegate {
    return ^(id target) {
        self.delegate = target;
        return self;
    };
}
- (UIScrollView *(^)(MK_BOOL)) scr_bounces {
    return ^(MK_BOOL flag) {
        self.bounces = flag;
        return self;
    };
}
- (UIScrollView *(^)(MK_BOOL)) scr_alwaysBounceVertical {
    return ^(MK_BOOL flag) {
        self.alwaysBounceVertical = flag;
        return self;
    };
}
- (UIScrollView *(^)(MK_BOOL)) scr_alwaysBounceHorizontal {
    return ^(MK_BOOL flag) {
        self.alwaysBounceHorizontal = flag;
        return self;
    };
}
- (UIScrollView *(^)(MK_BOOL)) scr_scrollEnabled {
    return ^(MK_BOOL flag) {
        self.scrollEnabled = flag;
        return self;
    };
}
- (UIScrollView *(^)(MK_BOOL)) scr_showsHorizontal {
    return ^(MK_BOOL flag) {
        self.showsHorizontalScrollIndicator = flag;
        return self;
    };
}
- (UIScrollView *(^)(MK_BOOL)) scr_showsVertical {
    return ^(MK_BOOL flag) {
        self.showsVerticalScrollIndicator = flag;
        return self;
    };
}
- (UIScrollView *(^)(UIEdgeInsets)) scr_indicatorInsets {
    return ^(UIEdgeInsets insets) {
        self.scrollIndicatorInsets = insets;
        return self;
    };
}
- (UIScrollView *(^)(MKScrollViewIndicatorStyle)) scr_indicatorStyle {
    return ^(MKScrollViewIndicatorStyle style) {
        self.indicatorStyle = [MakerUntil mk_scrollViewIndicatorStyle:style];
        return self;
    };
}
- (UIScrollView *(^)(MK_FLOAT)) scr_minScale {
    return ^(MK_FLOAT scale) {
        self.minimumZoomScale = scale;
        return self;
    };
}
- (UIScrollView *(^)(MK_FLOAT)) scr_maxScale {
    return ^(MK_FLOAT scale) {
        self.maximumZoomScale = scale;
        return self;
    };
}
- (UIScrollView *(^)(MK_FLOAT)) scr_zoomScale {
    return ^(MK_FLOAT scale) {
        self.zoomScale = scale;
        return self;
    };
}
- (UIScrollView *(^)(MK_BOOL)) scr_bouncesZoom {
    return ^(MK_BOOL flag) {
        self.bouncesZoom = flag;
        return self;
    };
}
- (UIScrollView *(^)(MKScrollViewKeyboardDismissMode)) scr_keyboardDismissMode {
    return ^(MKScrollViewKeyboardDismissMode mode) {
        self.keyboardDismissMode = [MakerUntil mk_scrollViewKeyboardDismissModel:mode];
        return self;
    };
}
- (UIScrollView *) scr_end {
    return self;
}
@end
