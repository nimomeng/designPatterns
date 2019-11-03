//
//  TouchDownHandler.m
//  ChainOfResponsibilityPattern
//
//  Created by nimo on 2019/6/23.
//  Copyright © 2019 com.qq.gdt. All rights reserved.
//

#import "TouchDownHandler.h"
#import "BaseHandler+PrivateMethod.h"

@implementation TouchDownHandler
- (void)handleRequestProcession:(BaseHandlerRequest *)handlerparam
{
    NSLog(@"%@ triggered! This is the end of the chain!",handlerparam.clickType);
}

- (BOOL)canHandleRequest:(BaseHandlerRequest *)baseHandlerRequest
{
    return YES;
}
@end
