//
//  SingleClickHandler.m
//  ChainOfResponsibilityPattern
//
//  Created by nimo on 2019/6/23.
//  Copyright © 2019 com.qq.gdt. All rights reserved.
//

#import "SingleClickHandler.h"

@implementation SingleClickHandler
- (void)handleProcession:(HandlerParam *)handlerparam
{
    if ([handlerparam.clickType isEqualToString:@"singleClick"]) {
        NSLog(@"Single Click Triggered!");
    } else {
        [self.nextHandler handleProcession:handlerparam];
    }
}
@end
