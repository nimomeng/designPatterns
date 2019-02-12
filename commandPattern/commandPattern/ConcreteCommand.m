//
//  ConcreteCommand.m
//  commandPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "ConcreteCommand.h"

@implementation ConcreteCommand
- (void)execute
{
    [super execute];
    NSLog(@"concrete command Name: %@",self.commandContext.name);
    [self.receiver action];
}
@end
