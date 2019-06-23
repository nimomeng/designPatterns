//
//  ShowResultState.h
//  stateMachine
//
//  Created by nimo on 2019/4/14.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "BaseState.h"

NS_ASSUME_NONNULL_BEGIN

@interface ShowResultState : BaseState
@property (nonatomic, strong) UILabel *resultLabel;

@end

NS_ASSUME_NONNULL_END
