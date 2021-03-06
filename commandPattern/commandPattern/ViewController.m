//
//  ViewController.m
//  commandPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "ViewController.h"
#import "CommandPattern/Command.h"
#import "CommandPattern/Receiver.h"
#import "CommandPattern/Invoker.h"
#import "ConcreteCommand.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Receiver *receiver = [[Receiver alloc] init];
    ConcreteCommand *cCMD = [[ConcreteCommand alloc] init];
    [cCMD setReceiver:receiver];
    CommandContext *context = [[CommandContext alloc] init];
    context.name = @"context";
    [cCMD setCommandContext:context];
    Invoker *invoker = [[Invoker alloc] init];
    [invoker setCommand:cCMD];
    [invoker executeCommand];
}


@end
