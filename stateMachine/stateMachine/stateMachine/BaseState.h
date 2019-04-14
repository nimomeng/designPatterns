//
//  BaseState.h
//  stateMachine
//
//  Created by nimo on 2019/4/14.
//  Copyright © 2019 nimo. All rights reserved.
//

#import <GameplayKit/GameplayKit.h>
#import "BaseState.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseState : GKState
@property (nonatomic) int numA;
@property (nonatomic) int numB;
@property (nonatomic) int result;
@end

NS_ASSUME_NONNULL_END
