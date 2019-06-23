//
//  ShowResultState.m
//  stateMachine
//
//  Created by nimo on 2019/4/14.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "ShowResultState.h"

@implementation ShowResultState
- (void)didEnterWithPreviousState:(nullable GKState *)previousState
{
    [super didEnterWithPreviousState:previousState];
    self.resultLabel.text = [NSString stringWithFormat:@"%d",((BaseState *)previousState).result];
    NSLog(@"add state entered");
}
@end
