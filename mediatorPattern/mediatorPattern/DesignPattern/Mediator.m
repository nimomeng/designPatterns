//
//  Mediator.m
//  mediatorPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "Mediator.h"

@implementation Mediator
- (void)send:(NSString *)message colleague:(Colleague *)colleague
{
    NSLog(@"%@",message);
}
@end
