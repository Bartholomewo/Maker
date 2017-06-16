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

- (UILabel *(^)(MK_STRING)) lab_text { MK_RETURNNIL; }
- (UILabel *(^)(MK_COLOR)) lab_textColor { MK_RETURNNIL; }
- (UILabel *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) lab_font { MK_RETURNNIL; }
- (UILabel *(^)(TextAlignmentOption)) lab_textAlinment { MK_RETURNNIL; }
- (UILabel *(^)(LineBreakModeOption)) lab_lineBreakMode { MK_RETURNNIL; }
- (UILabel *(^)(MK_INTEGER)) lab_numberOfSection { MK_RETURNNIL; }
- (UILabel *(^)(MK_BOOL))lab_enabled { MK_RETURNNIL; }

- (UIButton *(^)(MK_STRING, ControlStateOption)) btn_title { MK_RETURNNIL; }
- (UIButton *(^)(MK_COLOR, ControlStateOption))btn_titleColor { MK_RETURNNIL; }
- (UIButton *(^)(MK_UIIMAGE, ControlStateOption, MK_BOOL)) btn_image { MK_RETURNNIL; }
- (UIButton *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) btn_font { MK_RETURNNIL; }
- (UIButton *(^)(UIEdgeInsets, UIEdgeInsetsOption)) btn_insets { MK_RETURNNIL; }
- (UIButton *(^)(MK_BOOL)) btn_selected { MK_RETURNNIL; }
- (UIButton *(^)(MK_BOOL)) btn_enabled { MK_RETURNNIL; }
- (UIButton *(^)(id, SEL, ControlEventsOption)) btn_action { MK_RETURNNIL; }
- (UIButton *(^)(ControlEventsOption, ButtonPressedBlock))btn_actionBlock { MK_RETURNNIL; }

- (UIImageView *(^)(MK_UIIMAGE)) img_image { MK_RETURNNIL; }
- (UIImageView *(^)(NSArray <UIImage*> *)) img_images { MK_RETURNNIL; }
- (UIImageView *(^)(MK_TIMEINTERVAL, MK_INTEGER)) img_animation { MK_RETURNNIL; }

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
- (UILabel *(^)(TextAlignmentOption)) lab_textAlinment {
    return ^(TextAlignmentOption align) {
        self.textAlignment = [MakerUntil textAlignment:align];
        return self;
    };
}
- (UILabel *(^)(LineBreakModeOption)) lab_lineBreakMode {
    return ^(LineBreakModeOption mode) {
        self.lineBreakMode = [MakerUntil lineBreakMode:mode];
        return self;
    };
}
- (UILabel *(^)(MK_INTEGER)) lab_numberOfSection {
    return ^(MK_INTEGER line) {
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


@implementation UIImageView (Maker)

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
