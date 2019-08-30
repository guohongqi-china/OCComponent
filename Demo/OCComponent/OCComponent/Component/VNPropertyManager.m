//
//  VNPropertyManager.m
//  afsdfa
//
//  Created by guohq on 2019/8/30.
//  Copyright © 2019 guohq. All rights reserved.
//

#import "VNPropertyManager.h"

@implementation VNPropertyManager

- (VNPropertyManager *(^)(UIColor *col))vn_BKColor{
    return ^(UIColor *col){
        self.chileView.backgroundColor = col;
        return self;
    };
}

- (VNPropertyManager *(^)(CGFloat x, CGFloat y, CGFloat width, CGFloat height))vn_frame{
    return ^(CGFloat x, CGFloat y, CGFloat width, CGFloat height){
        self.chileView.frame = CGRectMake(x, y, width, height);
        return self;
    };
}

- (VNPropertyManager *(^)(CGFloat corner))vn_corner{
    return ^(CGFloat corner){
        self.chileView.layer.masksToBounds = YES;
        self.chileView.layer.cornerRadius = corner;
        return self;
    };
}

- (VNPropertyManager *(^)(UIView *parentView))vn_addView{
    return ^(UIView *parentView){
        [parentView addSubview:self.chileView];
        return self;
    };
}

- (VNPropertyManager *(^)(NSInteger font))vn_font{
    return ^(NSInteger font){
        self.chileLable.font             = [UIFont systemFontOfSize:font];
        self.chileTextField.font         = [UIFont systemFontOfSize:font];
        self.chileButton.titleLabel.font = [UIFont systemFontOfSize:font];
        return self;
    };
}

- (VNPropertyManager *(^)(NSString *plceholder))vn_placeholder{
    return ^(NSString *plceholder){
        self.chileTextField.placeholder = plceholder;
        return self;
    };
}

- (VNPropertyManager *(^)(NSInteger align))vn_alignment{
    return ^(NSInteger align){
        self.chileLable.textAlignment     = align;
        self.chileButton.contentHorizontalAlignment = align;
        self.chileTextField.textAlignment = align;
        return self;
    };
}

- (VNPropertyManager *(^)(NSString *title))vn_title{
    return ^(NSString *title){
        self.chileLable.text     = title;
        self.chileTextField.text = title;
        [self.chileButton setTitle:title forState:0];
        return self;
    };
}

- (VNPropertyManager *(^)(UIColor *textColor))vn_textColor{
    return ^(UIColor *textColor){
        self.chileLable.textColor     = textColor;
        self.chileTextField.textColor = textColor;
        [self.chileButton setTitleColor:textColor forState:0];
        return self;
    };
}

@end
