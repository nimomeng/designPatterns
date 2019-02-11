//
//  ViewController.m
//  statePattern
//
//  Created by nimo on 2019/2/11.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "ViewController.h"
#import "designPattern/Context.h"
#import "ConcreteStateA.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Context *context = [[Context alloc] initWithState:[[ConcreteStateA alloc] init]];
    [context request];
    [context request];
    [context request];
    [context request];
    
}


@end
