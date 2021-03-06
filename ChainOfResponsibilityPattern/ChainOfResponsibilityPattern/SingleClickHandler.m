//
//  SingleClickHandler.m
//  ChainOfResponsibilityPattern
//
//  Created by nimo on 2019/6/23.
//  Copyright © 2019 com.qq.gdt. All rights reserved.
//

#import "SingleClickHandler.h"
#import "BaseHandler+PrivateMethod.h"


@implementation SingleClickHandler
- (void)handleRequestProcession:(BaseHandlerRequest *)baseHandlerRequest
{
    NSLog(@"Single Click Triggered!");
}

- (BOOL)canHandleRequest:(BaseHandlerRequest *)baseHandlerRequest
{
    if ([baseHandlerRequest.clickType isEqualToString:@"singleClick"]) {
        return YES;
    }
    return NO;
}
@end
