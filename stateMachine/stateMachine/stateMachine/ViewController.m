//
//  ViewController.m
//  stateMachine
//
//  Created by nimo on 2019/3/26.
//  Copyright © 2019 nimo. All rights reserved.
//

#import "ViewController.h"
#import <GameKit/GameKit.h>
#import "AddState.h"
#import "MinusState.h"
#import "ShowResultState.h"
/*
 DispenserState: GKState
 */
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberA;
@property (weak, nonatomic) IBOutlet UITextField *numberB;
@property (weak, nonatomic) IBOutlet UILabel *caculateResult;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (nonatomic, strong) GKStateMachine *sm;
@property (nonatomic, strong) AddState *addState;
@property (nonatomic, strong) MinusState *minuysState;
@property (nonatomic, strong) ShowResultState *showResultState;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.numberA addTarget:self action:@selector(textField1TextChangeA:) forControlEvents:UIControlEventEditingChanged];
    [self.numberB addTarget:self action:@selector(textField1TextChangeB:) forControlEvents:UIControlEventEditingChanged];

    self.addState = [[AddState alloc] init];
    self.minuysState = [[MinusState alloc] init];
    self.showResultState = [[ShowResultState alloc] init];
    self.showResultState.resultLabel = self.caculateResult;
    self.sm = [[GKStateMachine alloc] initWithStates:@[self.addState,self.minuysState,self.showResultState]];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)textField1TextChangeA:(id)sender {
    self.addState.numA = [self.numberA.text intValue];
    self.minuysState.numA = [self.numberA.text intValue];

}

- (void)textField1TextChangeB:(id)sender {
    self.addState.numB = [self.numberB.text intValue];
    self.minuysState.numB = [self.numberB.text intValue];
}

- (IBAction)editEndA:(id)sender {
}

- (IBAction)editEndB:(id)sender {
}

- (IBAction)addAction:(id)sender {
    [self.sm enterState:[AddState class]];
    NSLog(@"");
}
- (IBAction)minusAction:(id)sender {
    [self.sm enterState:[MinusState class]];
    NSLog(@"");
}


@end
