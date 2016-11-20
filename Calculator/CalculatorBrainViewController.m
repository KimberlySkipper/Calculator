//
//  CalculatorBrainViewController.m
//  Calculator
//
//  Created by Kimberly Skipper on 11/16/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "CalculatorBrainViewController.h"
#import "CalculatorBrain.h"


@interface CalculatorBrainViewController () <SolvingSimpleMathEquationsDelegate>

@property (strong, nonatomic) CalculatorBrain *calculatorBrain;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;



- (IBAction)numberButtonPressed:(UIButton *)sender;
- (IBAction)operatorButtonPressed:(UIButton *)sender;
- (IBAction)equalButtonPressed:(UIButton *)sender;
- (IBAction)clearButtonPressed:(UIButton *)sender;


@end

@implementation CalculatorBrainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.calculatorBrain = [[CalculatorBrain alloc] init];
    self.calculatorBrain.operand1 = [NSMutableString string];
    self.calculatorBrain.operand2 = [NSMutableString string];
    
    [self. calculatorBrain clearWasSelected];
   
    self.answerLabel.text = self.calculatorBrain.myDisplay;//set the answer label as empty string to accept numbers
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -ACTION HANDLERS

- (IBAction)numberButtonPressed:(UIButton *)sender;
{
    
    [self.calculatorBrain numberWasSelected:(sender.titleLabel.text)];
    self.answerLabel.text = self.calculatorBrain.myDisplay;
   
}

- (IBAction)operatorButtonPressed:(UIButton *)sender;
{
    [self.calculatorBrain operatorWasSelected:(sender.titleLabel.text)];
    self.answerLabel.text =self.calculatorBrain.myDisplay;
}

- (IBAction)equalButtonPressed:(UIButton *)sender;
{
    [self.calculatorBrain equalWasSelected:(sender.titleLabel.text)];
    self.answerLabel.text =self.calculatorBrain.myDisplay;
}

- (IBAction)clearButtonPressed:(UIButton *)sender;
{
    [self.calculatorBrain clearWasSelected];
    self.answerLabel.text =self.calculatorBrain.myDisplay;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
