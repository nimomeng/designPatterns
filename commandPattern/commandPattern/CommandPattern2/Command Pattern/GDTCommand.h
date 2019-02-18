//
//  GDTCommand.h
//  GDTMobSDK
//
//  Created by nimomeng on 2019/2/12.
//  Copyright © 2019 Tencent. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GDTCommandContext : NSObject
@property (nonatomic, strong) id body;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *type;
@end

@protocol GDTCommandProtocol <NSObject>

- (void)execute:(GDTCommandContext *)context;

@end

@interface GDTCommand : NSObject<GDTCommandProtocol>
@end

NS_ASSUME_NONNULL_END
