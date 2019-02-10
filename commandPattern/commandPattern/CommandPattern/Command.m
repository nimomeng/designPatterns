//
//  Command.m
//  commandPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "Command.h"

@implementation Command

- (id)initWithReceiver:(Receiver *)receiver
{
    if (self = [super init]) {
        self.receiver = receiver;
    }
    
    return self;
}

- (void)execute
{
    NSLog(@"Execute Command");
}

@end
