//
//  ViewController.m
//  mediatorPattern
//
//  Created by nimo on 2019/2/10.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteMediator.h"
#import "ConcreteColleague1.h"
#import "ConcreteColleague2.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ConcreteMediator *concreteMediator = [[ConcreteMediator alloc] init];
    ConcreteColleague1 *concreteColleague1 = [[ConcreteColleague1 alloc] initWithMediator:concreteMediator];
    ConcreteColleague2 *concreteColleague2 = [[ConcreteColleague2 alloc] initWithMediator:concreteMediator];
    
    [concreteMediator setColleauge1:concreteColleague1];
    [concreteMediator setColleauge2:concreteColleague2];
    
    [concreteColleague1 send:@"吃了吗？"];
    [concreteColleague2 send:@"没呢，你请么？"];
    
}


@end
