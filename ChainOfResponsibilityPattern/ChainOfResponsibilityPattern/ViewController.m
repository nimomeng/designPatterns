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
    
    BaseHandlerRequest *param1 = [[BaseHandlerRequest alloc] init];
    param1.clickType = @"doubleClick";
    
    BaseHandlerRequest *param2 = [[BaseHandlerRequest alloc] init];
    param2.clickType = @"singleClick";
    
    BaseHandlerRequest *param3 = [[BaseHandlerRequest alloc] init];
    param3.clickType = @"touchDown";
    
    BaseHandlerRequest *param4 = [[BaseHandlerRequest alloc] init];
    param4.clickType = @"UnkonwOperation";
    
    [entryHandler handleRequest:param1];
    [entryHandler handleRequest:param2];
    [entryHandler handleRequest:param3];
    [entryHandler handleRequest:param4];
    
    
    // Do any additional setup after loading the view.
}


@end
