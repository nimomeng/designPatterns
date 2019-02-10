//
//  ConcreteColleague2.m
//  mediatorPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "ConcreteColleague2.h"

@implementation ConcreteColleague2
- (void)send:(NSString *)message
{
    [self.mediator send:message colleague:self];
}

- (void)notify:(NSString *)message
{
    NSLog(@"colleage two get msg: %@",message);
}
@end
