//
//  ConcreteColleague1.m
//  mediatorPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "ConcreteColleague1.h"

@implementation ConcreteColleague1
- (void)send:(NSString *)message
{
    [self.mediator send:message colleague:self];
}

- (void)notify:(NSString *)message
{
    NSLog(@"colleage one get msg: %@",message);
}
@end
