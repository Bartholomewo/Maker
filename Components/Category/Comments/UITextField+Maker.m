//
//  UITextField+Maker.m
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "UITextField+Maker.h"

@implementation UITextField (Maker)

- (UITextField *(^)(MK_STRING)) tf_text {
    return ^(MK_STRING text) {
        self.text = text;
        return self;
    };
}
- (UITextField *(^)(NSAttributedString *)) tf_attrText {
    return ^(NSAttributedString *attrText) {
        self.attributedText = attrText;
        return self;
    };
}
- (UITextField *(^)(MK_COLOR)) tf_textColor {
    return ^(MK_COLOR color) {
        if ([color isKindOfClass:[UIColor class]]) {
            self.textColor = (UIColor *)color;
        } else {
            self.textColor = [MakerUntil colorWithHexString:color];
        }
        return self;
    };
}
- (UITextField *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) tf_font {
    return ^(MK_FLOAT size, MK_FLOAT weight, MK_STRING family) {
        self.font = [UIFont systemFontOfSize:size weight:weight];
        if (family) {
            self.font = [UIFont fontWithName:family size:size];
        }
        return self;
    };
}
- (UITextField *(^)(TextAlignmentOption)) tf_textAlinment {
    return ^(TextAlignmentOption align) {
        self.textAlignment = [MakerUntil textAlignment:align];
        return self;
    };
}
- (UITextField *(^)(id)) tf_delegate {
    return ^(id target) {
        self.delegate = target;
        return self;
    };
}
- (UITextField *(^)(TextBorderStyleOption)) tf_style {
    return ^(TextBorderStyleOption option) {
        self.borderStyle = [MakerUntil textBorderStyle:option];
        return self;
    };

}
- (UITextField *(^)(MK_STRING)) tf_placeholder {
    return ^(MK_STRING placeholder) {
        self.placeholder = placeholder;
        return self;
    };
}
- (UITextField *(^)(TextFieldViewModeOption)) tf_clearMode {
    return ^(TextFieldViewModeOption option) {
        self.clearButtonMode = [MakerUntil textFieldViewMode:option];
        return self;
    };
}
- (UITextField *(^)(MK_UIVIEW, TextFieldViewModeOption)) tf_leftView {
    return ^(MK_UIVIEW view, TextFieldViewModeOption option) {
        if (view && option) {
            self.leftView = view;
            self.leftViewMode = [MakerUntil textFieldViewMode:option];
        }
        return self;
    };
}
- (UITextField *(^)(MK_UIVIEW, TextFieldViewModeOption)) tf_rightView {
    return ^(MK_UIVIEW view, TextFieldViewModeOption option) {
        if (view && option) {
            self.rightView = view;
            self.rightViewMode = [MakerUntil textFieldViewMode:option];
        }
        return self;
    };
}

@end
