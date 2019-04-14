//
//  MinusState.m
//  stateMachine
//
//  Created by nimo on 2019/3/26.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "MinusState.h"

@implementation MinusState
- (void)willExitWithNextState:(GKState *)nextState
{
    [super willExitWithNextState:nextState];
    NSLog(@"minus state exited");
}

- (void)didEnterWithPreviousState:(nullable GKState *)previousState
{
    [super didEnterWithPreviousState:previousState];
    self.resultLabel.text = [NSString stringWithFormat:@"%d",self.numA - self.numB];

    NSLog(@"minus state entered");
}
@end
