//
//  BaseHandler.m
//  ChainOfResponsibilityPattern
//
//  Created by nimo on 2019/6/23.
//  Copyright © 2019 com.qq.gdt. All rights reserved.
//

#import "BaseHandler.h"
@implementation HandlerParam
@end

@interface BaseHandler()
@end

@implementation BaseHandler
- (void)setNextHandler:(BaseHandler *)nextHandler
{
    _nextHandler = nextHandler;
}

- (void)handleProcession:(HandlerParam *)handlerparam
{
}
@end
