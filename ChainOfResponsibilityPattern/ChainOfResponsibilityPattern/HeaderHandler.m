//
//  HeaderHandler.m
//  ChainOfResponsibilityPattern
//
//  Created by nimo on 2019/11/3.
//  Copyright © 2019 com.qq.gdt. All rights reserved.
//

#import "HeaderHandler.h"
#import "BaseHandler+PrivateMethod.h"

@implementation HeaderHandler
- (BOOL)canHandleRequest:(BaseHandlerRequest *)baseHandlerRequest
{
    return NO;
}

- (void)handleRequestProcession:(BaseHandlerRequest *)baseHandlerRequest
{
    // todo Add Logs
    NSLog(@"Shouldn't go here");
}
@end
