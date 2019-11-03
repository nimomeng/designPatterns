//
//  BaseHandler.h
//  ChainOfResponsibilityPattern
//
//  Created by nimo on 2019/6/23.
//  Copyright © 2019 com.qq.gdt. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseHandlerRequest : NSObject
@property (nonatomic, strong) NSString *clickType;
@end

@interface BaseHandler : NSObject
@property (nonatomic, strong) BaseHandler *nextHandler;
//- (void)handleRequestProcession:(BaseHandlerRequest *)baseHandlerRequest;
//- (BOOL)canHandleRequest:(BaseHandlerRequest *)baseHandlerRequest;
- (void)handleRequest:(BaseHandlerRequest *)baseHandlerRequest;

@end

NS_ASSUME_NONNULL_END
