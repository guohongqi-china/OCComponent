//
//  UIButton+VNCategory.m
//  OCComponent
//
//  Created by guohq on 2019/8/30.
//  Copyright © 2019 guohq. All rights reserved.
//

#import "UIButton+VNCategory.h"
#import <objc/runtime.h>

@implementation UIButton (VNCategory)

+ (instancetype)createView:(void(^)(VNPropertyManager *manager))block{
    UIButton *view               = [[self alloc]init];
    VNPropertyManager *manager = [VNPropertyManager new];
    manager.chileButton          = view;
    manager.chileView            = view;
    view.viewManager             = manager;
    block(manager);
    return view;
}


- (void)setViewManager:(VNPropertyManager *)viewManager{
    if (viewManager != self.viewManager) {
        objc_setAssociatedObject(self,@selector(viewManager), viewManager, OBJC_ASSOCIATION_RETAIN);
    }
}

- (VNPropertyManager *)viewManager{
    return objc_getAssociatedObject(self, @selector(viewManager));
}

- (void)dealloc{
    NSLog(@"已销毁");
}

@end
