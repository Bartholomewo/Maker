//
//  UIView+Maker.h
//  Components
//
//  Created by ZhaoHeng on 2017/6/15.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MakerUntil.h"

#pragma mark ================== UIView + Maker ====================
@interface UIView (Maker)
/** 初始化UIView */
+ (UIView *)maker;
/** 设置UIView Frame x, y, w, h */
- (UIView *(^)(MK_FLOAT, MK_FLOAT, MK_FLOAT, MK_FLOAT)) com_frame;
/** 设置UIView背景颜色 */
- (UIView *(^)(MK_COLOR)) com_backgroundColor;
/** 设置UIView透明度 */
- (UIView *(^)(MK_FLOAT)) com_alpha;
/** 设置UIView是否隐藏 */
- (UIView *(^)(MK_BOOL)) com_hidden;
/** 设置UIView圆角 */
- (UIView *(^)(MK_FLOAT)) com_cornerRadius;
/** 设置UIView边框 borderWidth, 颜色 */
- (UIView *(^)(MK_FLOAT, MK_COLOR)) com_border;
/** 设置UIView Tag值 */
- (UIView *(^)(MK_INTEGER)) com_tag;
/** 设置UIView显示的模式 */
- (UIView *(^)(MKViewContentModeOption)) com_contentMode;
/** 设置UIView UserInterface是否可用 */
- (UIView *(^)(MK_BOOL)) com_userInterface;
/** 添加UIView到某个View */
- (UIView *(^)(MK_UIVIEW)) com_setup;
/** 切割UIView */
- (UIView *(^)(MK_BOOL)) com_clipsToBounds;
@end


#pragma mark ================== UIView + MKButton ====================
@interface UIView (MKButton)
/** 设置Button标题文字 文字 状态:mk_Normal */
- (UIButton *(^)(MK_STRING, MKControlStateOption)) btn_title;
/** 设置Button标题文字颜色 颜色 状态：mk_Normal */
- (UIButton *(^)(MK_COLOR, MKControlStateOption)) btn_titleColor;
/** 设置Button图片 图片 状态:mk_Normal 是否是背景图片 */
- (UIButton *(^)(MK_UIIMAGE, MKControlStateOption, MK_BOOL)) btn_image;
/** 设置Button标题文字style size */
- (UIButton *(^)(MK_FLOAT)) btn_font1;
/** 设置Button标题文字style size weight family */
- (UIButton *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) btn_font2;
/** 设置Button选中状态 YES/NO */
- (UIButton *(^)(MK_BOOL)) btn_selected;
/** 设置Button是否可用 */
- (UIButton *(^)(MK_BOOL)) btn_enabled;
/** 设置Button标题文字Edge UIEdgeInsets， mk_Image/mk_Title */
- (UIButton *(^)(UIEdgeInsets, MKUIEdgeInsetsOption)) btn_insets;
/** 点击Button事件 observer, @selector, mk_TouchUpInside... */
- (UIButton *(^)(id, SEL, MKControlEventsOption)) btn_action;
/** 点击Button事件 mk_TouchUpInside..., block */
- (UIButton *(^)(MKControlEventsOption, MKButtonPressedBlock))btn_actionBlock;
@end


#pragma mark ================== UIView + MKImageView ====================
@interface UIView (MKImageView)
/** 设置ImageView的图片根据名字 */
- (UIImageView *(^)(MK_STRING)) img_imageName;
/** 设置ImageView的图片根据UIImage */
- (UIImageView *(^)(MK_UIIMAGE)) img_image;
/** 设置ImageView的动画图片数组 */
- (UIImageView *(^)(NSArray <UIImage*> *)) img_images;
/** 设置ImageView的动画的时间和次数 */
- (UIImageView *(^)(MK_TIMEINTERVAL, MK_INTEGER)) img_animation;
@end


#pragma mark ================== UIView + MKLabel ====================
@interface UIView (MKLabel)
/** 设置Label的文字 */
- (UILabel *(^)(MK_STRING)) lab_text;
/** 设置Label的文字颜色 */
- (UILabel *(^)(MK_COLOR)) lab_textColor;
/** 设置Label文字 size */
- (UILabel *(^)(MK_FLOAT)) lab_font1;
/** 设置Label文字 size weight family */
- (UILabel *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) lab_font2;
/** 设置Label的居左、中、右 */
- (UILabel *(^)(MKTextAlignmentOption)) lab_textAlignment;
/** 设置Label的换行模式 */
- (UILabel *(^)(MKLineBreakModeOption)) lab_lineBreakMode;
/** 设置Label的换行行数 */
- (UILabel *(^)(MK_INTEGER)) lab_numberOfSection;
/** 设置Label是否可用 */
- (UILabel *(^)(MK_BOOL)) lab_enabled;
/** 设置Label如果超过宽自动缩放字体 */
- (UILabel *(^)(MK_BOOL))lab_adjust;
@end


