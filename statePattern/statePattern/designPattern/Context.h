//
//  Context.h
//  statePattern
//
//  Created by nimo on 2019/2/11.
//  Copyright © 2019 nimo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class State;

NS_ASSUME_NONNULL_BEGIN

@interface Context : NSObject
@property (nonatomic,strong) State *state;

- (id)initWithState:(State *)state;
- (void)request;
@end

NS_ASSUME_NONNULL_END
