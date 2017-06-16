//
//  UIButton+Maker.m
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "UIButton+Maker.h"
#import <objc/runtime.h>

@implementation UIButton (Maker)

// set
- (void)setButtonPressedBlock:(ButtonPressedBlock)buttonPressedBlock {
    objc_setAssociatedObject(self,
                             buttonPressedKey,
                             buttonPressedBlock,
                             OBJC_ASSOCIATION_COPY_NONATOMIC);
}

// get
- (ButtonPressedBlock)buttonPressedBlock {
    return objc_getAssociatedObject(self, buttonPressedKey);
}

- (UIButton *(^)(MK_STRING, ControlStateOption)) btn_title {
    return ^(MK_STRING title, ControlStateOption state) {
        [self setTitle:title forState:[MakerUntil controlState:state]];
        return self;
    };
}
- (UIButton *(^)(MK_COLOR, ControlStateOption)) btn_titleColor {
    return ^(MK_COLOR color, ControlStateOption state) {
        if ([color isKindOfClass:[UIColor class]]) {
            [self setTitleColor:(UIColor *)color forState:[MakerUntil controlState:state]];
        } else {
            [self setTitleColor:[MakerUntil colorWithHexString:color] forState:[MakerUntil controlState:state]];
        }
        return self;
    };
}
- (UIButton *(^)(MK_UIIMAGE, ControlStateOption, MK_BOOL)) btn_image {
    return ^(MK_UIIMAGE image, ControlStateOption state, MK_BOOL isBack) {
        if (isBack) {
            [self setBackgroundImage:image forState:[MakerUntil controlState:state]];
        } else {
            [self setImage:image forState:[MakerUntil controlState:state]];
        }
        return self;
    };
}
- (UIButton *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) btn_font {
    return ^(MK_FLOAT size, MK_FLOAT weight, MK_STRING family) {
        self.titleLabel.font = [UIFont systemFontOfSize:size weight:weight];
        if (family) {
            self.titleLabel.font = [UIFont fontWithName:family size:size];
        }
        return self;
    };
}
- (UIButton *(^)(MK_BOOL))btn_enabled {
    return ^(MK_BOOL enabled) {
        self.enabled = enabled;
        return self;
    };
}
- (UIButton *(^)(UIEdgeInsets, UIEdgeInsetsOption)) btn_insets {
    return ^(UIEdgeInsets insets, UIEdgeInsetsOption option) {
        if (option == Image) {
            [self setImageEdgeInsets:insets];
        } else {
            [self setTitleEdgeInsets:insets];
        }
        return self;
    };
}
- (UIButton *(^)(id, SEL, ControlEventsOption)) btn_action {
    return ^(id target, SEL sel, ControlEventsOption events) {
        [self addTarget:target action:sel forControlEvents:[MakerUntil controlEvents:events]];
        return self;
    };
}
- (UIButton *(^)(ControlEventsOption, ButtonPressedBlock))btn_actionBlock {
    return ^(ControlEventsOption events, ButtonPressedBlock buttonPressedBlock) {
        if (!buttonPressedBlock) {
            return self;
        }
        self.buttonPressedBlock = buttonPressedBlock;
        [self addTarget:self action:@selector(buttonPressed:) forControlEvents:[MakerUntil controlEvents:events]];
        return self;
    };
}
- (void) buttonPressed:(id)sender {
    if (self.buttonPressedBlock) {
        self.buttonPressedBlock(sender);
    }
}


@end

