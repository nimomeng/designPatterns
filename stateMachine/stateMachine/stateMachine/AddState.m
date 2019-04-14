//
//  AddState.m
//  stateMachine
//
//  Created by nimo on 2019/3/26.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "AddState.h"
#import "ShowResultState.h"

@implementation AddState

- (void)willExitWithNextState:(GKState *)nextState
{
    [super willExitWithNextState:nextState];
    NSLog(@"add state exited");
}

- (void)didEnterWithPreviousState:(nullable GKState *)previousState
{
    [super didEnterWithPreviousState:previousState];
    self.result = self.numA + self.numB;
    NSLog(@"add state entered");
    [self.stateMachine enterState:[ShowResultState class]];
}

@end
