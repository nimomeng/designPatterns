//
//  DoubleClickHandler.m
//  ChainOfResponsibilityPattern
//
//  Created by nimo on 2019/6/23.
//  Copyright © 2019 com.qq.gdt. All rights reserved.
//

#import "DoubleClickHandler.h"
#import "BaseHandler+PrivateMethod.h"

@implementation DoubleClickHandler
- (void)handleRequestProcession:(BaseHandlerRequest *)baseHandlerRequest
{
    NSLog(@"Double Click Triggered!");
}

- (BOOL)canHandleRequest:(BaseHandlerRequest *)baseHandlerRequest
{
    if ([baseHandlerRequest.clickType isEqualToString:@"doubleClick"]) {
        return YES;
    }
    return NO;
}
@end
