//
//  UITableView+Maker.m
//  Maker
//
//  Created by 赵恒 on 2017/9/4.
//

#import "UITableView+Maker.h"

@implementation UITableView (Maker)
+ (UITableView *) maker:(MKTableViewStyle)style {
    return [[UITableView alloc] initWithFrame:CGRectZero style:[MakerUntil mk_tableViewStyle:style]];
}
- (UITableView *(^)(id)) tab_delegateAndDataSource {
    return ^(id target) {
        if (!target) {
            return self;
        }
        self.delegate = target;
        self.dataSource = target;
        return self;
    };
}
- (UITableView *(^)(id)) tab_delegate {
    return ^(id target) {
        if (!target) {
            return self;
        }
        self.delegate = target;
        return self;
    };
}
- (UITableView *(^)(id)) tab_dataSource {
    return ^(id target) {
        if (!target) {
            return self;
        }
        self.dataSource = target;
        return self;
    };
}
- (UITableView *(^)(MK_FLOAT)) tab_rowHeight {
    return ^(MK_FLOAT height) {
        self.rowHeight = height;
        return self;
    };
}
- (UITableView *(^)(MK_FLOAT)) tab_sHeaderHeight {
    return ^(MK_FLOAT height) {
        self.sectionHeaderHeight = height;
        return self;
    };
}
- (UITableView *(^)(MK_FLOAT)) tab_sFooterHeight {
    return ^(MK_FLOAT height) {
        self.sectionFooterHeight = height;
        return self;
    };
}
- (UITableView *(^)(MK_FLOAT)) tab_eRowHeight {
    return ^(MK_FLOAT height) {
        self.estimatedRowHeight = height;
        return self;
    };
}
- (UITableView *(^)(MK_FLOAT)) tab_esHeaderHeight {
    return ^(MK_FLOAT height) {
        self.estimatedSectionHeaderHeight = height;
        return self;
    };
}
- (UITableView *(^)(MK_FLOAT)) tab_esFooterHeight {
    return ^(MK_FLOAT height) {
        self.estimatedSectionFooterHeight = height;
        return self;
    };
}
- (UITableView *(^)(UIEdgeInsets)) tab_separatorInset {
    return ^(UIEdgeInsets insets) {
        self.separatorInset = insets;
        return self;
    };
}
- (UITableView *(^)(MK_UIVIEW)) tab_backgroundView {
    return ^(MK_UIVIEW view) {
        self.backgroundView = view;
        return self;
    };
}
- (UITableView *(^)(MK_UIVIEW)) tab_tHeaderView {
    return ^(MK_UIVIEW view) {
        self.tableHeaderView = view;
        return self;
    };
}
- (UITableView *(^)(MK_UIVIEW)) tab_tFooterView {
    return ^(MK_UIVIEW view) {
        self.tableFooterView = view;
        return self;
    };
}
- (UITableView *(^)()) tab_noneSeparatorStyle {
    return ^() {
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        return self;
    };
}
- (UITableView *(^)(Class, UINib*, MK_STRING)) tab_registerCell {
    return ^(Class cls, UINib *nib, MK_STRING identifier) {
        if (cls && identifier && !nib) {
            [self registerClass:cls forCellReuseIdentifier:identifier];
        }
        if (nib && identifier && !cls) {
            [self registerNib:nib forCellReuseIdentifier:identifier];
        }
        return self;
    };
}
- (UITableView *(^)(Class, UINib*, MK_STRING)) tab_registerHeaderFooter {
    return ^(Class cls, UINib *nib, MK_STRING identifier) {
        if (cls && identifier && !nib) {
            [self registerClass:cls forHeaderFooterViewReuseIdentifier:identifier];
        }
        if (nib && identifier && !cls) {
            [self registerNib:nib forHeaderFooterViewReuseIdentifier:identifier];
        }
        return self;
    };
}

@end
