//
//  Colleague.h
//  mediatorPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface Colleague : NSObject
@property (nonatomic,strong) Mediator *mediator;
- (id)initWithMediator:(Mediator *)mediator;
@end

NS_ASSUME_NONNULL_END
