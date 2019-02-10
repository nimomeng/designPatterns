//
//  ConcreteMediator.m
//  mediatorPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "ConcreteMediator.h"

@interface ConcreteMediator()
@property (nonatomic,weak) ConcreteColleague1 *colleauge1;
@property (nonatomic,weak) ConcreteColleague2 *colleauge2;
@end

@implementation ConcreteMediator
- (void)setColleauge1:(ConcreteColleague1 *)colleague1
{
    _colleauge1 = colleague1;
}

- (void)setColleauge2:(ConcreteColleague2 *)colleague2
{
    _colleauge2 = colleague2;
}

- (void)send:(NSString *)message colleague:(Colleague *)colleague
{
    if (colleague == self.colleauge1) {
        [self.colleauge1 notify:message];
    } else {
        [self.colleauge2 notify:message];
    }
}
@end
