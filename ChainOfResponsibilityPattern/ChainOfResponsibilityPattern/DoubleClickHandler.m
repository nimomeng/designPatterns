//
//  DoubleClickHandler.m
//  ChainOfResponsibilityPattern
//
//  Created by nimo on 2019/6/23.
//  Copyright © 2019 com.qq.gdt. All rights reserved.
//

#import "DoubleClickHandler.h"

@implementation DoubleClickHandler
- (void)handleProcession:(HandlerParam *)handlerparam
{
    if ([handlerparam.clickType isEqualToString:@"doubleClick"]) {
        NSLog(@"Double Click Triggered!");
    } else {
        [self.nextHandler handleProcession:handlerparam];
    }
}
@end
