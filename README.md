# Maker

[![CI Status](http://img.shields.io/travis/forkingghost/Maker.svg?style=flat)](https://travis-ci.org/forkingghost/Maker)
[![Version](https://img.shields.io/cocoapods/v/Maker.svg?style=flat)](http://cocoapods.org/pods/Maker)
[![License](https://img.shields.io/cocoapods/l/Maker.svg?style=flat)](http://cocoapods.org/pods/Maker)
[![Platform](https://img.shields.io/cocoapods/p/Maker.svg?style=flat)](http://cocoapods.org/pods/Maker)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

Maker is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Maker'
```

## Author

Bartholomewo, kuma15@163.com

## License

Maker is available under the MIT license. See the LICENSE file for more info.
=======

## 更新

|  版本  |           更新            |
| :--: | :---------------------: |
| 0.11 | 增加UITextField的字符限制，控制功能 |
| 0.10 | 发布版本 |



## Maker Introduce

Maker是一个使用链式语法实现的UIKit控件的小小的框架，轻松的学习之后可以实现快速的UI控件开发。

现在支持的控件：

**UIView** / **UILabel** / **UIButton** / **UITextField** / **UIImageView** / **UIScrollView** 

其他的还在努力coding中。

#### API介绍

```objective-c
简单使用：
UIView.maker
.com_setup(self.view)
.com_frame(0, 0, 100, 100)

前缀介绍：
UIView通用：com_
UILabel: lab_
UIButton: btn_
UITextField: tf_
UIScrollView: scr_
UIImageView: img_
```

#### 比较（使用Maker能减少一大部分代码量，并且更直观易懂）

```objective-c
UILabel *label = [[UILabel alloc] init];
label.frame = CGRectMake(20, 40, 100, 40);
label.layer.cornerRadius = 10;
label.layer.masksToBounds = YES;
label.layer.borderColor = [MakerUntil colorWithHexString:@"#C3342E"].CGColor;
label.layer.borderWidth = 2;
label.text = @"Center";
label.textColor = [MakerUntil colorWithHexString:@"#C3342E"];
label.font = [UIFont systemFontOfSize:17 weight:0];
label.textAlignment = NSTextAlignmentCenter;
[self.view addSubview:label];

UILabel *label = UILabel.maker
.com_setup(self.view)
.com_frame(20, 40, 100 ,40)
.com_cornerRadius(10)
.com_border(2, @"#C3342E")
.com_backgroundColor(@"#F1F1F1")
.lab_text(@"Center")
.lab_textColor(@"#C3342E")
.lab_font1(17)
.lab_textAlinment(lCenter);
```
