//
//  UIView+Maker.m
//  Components
//
//  Created by ZhaoHeng on 2017/6/15.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "UIView+Maker.h"
#import <objc/runtime.h>

#pragma mark ================== UIView + Maker ====================
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
            self.backgroundColor = [MakerUntil mk_colorWithHexString:color];
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
- (UIView *(^)(MK_FLOAT)) com_cornerRadius {
    return ^(MK_FLOAT radius) {
        self.layer.cornerRadius = radius;
        self.layer.masksToBounds = YES;
        return self;
    };
}
- (UIView *(^)(MK_FLOAT, MK_COLOR)) com_border {
    return ^(MK_FLOAT width, MK_COLOR color) {
        self.layer.borderWidth = width;
        if ([color isKindOfClass:[UIColor class]]) {
            self.layer.borderColor = ((UIColor *)color).CGColor;
        } else {
            self.layer.borderColor = [MakerUntil mk_colorWithHexString:color].CGColor;
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
- (UIView *(^)(MKViewContentModeOption)) com_contentMode {
    return ^(MKViewContentModeOption mode) {
        self.contentMode = [MakerUntil mk_viewContentMode:mode];
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
- (UIView *(^)(MK_BOOL)) com_clipsToBounds {
    return ^(MK_BOOL flag) {
        self.clipsToBounds = flag;
        return self;
    };
}
@end


#pragma mark ================== UIView + MKButton ====================
@implementation UIView (MKButton)
- (UIButton *(^)(MK_STRING, MKControlStateOption)) btn_title { MK_RETURNNIL; }
- (UIButton *(^)(MK_COLOR, MKControlStateOption))btn_titleColor { MK_RETURNNIL; }
- (UIButton *(^)(MK_UIIMAGE, MKControlStateOption, MK_BOOL)) btn_image { MK_RETURNNIL; }
- (UIButton *(^)(CGFloat))btn_font1 { MK_RETURNNIL; }
- (UIButton *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) btn_font2 { MK_RETURNNIL; }
- (UIButton *(^)(UIEdgeInsets, MKUIEdgeInsetsOption)) btn_insets { MK_RETURNNIL; }
- (UIButton *(^)(MK_BOOL)) btn_selected { MK_RETURNNIL; }
- (UIButton *(^)(MK_BOOL)) btn_enabled { MK_RETURNNIL; }
- (UIButton *(^)(id, SEL, MKControlEventsOption)) btn_action { MK_RETURNNIL; }
- (UIButton *(^)(MKControlEventsOption, MKButtonPressedBlock))btn_actionBlock { MK_RETURNNIL; }
@end


#pragma mark ================== UIView + MKImageView ====================
@implementation UIView (MKImageView)
- (UIImageView *(^)(MK_STRING)) img_imageName { MK_RETURNNIL; }
- (UIImageView *(^)(MK_UIIMAGE)) img_image { MK_RETURNNIL; }
- (UIImageView *(^)(NSArray <UIImage*> *)) img_images { MK_RETURNNIL; }
- (UIImageView *(^)(MK_TIMEINTERVAL, MK_INTEGER)) img_animation { MK_RETURNNIL; }
@end


#pragma mark ================== UIView + MKLabel ====================
@implementation UIView (MKLabel)
- (UILabel *(^)(MK_STRING)) lab_text { MK_RETURNNIL; }
- (UILabel *(^)(MK_COLOR)) lab_textColor { MK_RETURNNIL; }
- (UILabel *(^)(MK_FLOAT)) lab_font1 { MK_RETURNNIL; }
- (UILabel *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) lab_font2 { MK_RETURNNIL; }
- (UILabel *(^)(MKTextAlignmentOption)) lab_textAlignment { MK_RETURNNIL; }
- (UILabel *(^)(MKLineBreakModeOption)) lab_lineBreakMode { MK_RETURNNIL; }
- (UILabel *(^)(MK_INTEGER)) lab_numberOfSection { MK_RETURNNIL; }
- (UILabel *(^)(MK_BOOL))lab_enabled { MK_RETURNNIL; }
- (UILabel *(^)(MK_BOOL))lab_adjust { MK_RETURNNIL; }
@end


#pragma mark ================== UIView + MKTextField ====================
@implementation UIView (MKTextField)
- (UITextField *(^)(MK_STRING)) tf_text { MK_RETURNNIL; }
- (UITextField *(^)(NSAttributedString *)) tf_attrText { MK_RETURNNIL; }
- (UITextField *(^)(MK_COLOR)) tf_textColor { MK_RETURNNIL; }
- (UITextField *(^)(MK_FLOAT)) tf_font1 { MK_RETURNNIL; }
- (UITextField *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) tf_font2 { MK_RETURNNIL; }
- (UITextField *(^)(MKTextAlignmentOption)) tf_textAlinment { MK_RETURNNIL; }
- (UITextField *(^)()) tf_delegate { MK_RETURNNIL; }
- (UITextField *(^)(MKTextBorderStyleOption)) tf_style { MK_RETURNNIL; }
- (UITextField *(^)(MK_STRING)) tf_placeholder { MK_RETURNNIL; }
- (UITextField *(^)(MKTextFieldViewModeOption)) tf_clearMode { MK_RETURNNIL; }
- (UITextField *(^)(MK_UIVIEW, MKTextFieldViewModeOption)) tf_leftView { MK_RETURNNIL; }
- (UITextField *(^)(MK_UIVIEW, MKTextFieldViewModeOption)) tf_rightView { MK_RETURNNIL; }
- (UITextField *(^)(MK_INTEGER)) tf_maxLength { MK_RETURNNIL; }
- (UITextField *(^)(MKShouldReturnBlock)) tf_optionBlock { MK_RETURNNIL; }
- (UITextField *(^)(MKTextChangeBlock)) tf_changeBlock { MK_RETURNNIL; }
@end


#pragma mark ================== UIView + MKUIScrollView ====================
@implementation UIView (MKScrollView)
- (UIScrollView *(^)(MK_CGPOINT)) scr_contentOffset { MK_RETURNNIL; }
- (UIScrollView *(^)(MK_CGSize)) scr_contentSize { MK_RETURNNIL; }
- (UIScrollView *(^)(UIEdgeInsets)) scr_contentInsets { MK_RETURNNIL; }
- (UIScrollView *(^)(id)) scr_delegate { MK_RETURNNIL; }
- (UIScrollView *(^)(MK_BOOL)) scr_bounces { MK_RETURNNIL; }
- (UIScrollView *(^)(MK_BOOL)) scr_alwaysBounceVertical { MK_RETURNNIL; }
- (UIScrollView *(^)(MK_BOOL)) scr_alwaysBounceHorizontal { MK_RETURNNIL; }
- (UIScrollView *(^)(MK_BOOL)) scr_scrollEnabled { MK_RETURNNIL; }
- (UIScrollView *(^)(MK_BOOL)) scr_showsHorizontal { MK_RETURNNIL; }
- (UIScrollView *(^)(MK_BOOL)) scr_showsVertical { MK_RETURNNIL; }
- (UIScrollView *(^)(UIEdgeInsets)) scr_indicatorInsets { MK_RETURNNIL; }
- (UIScrollView *(^)(MKScrollViewIndicatorStyle)) scr_indicatorStyle { MK_RETURNNIL; }
- (UIScrollView *(^)(MK_FLOAT)) scr_minScale { MK_RETURNNIL; }
- (UIScrollView *(^)(MK_FLOAT)) scr_maxScale { MK_RETURNNIL; }
- (UIScrollView *(^)(MK_FLOAT)) scr_zoomScale { MK_RETURNNIL; }
- (UIScrollView *(^)(MK_BOOL)) scr_bouncesZoom { MK_RETURNNIL; }
- (UIScrollView *(^)(MKScrollViewKeyboardDismissMode)) scr_keyboardDismissMode { MK_RETURNNIL; }

@end

