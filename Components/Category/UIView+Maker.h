//
//  UIView+Maker.h
//  Components
//
//  Created by ZhaoHeng on 2017/6/15.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MakerUntil.h"

@interface UIView (Maker)

+ (UIView *)maker;

#pragma mark UIView
- (UIView *(^)(MK_FLOAT, MK_FLOAT, MK_FLOAT, MK_FLOAT)) com_frame;
- (UIView *(^)(MK_COLOR)) com_backgroundColor;
- (UIView *(^)(MK_FLOAT)) com_alpha;
- (UIView *(^)(MK_BOOL)) com_hidden;
- (UIView *(^)(MK_FLOAT, MK_BOOL)) com_cornerRadius;
- (UIView *(^)(MK_FLOAT, MK_COLOR)) com_border;
- (UIView *(^)(MK_INTEGER)) com_tag;
- (UIView *(^)(MK_BOOL)) com_userInterface;
- (UIView *(^)(MK_UIVIEW)) com_setup;



#pragma mark UILabel
- (UILabel *(^)(MK_STRING)) lab_text;
- (UILabel *(^)(MK_COLOR)) lab_textColor;
- (UILabel *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) lab_font;
- (UILabel *(^)(MK_TEXTALIGNMENT)) lab_textAlinment;
- (UILabel *(^)(MK_LINEBREAKMODE)) lab_lineBreakMode;
- (UILabel *(^)(MK_INTEGER)) lab_numberOfSection;
- (UILabel *(^)(MK_BOOL)) lab_enabled;



#pragma mark UIButton
- (UIButton *(^)(MK_STRING, MK_CONTROLSTATE)) btn_title;
- (UIButton *(^)(MK_COLOR, MK_CONTROLSTATE)) btn_titleColor;
- (UIButton *(^)(MK_UIIMAGE, MK_CONTROLSTATE, MK_BOOL)) btn_image;
- (UIButton *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) btn_font;
- (UIButton *(^)(MK_BOOL)) btn_selected;
- (UIButton *(^)(MK_BOOL)) btn_enabled;
- (UIButton *(^)(UIEdgeInsets, UIEdgeInsetsOption)) btn_insets;
- (UIButton *(^)(id, SEL, UIControlEvents)) btn_action;
- (UIButton *(^)(UIControlEvents, ButtonPressedBlock))btn_actionBlock;

@end

@interface UILabel (Maker)

@end



@interface UIButton (Maker)
@property (nonatomic, copy) ButtonPressedBlock buttonPressedBlock;

@end
