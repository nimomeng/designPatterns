//
//  Colleague.m
//  mediatorPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "Colleague.h"

@implementation Colleague
- (id)initWithMediator:(Mediator *)mediator
{
    if (self = [super init]) {
        self.mediator = mediator;
    }
    return self;
}
@end
