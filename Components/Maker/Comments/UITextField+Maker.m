//
//  UITextField+Maker.m
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "UITextField+Maker.h"
#import <objc/runtime.h>

@implementation UITextField (Maker)
- (void) setPrivate_maxLength:(NSInteger)private_maxLength {
    objc_setAssociatedObject(self,
                             mk_private_maxLengthKey,
                             [NSNumber numberWithInteger:private_maxLength],
                             OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (NSInteger)private_maxLength {
    return [((NSNumber *)objc_getAssociatedObject(self, mk_private_maxLengthKey)) integerValue];
}
- (void) setMk_shouldReturnBlock:(MKShouldReturnBlock)mk_shouldReturnBlock {
    objc_setAssociatedObject(self,
                             mk_shouldReturnKey,
                             mk_shouldReturnBlock,
                             OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (MKShouldReturnBlock) mk_shouldReturnBlock {
    return objc_getAssociatedObject(self, mk_shouldReturnKey);
}
- (void) setMk_textChangeBlock:(MKTextChangeBlock)mk_textChangeBlock {
    objc_setAssociatedObject(self,
                             mk_textChangeKey,
                             mk_textChangeBlock,
                             OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (MKTextChangeBlock) mk_textChangeBlock {
    return objc_getAssociatedObject(self, mk_textChangeKey);
}


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
            self.textColor = [MakerUntil mk_colorWithHexString:color];
        }
        return self;
    };
}
- (UITextField *(^)(MK_FLOAT)) tf_font1 {
    return ^(MK_FLOAT size) {
        self.font = [UIFont systemFontOfSize:size];
        return self;
    };
}
- (UITextField *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) tf_font2 {
    return ^(MK_FLOAT size, MK_FLOAT weight, MK_STRING family) {
        self.font = [UIFont systemFontOfSize:size weight:weight];
        if (family) {
            self.font = [UIFont fontWithName:family size:size];
        }
        return self;
    };
}
- (UITextField *(^)(MKTextAlignmentOption)) tf_textAlinment {
    return ^(MKTextAlignmentOption align) {
        self.textAlignment = [MakerUntil mk_textAlignment:align];
        return self;
    };
}
- (UITextField *(^)()) tf_delegate {
    return ^() {
        self.delegate = self;
        return self;
    };
}
- (UITextField *(^)(MKTextBorderStyleOption)) tf_style {
    return ^(MKTextBorderStyleOption option) {
        self.borderStyle = [MakerUntil mk_textBorderStyle:option];
        return self;
    };

}
- (UITextField *(^)(MK_STRING)) tf_placeholder {
    return ^(MK_STRING placeholder) {
        self.placeholder = placeholder;
        return self;
    };
}
- (UITextField *(^)(MKTextFieldViewModeOption)) tf_clearMode {
    return ^(MKTextFieldViewModeOption option) {
        self.clearButtonMode = [MakerUntil mk_textFieldViewMode:option];
        return self;
    };
}
- (UITextField *(^)(MK_UIVIEW, MKTextFieldViewModeOption)) tf_leftView {
    return ^(MK_UIVIEW view, MKTextFieldViewModeOption option) {
        if (view && option) {
            self.leftView = view;
            self.leftViewMode = [MakerUntil mk_textFieldViewMode:option];
        }
        return self;
    };
}
- (UITextField *(^)(MK_UIVIEW, MKTextFieldViewModeOption)) tf_rightView {
    return ^(MK_UIVIEW view, MKTextFieldViewModeOption option) {
        if (view && option) {
            self.rightView = view;
            self.rightViewMode = [MakerUntil mk_textFieldViewMode:option];
        }
        return self;
    };
}
- (UITextField *(^)(MK_INTEGER)) tf_maxLength {
    return ^(MK_INTEGER length) {
        self.private_maxLength = length;
        return self;
    };
}
- (UITextField *(^)()) tf_notification {
    return ^(id observer) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(textFiledEditChanged:)
                                                     name:UITextFieldTextDidChangeNotification
                                                   object:nil];
        return self;
    };
}
- (UITextField *(^)()) tf_removeNotification {
    return ^() {
        [[NSNotificationCenter defaultCenter] removeObserver:self
                                                        name:UITextFieldTextDidChangeNotification
                                                      object:nil];
        return self;
    };
}
- (UITextField *(^)(MKShouldReturnBlock)) tf_optionBlock  {
    return ^(MKShouldReturnBlock block) {
        self.mk_shouldReturnBlock = block;
        return self;
    };
}
- (UITextField *(^)(MKTextChangeBlock)) tf_changeBlock {
    return ^(MKTextChangeBlock block) {
        self.mk_textChangeBlock = block;
        return self;
    };
}


#pragma mark =============== Private Function ===============
//过滤非法字符
- (NSString *)disable_Text:(NSString *)text {
    //NSLog(@"过滤--->%@",text);
    text = [text stringByReplacingOccurrencesOfString:@" " withString:@""];
    text = [text stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    //过滤emoji表情
    return [self disable_emoji:text];
}

//过滤emoj表情
- (NSString *)disable_emoji:(NSString *)text {
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^\\u0020-\\u007E\\u00A0-\\u00BE\\u2E80-\\uA4CF\\uF900-\\uFAFF\\uFE30-\\uFE4F\\uFF00-\\uFFEF\\u0080-\\u009F\\u2000-\\u201f\r\n]" options:NSRegularExpressionCaseInsensitive error:nil];
    NSString *modifiedString = [regex stringByReplacingMatchesInString:text
                                                               options:0
                                                                 range:NSMakeRange(0, [text length])
                                                          withTemplate:@""];
    return modifiedString;
}

- (void)textFiledEditChanged:(NSNotification *)noti {
    UITextField *textField = (UITextField *)noti.object;
    [self validationText:textField];
}

- (void)validationText:(UITextField *)textField {
    //不论中文英文,如果有空格,回车,都要过滤掉
    NSString *toBeString = [self disable_Text:textField.text];
    NSString *lang = [textField.textInputMode primaryLanguage];
    //判断输入法
    if ([lang isEqualToString:@"zh-Hans"]) {
        UITextRange *selectedRange = [textField markedTextRange];
        UITextPosition *position = [textField positionFromPosition:selectedRange.start offset:0];
        if (!position) {
            if (toBeString.length>=self.private_maxLength) {
                NSString *strNew = [NSString stringWithString:toBeString];
                [textField setText:[strNew substringToIndex:self.private_maxLength]];
            } else {
                [textField setText:toBeString];
            }
        }
    } else {
        if (toBeString.length > self.private_maxLength) {
            textField.text = [toBeString substringToIndex:self.private_maxLength];
        } else {
            textField.text = toBeString;
        }
    }
    !self.mk_textChangeBlock?:self.mk_textChangeBlock(textField.text);
}
- (void) shouldReturnKeyBlock:(MKShouldReturnBlock)block {
    self.mk_shouldReturnBlock = block;
}
- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    !self.mk_shouldReturnBlock?:self.mk_shouldReturnBlock();
    return [textField resignFirstResponder];
}

@end

