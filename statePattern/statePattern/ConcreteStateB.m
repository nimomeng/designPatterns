//
//  concreteStateB.m
//  statePattern
//
//  Created by nimo on 2019/2/11.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "ConcreteStateB.h"
#import "ConcreteStateA.h"

@implementation ConcreteStateB
- (void)handle:(Context *)context
{
    context.state = [[ConcreteStateA alloc] init];
}
@end