#pragma mark ================== UIView + MKTextField ====================
@interface UIView (MKTextField)
/** 设置TextField的默认文字 */
- (UITextField *(^)(MK_STRING)) tf_text;
/** 设置TextField的富文本文字 */
- (UITextField *(^)(NSAttributedString *)) tf_attrText;
/** 设置TextField的文字颜色 */
- (UITextField *(^)(MK_COLOR)) tf_textColor;
/** 设置TextField的文字的Font, size */
- (UITextField *(^)(MK_FLOAT)) tf_font1;
/** 设置TextField的文字的Font, size, weight, family */
- (UITextField *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) tf_font2;
/** 设置TextField的文字居左、中、右 */
- (UITextField *(^)(MKTextAlignmentOption)) tf_textAlinment;
/** 设置TextField的的代理 */
- (UITextField *(^)()) tf_delegate;
/** 设置TextField的风格 */
- (UITextField *(^)(MKTextBorderStyleOption)) tf_style;
/** 设置TextField的提示语 */
- (UITextField *(^)(MK_STRING)) tf_placeholder;
/** 设置TextField的清除模式 */
- (UITextField *(^)(MKTextFieldViewModeOption)) tf_clearMode;
/** 设置TextField的左view */
- (UITextField *(^)(MK_UIVIEW, MKTextFieldViewModeOption)) tf_leftView;
/** 设置TextField的右view */
- (UITextField *(^)(MK_UIVIEW, MKTextFieldViewModeOption)) tf_rightView;

/// 附加函数
/** 设置TextField的字数限制 如果要使用字符限制需要设置tf_notification tf_delegate*/
- (UITextField *(^)(MK_INTEGER)) tf_maxLength;
/** 设置TextField的通知 */
- (UITextField *(^)()) tf_notification;
/** 去除TextField的通知 */
- (UITextField *(^)()) tf_removeNotification;
/** 点击return search的功能按钮时候的回调 */
- (UITextField *(^)(MKShouldReturnBlock)) tf_optionBlock;
/** 设置TextField文字变化的block */
- (UITextField *(^)(MKTextChangeBlock)) tf_changeBlock;
@end


#pragma mark ================== UIView + MKUIScrollView ====================
@interface UIView (MKScrollView)
/** 设置ScrollView的偏移量 */
- (UIScrollView *(^)(MK_CGPOINT)) scr_contentOffset;
/** 设置ScrollView的Size */
- (UIScrollView *(^)(MK_CGSize)) scr_contentSize;
/** 设置ScrollView的EdgeInsets*/
- (UIScrollView *(^)(UIEdgeInsets)) scr_contentInsets;
/** 设置ScrollView的代理*/
- (UIScrollView *(^)(id)) scr_delegate;
/** 设置ScrollView的bounces*/
- (UIScrollView *(^)(MK_BOOL)) scr_bounces;
/** 设置ScrollView的alwaysBounceVertical*/
- (UIScrollView *(^)(MK_BOOL)) scr_alwaysBounceVertical;
/** 设置ScrollView的alwaysBounceHorizontal*/
- (UIScrollView *(^)(MK_BOOL)) scr_alwaysBounceHorizontal;
/** 设置ScrollView的scrollEnabled*/
- (UIScrollView *(^)(MK_BOOL)) scr_scrollEnabled;
/** 设置ScrollView的showsHorizontalScrollIndicator*/
- (UIScrollView *(^)(MK_BOOL)) scr_showsHorizontal;
/** 设置ScrollView的showsVerticalScrollIndicator*/
- (UIScrollView *(^)(MK_BOOL)) scr_showsVertical;
/** 设置ScrollView的scrollIndicatorInsets*/
- (UIScrollView *(^)(UIEdgeInsets)) scr_indicatorInsets;
/** 设置ScrollView的bounces*/
- (UIScrollView *(^)(MKScrollViewIndicatorStyle)) scr_indicatorStyle;
/** 设置ScrollView的minimumZoomScale*/
- (UIScrollView *(^)(MK_FLOAT)) scr_minScale;
/** 设置ScrollView的maximumZoomScale*/
- (UIScrollView *(^)(MK_FLOAT)) scr_maxScale;
/** 设置ScrollView的zoomScale*/
- (UIScrollView *(^)(MK_FLOAT)) scr_zoomScale;
/** 设置ScrollView的bouncesZoom*/
- (UIScrollView *(^)(MK_BOOL)) scr_bouncesZoom;
/** 设置ScrollView的bounces*/
- (UIScrollView *(^)(MKScrollViewKeyboardDismissMode)) scr_keyboardDismissMode;
@end
