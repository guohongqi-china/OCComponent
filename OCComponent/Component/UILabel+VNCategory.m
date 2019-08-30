//
//  UILabel+VNCategory.m
//  OCComponent
//
//  Created by guohq on 2019/8/30.
//  Copyright © 2019 guohq. All rights reserved.
//

#import "UILabel+VNCategory.h"
#import <objc/runtime.h>

@implementation UILabel (VNCategory)

+ (instancetype)createView:(void(^)(VNPropertyManager *manager))block{
    UILabel *view               = [[self alloc]init];
    VNPropertyManager *manager = [VNPropertyManager new];
    manager.chileLable          = view;
    manager.chileView           = view;
    view.viewManager            = manager;
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
