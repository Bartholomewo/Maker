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
- (UIView *(^)(ViewContentModeOption)) com_contentMode;
- (UIView *(^)(MK_BOOL)) com_userInterface;
- (UIView *(^)(MK_UIVIEW)) com_setup;



#pragma mark UILabel
- (UILabel *(^)(MK_STRING)) lab_text;
- (UILabel *(^)(MK_COLOR)) lab_textColor;
- (UILabel *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) lab_font;
- (UILabel *(^)(TextAlignmentOption)) lab_textAlinment;
- (UILabel *(^)(LineBreakModeOption)) lab_lineBreakMode;
- (UILabel *(^)(MK_INTEGER)) lab_numberOfSection;
- (UILabel *(^)(MK_BOOL)) lab_enabled;



#pragma mark UIButton
- (UIButton *(^)(MK_STRING, ControlStateOption)) btn_title;
- (UIButton *(^)(MK_COLOR, ControlStateOption)) btn_titleColor;
- (UIButton *(^)(MK_UIIMAGE, ControlStateOption, MK_BOOL)) btn_image;
- (UIButton *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) btn_font;
- (UIButton *(^)(MK_BOOL)) btn_selected;
- (UIButton *(^)(MK_BOOL)) btn_enabled;
- (UIButton *(^)(UIEdgeInsets, UIEdgeInsetsOption)) btn_insets;
- (UIButton *(^)(id, SEL, ControlEventsOption)) btn_action;
- (UIButton *(^)(ControlEventsOption, ButtonPressedBlock))btn_actionBlock;


#pragma mark UIImageView
- (UIImageView *(^)(MK_UIIMAGE)) img_image;
- (UIImageView *(^)(NSArray <UIImage*> *)) img_images;
- (UIImageView *(^)(MK_TIMEINTERVAL, MK_INTEGER)) img_animation;

@end

@interface UILabel (Maker)

@end


@interface UIButton (Maker)
@property (nonatomic, copy) ButtonPressedBlock buttonPressedBlock;

@end


@interface UIImageView (Maker)

@end
