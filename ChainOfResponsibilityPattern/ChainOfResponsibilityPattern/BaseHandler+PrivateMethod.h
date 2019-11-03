//
//  BaseHandler+PrivateMethod.h
//  ChainOfResponsibilityPattern
//
//  Created by nimo on 2019/11/3.
//  Copyright © 2019 com.qq.gdt. All rights reserved.
//

#import "BaseHandler.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseHandler (PrivateMethod)
- (void)handleRequestProcession:(BaseHandlerRequest *)baseHandlerRequest;
- (BOOL)canHandleRequest:(BaseHandlerRequest *)baseHandlerRequest;
@end

NS_ASSUME_NONNULL_END
