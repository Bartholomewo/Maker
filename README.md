# Maker

[![CI Status](http://img.shields.io/travis/forkingghost/Maker.svg?style=flat)](https://travis-ci.org/forkingghost/Maker)
[![Version](https://img.shields.io/cocoapods/v/Maker.svg?style=flat)](http://cocoapods.org/pods/Maker)
[![License](https://img.shields.io/cocoapods/l/Maker.svg?style=flat)](http://cocoapods.org/pods/Maker)
[![Platform](https://img.shields.io/cocoapods/p/Maker.svg?style=flat)](http://cocoapods.org/pods/Maker)



## Installation

```ruby
pod 'Maker'
```

## Author

Bartholomewo, kuma15@163.com

## 更新

|  版本  |           更新            |
| :--: | :---------------------: |
| 0.12 |    去除UITextField的通知     |
| 0.11 | 增加UITextField的字符限制，控制功能 |
| 0.10 |          发布版本           |



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

####注意：

```objective-c
在使用Button的点击事件，TextField的ValueChange事件的时候，如果在Block块中使用了self,请在Button上方加入：
__weak typeof(self) weakSelf = self;
解除循环引用
```

> 如果感觉好用并且希望提供更多的功能，请联系kuma15@163.com，或者fork之后提供更好的功能改进。

