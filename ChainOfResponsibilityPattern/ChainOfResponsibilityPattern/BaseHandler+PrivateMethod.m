//
//  BaseHandler+PrivateMethod.m
//  ChainOfResponsibilityPattern
//
//  Created by nimo on 2019/11/3.
//  Copyright © 2019 com.qq.gdt. All rights reserved.
//

#import "BaseHandler+PrivateMethod.h"
@implementation BaseHandler (PrivateMethod)
- (void)handleRequestProcession:(BaseHandlerRequest *)baseHandlerRequest
{
    
}

- (BOOL)canHandleRequest:(BaseHandlerRequest *)baseHandlerRequest
{
    return YES;
}
@end
