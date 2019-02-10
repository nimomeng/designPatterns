//
//  Invoker.m
//  commandPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "Invoker.h"

@interface Invoker ()
@property (nonatomic,strong) Command *command;
@end

@implementation Invoker
- (void)setCommand:(Command *)command
{
    _command = command;
}

- (void)executeCommand
{
    [self.command execute];
}
@end
