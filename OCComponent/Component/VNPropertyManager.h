//
//  VNPropertyManager.h
//  afsdfa
//
//  Created by guohq on 2019/8/30.
//  Copyright © 2019 guohq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VNPropertyManager : NSObject

@property (nonatomic, weak)    UIView            *chileView;
@property (nonatomic, weak)    UILabel           *chileLable;
@property (nonatomic, weak)    UITextField       *chileTextField;
@property (nonatomic, weak)    UIButton          *chileButton;

// 尺寸
- (VNPropertyManager *(^)(CGFloat x, CGFloat y, CGFloat width, CGFloat height))vn_frame;
// 背景色
- (VNPropertyManager *(^)(UIColor *col))vn_BKColor;
// 圆角设置
- (VNPropertyManager *(^)(CGFloat corner))vn_corner;
// 设置标题text
- (VNPropertyManager *(^)(NSString *title))vn_title;
// 设置标题大小
- (VNPropertyManager *(^)(NSInteger font))vn_font;
// 设置字体颜色textColor
- (VNPropertyManager *(^)(UIColor *textColor))vn_textColor;
// 设置占位符
- (VNPropertyManager *(^)(NSString *plceholder))vn_placeholder;
// 设置字体对其方式
- (VNPropertyManager *(^)(NSInteger align))vn_alignment;
// 添加view
- (VNPropertyManager *(^)(UIView *parentView))vn_addView;


@end

NS_ASSUME_NONNULL_END
