## Maker
Maker 是一个使用链式语法实现UIKit控件的Category，快速开发，代码量少，使用方便。

## Maker 使用方法

* 导入UIView + Maker即可



## 介绍
1. 当前Maker支持:
* UIView
* UILabel
* UIButton
* UIImageView
2. 怎样使用
```Objective-C
UILabel *label = UILabel.maker
.com_setup(self.view)
.com_frame(20, 40, 100 ,40)
.com_cornerRadius(10, YES)
.com_border(2, @"#C3342E")
.com_backgroundColor(@"#F1F1F1")
.lab_text(@"Center")
.lab_textColor(@"#C3342E")
.lab_font(17, 0, nil)
.lab_textAlinment(lCenter);
```
> 注意：Maker里对应的控件有不同的命名方式：com---Common，lab---UILabel, btn---Button, 
> 书写格式先编写com的功能，然后编写lab 或者 btn的功能。

```Objective-C
UIButton.maker
.com_setup(self.view)
.com_frame(140, 40 ,80 ,40)
.com_backgroundColor(@"#4E92DF")
.com_cornerRadius(10, YES)
.com_tag(1)
.btn_font(15, 0, nil)
.btn_title(@"Click Me", bNormal)
.btn_titleColor(@"#FFFFFF", bNormal)
.btn_actionBlock(bTouchUpInside, ^(id sender){
    count ++;
    if (count == 4) {
        count = 1;
    }
    if (count == 1) {
        label.lab_textAlinment(lLeft).lab_text(@"Left");
    } else if (count == 2) {
        label.lab_textAlinment(lCenter).lab_text(@"Center");
    } else if (count == 3) {
        label.lab_textAlinment(lRight).lab_text(@"Right");
    }
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
label.layer.borderColor = [MakerUntil colorWithHexString:@"#C3342E"].CGColor;
label.backgroundColor = [MakerUntil colorWithHexString:@"#F1F1F1"];
label.text = @"Label";
label.textColor = [MakerUntil colorWithHexString:@"#FFFFFF"];
label.font = [UIFont systemFontOfSize:17 weight:2.0];
label.textAlignment = NSTextAlignmentCenter;
[self.view addSubview:label];

UILabel *label = UILabel.maker
.com_setup(self.view)
.com_frame(100, 100, 100 ,100)
.com_cornerRadius(10, YES)
.com_border(10, @"#C3342E")
.com_backgroundColor(@"#F1F1F1")
.lab_text(@"Label")
.lab_textColor(@"#FFFFFF")
.lab_font(17, 2.0, nil)
.lab_textAlinment(lCenter);
```
4. 本版本只是测试版本，肯定有bug，同时功能也比较单一，其他强大功能正在积极开发中，希望大家能够支持。
