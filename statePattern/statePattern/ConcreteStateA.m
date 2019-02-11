//
//  ConcreteStateA.m
//  statePattern
//
//  Created by nimo on 2019/2/11.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "ConcreteStateA.h"
#import "ConcreteStateB.h"

@implementation ConcreteStateA
- (void)handle:(Context *)context
{
    context.state = [[ConcreteStateB alloc] init];
}
@end
