//
//  ViewController.m
//  ChainOfResponsibilityPattern
//
//  Created by nimo on 2019/6/23.
//  Copyright © 2019 com.qq.gdt. All rights reserved.
//

#import "ViewController.h"
#import "BaseHandler.h"
#import "DoubleClickHandler.h"
#import "SingleClickHandler.h"
#import "TouchDownHandler.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DoubleClickHandler *entryHandler = [[DoubleClickHandler alloc] init];
    SingleClickHandler *singleClickHandler = [[SingleClickHandler alloc] init];
    TouchDownHandler *touchDownHandler = [[TouchDownHandler alloc] init];
    entryHandler.nextHandler = singleClickHandler;
    singleClickHandler.nextHandler = touchDownHandler;
    
    HandlerParam *param1 = [[HandlerParam alloc] init];
    param1.clickType = @"doubleClick";
    
    HandlerParam *param2 = [[HandlerParam alloc] init];
    param2.clickType = @"singleClick";
    
    HandlerParam *param3 = [[HandlerParam alloc] init];
    param3.clickType = @"touchDown";
    
    HandlerParam *param4 = [[HandlerParam alloc] init];
    param4.clickType = @"UnkonwOperation";
    
    [entryHandler handleProcession:param1];
    [entryHandler handleProcession:param2];
    [entryHandler handleProcession:param3];
    [entryHandler handleProcession:param4];
    
    
    // Do any additional setup after loading the view.
}


@end
