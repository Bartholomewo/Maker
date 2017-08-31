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
- (void)setMk_buttonPressedBlock:(MKButtonPressedBlock)mk_buttonPressedBlock {
    objc_setAssociatedObject(self,
                             mk_buttonPressedKey,
                             mk_buttonPressedBlock,
                             OBJC_ASSOCIATION_COPY_NONATOMIC);
}

// get
- (MKButtonPressedBlock)mk_buttonPressedBlock {
    return objc_getAssociatedObject(self, mk_buttonPressedKey);
}

- (UIButton *(^)(MK_STRING, MKControlStateOption)) btn_title {
    return ^(MK_STRING title, MKControlStateOption state) {
        [self setTitle:title forState:[MakerUntil mk_controlState:state]];
        return self;
    };
}
- (UIButton *(^)(MK_COLOR, MKControlStateOption)) btn_titleColor {
    return ^(MK_COLOR color, MKControlStateOption state) {
        if ([color isKindOfClass:[UIColor class]]) {
            [self setTitleColor:(UIColor *)color forState:[MakerUntil mk_controlState:state]];
        } else {
            [self setTitleColor:[MakerUntil mk_colorWithHexString:color] forState:[MakerUntil mk_controlState:state]];
        }
        return self;
    };
}
- (UIButton *(^)(MK_UIIMAGE, MKControlStateOption, MK_BOOL)) btn_image {
    return ^(MK_UIIMAGE image, MKControlStateOption state, MK_BOOL isBack) {
        if (isBack) {
            [self setBackgroundImage:image forState:[MakerUntil mk_controlState:state]];
        } else {
            [self setImage:image forState:[MakerUntil mk_controlState:state]];
        }
        return self;
    };
}
- (UIButton *(^)(MK_FLOAT)) btn_font1 {
    return ^(MK_FLOAT size) {
        self.titleLabel.font = [UIFont systemFontOfSize:size];
        return self;
    };
}
- (UIButton *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) btn_font2 {
    return ^(MK_FLOAT size, MK_FLOAT weight, MK_STRING family) {
        self.titleLabel.font = [UIFont systemFontOfSize:size weight:weight];
        if (family) {
            self.titleLabel.font = [UIFont fontWithName:family size:size];
        }
        return self;
    };
}
- (UIButton *(^)(MK_BOOL)) btn_selected {
    return ^(MK_BOOL selected) {
        self.selected = selected;
        return self;
    };
}
- (UIButton *(^)(MK_BOOL))btn_enabled {
    return ^(MK_BOOL enabled) {
        self.enabled = enabled;
        return self;
    };
}
- (UIButton *(^)(UIEdgeInsets, MKUIEdgeInsetsOption)) btn_insets {
    return ^(UIEdgeInsets insets, MKUIEdgeInsetsOption option) {
        if (option == mk_Image) {
            [self setImageEdgeInsets:insets];
        } else {
            [self setTitleEdgeInsets:insets];
        }
        return self;
    };
}
- (UIButton *(^)(id, SEL, MKControlEventsOption)) btn_action {
    return ^(id target, SEL sel, MKControlEventsOption events) {
        [self addTarget:target action:sel forControlEvents:[MakerUntil mk_controlEvents:events]];
        return self;
    };
}
- (UIButton *(^)(MKControlEventsOption, MKButtonPressedBlock))btn_actionBlock {
    return ^(MKControlEventsOption events, MKButtonPressedBlock buttonPressedBlock) {
        if (!buttonPressedBlock) {
            return self;
        }
        self.mk_buttonPressedBlock = buttonPressedBlock;
        [self addTarget:self action:@selector(buttonPressed:) forControlEvents:[MakerUntil mk_controlEvents:events]];
        return self;
    };
}
- (void) buttonPressed:(id)sender {
    if (self.mk_buttonPressedBlock) {
        self.mk_buttonPressedBlock(sender);
    }
}
- (UIButton *)btn_end {
    return self;
}


@end

