//
//  Invoker.h
//  commandPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface Invoker : NSObject
- (void)setCommand:(Command *)command;
- (void)executeCommand;
@end

NS_ASSUME_NONNULL_END
