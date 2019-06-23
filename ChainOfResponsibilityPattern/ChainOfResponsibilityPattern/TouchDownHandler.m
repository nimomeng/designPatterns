//
//  TouchDownHandler.m
//  ChainOfResponsibilityPattern
//
//  Created by nimo on 2019/6/23.
//  Copyright © 2019 com.qq.gdt. All rights reserved.
//

#import "TouchDownHandler.h"

@implementation TouchDownHandler
- (void)handleProcession:(HandlerParam *)handlerparam
{
    NSLog(@"%@ triggered! This is the end of the chain!",handlerparam.clickType);
}
@end
