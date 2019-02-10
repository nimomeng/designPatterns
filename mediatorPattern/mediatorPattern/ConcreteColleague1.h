//
//  ConcreteColleague1.h
//  mediatorPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "Colleague.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConcreteColleague1 : Colleague
- (void)send:(NSString *)message;
- (void)notify:(NSString *)message;
@end

NS_ASSUME_NONNULL_END
