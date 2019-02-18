//
//  GDTCommandInvoker.m
//  GDTMobSDK
//
//  Created by nimomeng on 2019/2/12.
//  Copyright © 2019 Tencent. All rights reserved.
//

#import "GDTCommandInvoker.h"

@interface GDTCommandInvoker ()
@property (nonatomic) Class commndClassRef;
@property (nonatomic, strong) GDTCommandContext *context;
@end

@implementation GDTCommandInvoker
- (id)initWithCommandClassRef:(Class)commdClassRef Context:(nonnull GDTCommandContext *)context
{
    if (self = [super init]) {
        self.commndClassRef = commdClassRef;
        self.context = context;
    }
    return self;
}

- (void)executeCommand
{
    [[[self.commndClassRef alloc] init] execute:self.context];
}
@end
