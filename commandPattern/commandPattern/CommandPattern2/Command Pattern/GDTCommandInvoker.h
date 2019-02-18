//
//  GDTCommandInvoker.h
//  GDTMobSDK
//
//  Created by nimomeng on 2019/2/12.
//  Copyright © 2019 Tencent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GDTCommand.h"
NS_ASSUME_NONNULL_BEGIN

@interface GDTCommandInvoker : NSObject
- (id)initWithCommandClassRef:(Class)commdClassRef Context:(GDTCommandContext *)context;
- (void)executeCommand;
@end

NS_ASSUME_NONNULL_END
