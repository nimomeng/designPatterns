//
//  CommandProtocol.h
//  commandPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "Receiver.h"
@class CommandContext;

#ifndef CommandProtocol_h
#define CommandProtocol_h
@protocol CommandProtocol <NSObject>

@required

- (id)initWithReceiver:(Receiver *)receiver CommandContext:(CommandContext *)cmdContext;
- (void)execute;

@end

#endif /* CommandProtocol_h */
