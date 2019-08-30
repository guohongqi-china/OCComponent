//
//  VNComponentProtocol.h
//  OCComponent
//
//  Created by guohq on 2019/8/30.
//  Copyright © 2019 guohq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VNPropertyManager.h"
NS_ASSUME_NONNULL_BEGIN

@protocol VNComponentProtocol <NSObject>

@property (nonatomic, strong)    VNPropertyManager               *viewManager;

+ (instancetype)createView:(void(^)(VNPropertyManager *_Nonnull manager))block;

@end

NS_ASSUME_NONNULL_END
