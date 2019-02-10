//
//  Command.h
//  commandPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Command : NSObject<CommandProtocol>
@property(nonatomic,strong) Receiver *receiver;

@end

NS_ASSUME_NONNULL_END
