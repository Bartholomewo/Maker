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

- (UILabel *(^)(MK_STRING)) lab_text { MK_RETURNNIL; }
- (UILabel *(^)(MK_COLOR)) lab_textColor { MK_RETURNNIL; }
- (UILabel *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) lab_font { MK_RETURNNIL; }
- (UILabel *(^)(MK_TEXTALIGNMENT)) lab_textAlinment { MK_RETURNNIL; }
- (UILabel *(^)(MK_LINEBREAKMODE)) lab_lineBreakMode { MK_RETURNNIL; }
- (UILabel *(^)(MK_INTEGER)) lab_numberOfSection { MK_RETURNNIL; }
- (UILabel *(^)(MK_BOOL))lab_enabled { MK_RETURNNIL; }

- (UIButton *(^)(MK_STRING, MK_CONTROLSTATE)) btn_title { MK_RETURNNIL; }
- (UIButton *(^)(MK_COLOR, MK_CONTROLSTATE))btn_titleColor { MK_RETURNNIL; }
- (UIButton *(^)(MK_UIIMAGE, MK_CONTROLSTATE, MK_BOOL)) btn_image { MK_RETURNNIL; }
- (UIButton *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) btn_font { MK_RETURNNIL; }
- (UIButton *(^)(UIEdgeInsets, UIEdgeInsetsOption)) btn_insets { MK_RETURNNIL; }
- (UIButton *(^)(MK_BOOL)) btn_selected { MK_RETURNNIL; }
- (UIButton *(^)(MK_BOOL)) btn_enabled { MK_RETURNNIL; }
- (UIButton *(^)(id, SEL, UIControlEvents)) btn_action { MK_RETURNNIL; }
- (UIButton *(^)(UIControlEvents, ButtonPressedBlock))btn_actionBlock { MK_RETURNNIL; }

@end


@implementation UILabel (Maker)

- (UILabel *(^)(MK_STRING)) lab_text {
    return ^(MK_STRING text) {
        self.text = text;
        return self;
    };
}
- (UILabel *(^)(MK_COLOR)) lab_textColor {
    return ^(MK_COLOR color) {
        if ([color isKindOfClass:[UIColor class]]) {
            self.textColor = (UIColor *)color;
        } else {
            self.textColor = [MakerUntil colorWithHexString:color];
        }
        return self;
    };
}
- (UILabel *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) lab_font {
    return ^(MK_FLOAT size, MK_FLOAT weight, MK_STRING family) {
        self.font = [UIFont systemFontOfSize:size weight:weight];
        if (family) {
            self.font = [UIFont fontWithName:family size:size];
        }
        return self;
    };
}
- (UILabel *(^)(MK_TEXTALIGNMENT)) lab_textAlinment {
    return ^(MK_TEXTALIGNMENT align) {
        self.textAlignment = align;
        return self;
    };
}
- (UILabel *(^)(MK_LINEBREAKMODE)) lab_lineBreakMode {
    return ^(MK_LINEBREAKMODE mode) {
        self.lineBreakMode = mode;
        return self;
    };
}
- (UILabel *(^)(MK_INTEGER)) lab_numberOfSection {
    return ^(MK_LINEBREAKMODE line) {
        self.numberOfLines = line;
        return self;
    };
}
- (UILabel *(^)(MK_BOOL))lab_enabled {
    return ^(MK_BOOL enabled) {
        self.enabled = enabled;
        return self;
    };
}

@end


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

- (UIButton *(^)(MK_STRING, MK_CONTROLSTATE)) btn_title {
    return ^(MK_STRING title, MK_CONTROLSTATE state) {
        [self setTitle:title forState:state];
        return self;
    };
}
- (UIButton *(^)(MK_COLOR, MK_CONTROLSTATE)) btn_titleColor {
    return ^(MK_COLOR color, MK_CONTROLSTATE state) {
        if ([color isKindOfClass:[UIColor class]]) {
            [self setTitleColor:(UIColor *)color forState:state];
        } else {
            [self setTitleColor:[MakerUntil colorWithHexString:color] forState:state];
        }
        return self;
    };
}
- (UIButton *(^)(MK_UIIMAGE, MK_CONTROLSTATE, MK_BOOL)) btn_image {
    return ^(MK_UIIMAGE image, MK_CONTROLSTATE state, MK_BOOL isBack) {
        if (isBack) {
            [self setBackgroundImage:image forState:state];
        } else {
            [self setImage:image forState:state];
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
- (UIButton *(^)(id, SEL, UIControlEvents)) btn_action {
    return ^(id target, SEL sel, UIControlEvents events) {
        [self addTarget:target action:sel forControlEvents:events];
        return self;
    };
}
- (UIButton *(^)(UIControlEvents, ButtonPressedBlock))btn_actionBlock {
    return ^(UIControlEvents events, ButtonPressedBlock buttonPressedBlock) {
        if (!buttonPressedBlock) {
            return self;
        }
        self.buttonPressedBlock = buttonPressedBlock;
        [self addTarget:self action:@selector(buttonPressed:) forControlEvents:events];
        return self;
    };
}
- (void) buttonPressed:(id)sender {
    if (self.buttonPressedBlock) {
        self.buttonPressedBlock(sender);
    }
}


@end
