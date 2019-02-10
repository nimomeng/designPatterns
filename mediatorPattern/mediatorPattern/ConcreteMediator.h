//
//  ConcreteMediator.h
//  mediatorPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "ConcreteColleague1.h"
#import "ConcreteColleague2.h"
@class Mediator;

NS_ASSUME_NONNULL_BEGIN

@interface ConcreteMediator : Mediator
- (void)setColleauge1:(ConcreteColleague1 *)colleague1;
- (void)setColleauge2:(ConcreteColleague2 *)colleague2;
@end

NS_ASSUME_NONNULL_END
