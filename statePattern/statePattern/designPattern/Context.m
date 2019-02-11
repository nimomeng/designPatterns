//
//  Context.m
//  statePattern
//
//  Created by nimo on 2019/2/11.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "Context.h"
#import "State.h"

@implementation Context
- (id)initWithState:(State *)state
{
    if (self = [super init]) {
        self.state = state;
    }
    
    return self;
}

- (void)setState:(State *)state
{
    _state = state;
    NSLog(@"current state：%@", NSStringFromClass([state class]));
}

- (void)request
{
    [self.state handle:self];
}


@end
