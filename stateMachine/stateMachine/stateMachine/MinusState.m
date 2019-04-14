//
//  MinusState.m
//  stateMachine
//
//  Created by nimo on 2019/3/26.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "MinusState.h"
#import "ShowResultState.h"
@implementation MinusState
- (void)willExitWithNextState:(GKState *)nextState
{
    [super willExitWithNextState:nextState];
    NSLog(@"minus state exited");
}

- (void)didEnterWithPreviousState:(nullable GKState *)previousState
{
    [super didEnterWithPreviousState:previousState];
    self.result = self.numA - self.numB;

    NSLog(@"minus state entered");
    [self.stateMachine enterState:[ShowResultState class]];
}
@end
