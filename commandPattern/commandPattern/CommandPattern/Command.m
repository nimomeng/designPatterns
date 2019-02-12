//
//  Command.m
//  commandPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "Command.h"
@implementation CommandContext
@end

@implementation Command

- (id)initWithReceiver:(Receiver *)receiver CommandContext:(CommandContext *)cmdContext
{
    if (self = [super init]) {
        self.receiver = receiver;
        self.commandContext = cmdContext;
    }
    
    return self;
}

- (void)execute
{
    NSLog(@"Execute Command");
}

@end
