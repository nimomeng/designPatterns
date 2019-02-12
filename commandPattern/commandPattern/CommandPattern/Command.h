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

@interface CommandContext : NSObject

@property(nonatomic,strong) id body;
@property(nonatomic,copy) NSString *name;
@property(nonatomic,copy) NSString *type;

@end

@interface Command : NSObject<CommandProtocol>
@property(nonatomic,strong) Receiver *receiver;
@property(nonatomic,strong) CommandContext *commandContext;

@end


NS_ASSUME_NONNULL_END
