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


@property (weak, nonatomic) IBOutlet UILabel *answerLabel;



- (IBAction)numberButtonPressed:(UIButton *)sender;
- (IBAction)operatorButtonPressed:(UIButton *)sender;
- (IBAction)equalButtonPressed:(UIButton *)sender;
- (IBAction)clearButtonPressed:(UIButton *)sender;

@end

@implementation CalculatorBrainViewController

CalculatorBrain *calculatorBrain;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    calculatorBrain = [[CalculatorBrain alloc] init];
    calculatorBrain.operand1 = [NSMutableString string];
    calculatorBrain.operand2 = [NSMutableString string];
    
    [calculatorBrain clearWasSelected];
    
    //set the answer label as empty string to accept numbers
    self.answerLabel.text = calculatorBrain.myDisplay;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -ACTION HANDLERS

- (IBAction)numberButtonPressed:(UIButton *)sender;
{
    
    [calculatorBrain numberWasSelected:(sender.titleLabel.text)];
    self.answerLabel.text = calculatorBrain.myDisplay;
   
}

- (IBAction)operatorButtonPressed:(UIButton *)sender;
{
    [calculatorBrain operatorWasSelected:(sender.titleLabel.text)];
    self.answerLabel.text =calculatorBrain.myDisplay;
}

- (IBAction)equalButtonPressed:(UIButton *)sender;
{
    [calculatorBrain equalWasSelected:(sender.titleLabel.text)];
    self.answerLabel.text =calculatorBrain.myDisplay;
}

- (IBAction)clearButtonPressed:(UIButton *)sender;
{
    [calculatorBrain clearWasSelected];
    self.answerLabel.text =calculatorBrain.myDisplay;
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
