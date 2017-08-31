### Maker 链式的创建控件
> Maker是一个使用链式语法实现的UIKit控件的小小的框架，轻松的学习之后可以实现快速的UI控件开发。

支持的UIKit
- UIView
- UILabel
- UIButton
- UITextField
- UIImageView
- (Coding...)

简单使用：
```
UIView *view = [UIView maker]
.com_setup(self.view)
.com_frame(0, 0, 10, 10)
.com_backgroundColor([UIColor redColor]);
```
API介绍：
```
com_ : 通用控件的通用的前缀
lab_ : UILabel的所有属性前缀
btn_ : UIButton
img_ : UIImageView
tf_  : UITextField
其他的函数都一一对应该控件的属性

在MakerUtil里我重写了系统的枚举，使用的时候注意一下，就可以完美掌握了。
```
增加：
```
1. NSNumber+Maker
该分类实现了适配屏幕的功能。
例如：设计UI给你了一张750的图，那么你只需在你需要设置frame的时候这么写：
.com_frame(0, 0, ppx(100), ppx(100))，就可以适配所有的屏幕。

2. mk_imageName
该属性可以获取到你设置的图片的名字。
```
对比：
```
UILabel *label = [[UILabel alloc] init];
label.frame = CGRectMake(ppx(20), ppx(20), ppx(20), ppx(20));
label.layer.cornerRadius = 10;
label.layer.masksToBounds = YES;
label.layer.borderColor = [MakerUntil colorWithHexString:@"#C3342E"].CGColor;
label.layer.borderWidth = 2;
label.text = @"Center";
label.textColor = [MakerUntil colorWithHexString:@"#C3342E"];
label.font = [UIFont systemFontOfSize:ppx(17) weight:0];
label.textAlignment = NSTextAlignmentCenter;
[self.view addSubview:label];

UILabel *label = UILabel.maker
.com_setup(self.view)
.com_frame(ppx(20), ppx(20), ppx(20) ,ppx(20))
.com_cornerRadius(10, YES)
.com_border(2, @"#C3342E")
.com_backgroundColor(@"#F1F1F1")
.lab_text(@"Center")
.lab_textColor(@"#C3342E")
.lab_font1(ppx(17))
.lab_textAlinment(mk_Center);
```

其他：
> 使用Maker+Masonry能是你手写控件写到嗨。

> Masonry: https://github.com/SnapKit/Masonry
