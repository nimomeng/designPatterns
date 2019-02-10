//
//  MediatorProtocol.h
//  mediatorPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#ifndef MediatorProtocol_h
#define MediatorProtocol_h

@class Colleague;

@protocol MediatorProtocol <NSObject>

- (void)send:(NSString *)message colleague:(Colleague *)colleague;

@end

#endif /* MediatorProtocol_h */
