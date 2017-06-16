### Maker
>(大神求指点，本人小白一枚, 随意吐槽, 代码实现起来很容易)
>
Maker是一个使用链式语法实现的UIKit控件的小小的框架，轻松的学习之后可以实现快速的UI控件开发。

>支持的UIkit(如果大家觉得好可以一起维护这个东东)
>
* UIView
* UILabel
* UIButton
* UIImageView
* (Coding... ...)


>使用法则
>
```Objective-C
+ (UIView *)maker {
    return [self new];
}
```
1. 所有的控件的创建都使用XXX.maker

```Objective-C
UILabel.maker / UIButton.maker / UIView.maker / UIImageView.maker

```
2. 控件怎样使用链式语法
> 在这里我定义了一些Block，像Masonry一样，至于链式是什么，这里不再赘述。
>使用方法也比较简单就是maker.xxx.xxx.xx

3. 我定义了一些前缀来更好的调用链式语法，因为UIKit的控件继承了UIView所以UIView类别里定义的都是`com_`开头的Block这样可以方便的记忆，那么UILabel就是`lab_`, UIButton就是`btn_`，等等，你应该遵循先调用`com`的一些方法，然后调用`lab`或者`btn`或者其他，就像下面这样调用。

4. OK下面看代码
```Objective-C
UILabel.maker
.com_setup(self.view)
.com_frame(20, 40, 100 ,40)
.com_cornerRadius(10, YES)
.com_border(2, @"#C3342E")
.com_backgroundColor(@"#F1F1F1")
.lab_text(@"Center")
.lab_textColor(@"#C3342E")
.lab_font(17, 0, nil)
.lab_textAlinment(lCenter);

setup(self.view) 加载控件到self.view上
frame = frame
cornerRadius = 圆角
border = 边框
其他的就不用讲了，一看就明白

当然你也可以有返回值比如说这样：

UILabel *label = UILabel.maker

```

5. 具体的用法或者一些地方代码里都表现的很好。再来一个Button的例子
```Objective-C
static int count = 0;
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

这个Button做了两件事，1是渲染自己，2是有个点击事件。

```

6. 同时我也对系统的Enum做了一些改动，这样可以让你的代码更精简，虽然需要花点时间去学习，但是之后你会更快速的开发你的UI控件。
```Objective-C
// 重置NSLineBreakMode
typedef NS_ENUM(NSUInteger, LineBreakModeOption) {
    lWord = 0,
    lChar,
    lClip,
    lHead,
    lTail,
    lMiddle
};

// 重置UIControlState
typedef NS_OPTIONS(NSUInteger, ControlStateOption) {
    bNormal = 0,
    bHighlighted = 1 << 0,
    bDisabled = 1 << 1,
    bSelected = 1 << 2,
    bFocused NS_ENUM_AVAILABLE_IOS(9_0) = 1 << 3,
    bApplication = 0x00FF0000,
    bReserved = 0xFF000000
};
```
> 你会发现有些是`l`开发 有些是`b`开头，这也是为了区分UILabel和UIButton。

7. 手写系统UILabel 和 Maker的对比
```
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
.com_cornerRadius(10, YES)
.com_border(2, @"#C3342E")
.com_backgroundColor(@"#F1F1F1")
.lab_text(@"Center")
.lab_textColor(@"#C3342E")
.lab_font(17, 0, nil)
.lab_textAlinment(lCenter);
```
> 不管是代码量还是精简程度都有不小的进步，当然，我做这个就是为了精简代码用的。
>
>最后，这个框架还不太成熟，可能存在大大小小的问题，但是这个编写代码的思想是很好的。当然后面我会继续维护和开发这个小框架，最后祝勇士获得总冠军。Yeah.
