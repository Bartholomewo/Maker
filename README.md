## Maker
Maker 是一个使用链式语法实现UIKit控件的Category，快速开发，代码量少，使用方便。

## Maker 使用方法

* 导入UIView + Maker即可

## 介绍
1. 当前Maker支持:
* UIView
* UILabel
* UIButton
2. 怎样使用
```Objective-C
UILabel.maker
.com_setup(self.view)
.com_frame(100, 100, 100 ,100)
.com_cornerRadius(10, YES)
.com_border(10, @"123456")
.com_backgroundColor(@"#f1f1f1")
.lab_text(@"hellolad")
.lab_textColor(@"#cccccc")
.lab_font(17, 2.0, nil)
.lab_textAlinment(NSTextAlignmentCenter);
```
> 注意：Maker里对应的控件有不同的命名方式：com---Common，lab---UILabel, btn---Button, 
> 书写格式先编写com的功能，然后编写lab 或者 btn的功能。

```Objective-C
UIButton button = UIButton.maker
.com_setup(self.view)
.com_frame(100, 300 ,100 ,100)
.com_backgroundColor(@"#dddddd")
.com_cornerRadius(10, YES)
.com_tag(1)
.com_alpha(0.5)
.btn_font(10, 0, nil)
.btn_title(@"点击我", UIControlStateNormal)
.btn_titleColor(@"#aaaaaa", UIControlStateNormal)
.btn_actionBlock(UIControlEventTouchUpInside, ^(id sender){
    NSLog(@"action_block");
});

```
3. 和正常的手写控件的对比
```Objective-C
UILabel *label = [[UILabel alloc] init];
[self.view addSubview:label];
label.frame = CGRectMake(100, 100, 100, 100);
label.layer.cornerRadius = 10;
label.layer.masksToBounds = YES;
label.layer.borderWidth = 10;
label.layer.borderColor = [MakerUntil colorWithHexString:@"#123456"].CGColor;
label.backgroundColor = [MakerUntil colorWithHexString:@"#f1f1f1"];
label.text = @"hellolad";
label.textColor = [MakerUntil colorWithHexString:@"#cccccc"];
label.font = [UIFont systemFontOfSize:17 weight:2.0];
label.textAlignment = NSTextAlignmentCenter;
[self.view addSubview:label];

UILabel *label = UILabel.maker
.com_setup(self.view)
.com_frame(100, 100, 100 ,100)
.com_cornerRadius(10, YES)
.com_border(10, @"123456")
.com_backgroundColor(@"#f1f1f1")
.lab_text(@"hellolad")
.lab_textColor(@"#cccccc")
.lab_font(17, 2.0, nil)
.lab_textAlinment(NSTextAlignmentCenter);
```
4. 希望可以帮到大家，同时本版本只是测试版本，肯定有bug，同时功能也比较单一，其他强大功能正在积极开发中，希望大家支持。
