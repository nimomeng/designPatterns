//
//  BaseHandler.m
//  ChainOfResponsibilityPattern
//
//  Created by nimo on 2019/6/23.
//  Copyright © 2019 com.qq.gdt. All rights reserved.
//

#import "BaseHandler.h"
#import "BaseHandler+PrivateMethod.h"
@implementation BaseHandlerRequest
@end

@interface BaseHandler()
@end

@implementation BaseHandler
- (void)setNextHandler:(BaseHandler *)nextHandler
{
    _nextHandler = nextHandler;
}

- (void)handleRequest:(BaseHandlerRequest *)baseHandlerRequest
{
    if ([self canHandleRequest:baseHandlerRequest]) {
        [self handleRequestProcession:baseHandlerRequest];
    } else if (self.nextHandler){
        [self.nextHandler handleRequest:baseHandlerRequest];
    } else {
        // TODO Add Logs here
        NSLog(@"End Point");
    }
}

@end
