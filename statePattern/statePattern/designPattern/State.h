//
//  State.h
//  statePattern
//
//  Created by nimo on 2019/2/11.
//  Copyright © 2019 nimo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Context.h"

NS_ASSUME_NONNULL_BEGIN

@interface State : NSObject
- (void)handle:(Context *)context;
@end

NS_ASSUME_NONNULL_END
