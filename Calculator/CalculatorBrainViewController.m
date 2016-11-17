//
//  CalculatorBrainViewController.m
//  Calculator
//
//  Created by Kimberly Skipper on 11/16/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "CalculatorBrainViewController.h"

@interface CalculatorBrainViewController ()

@property (weak, nonatomic) IBOutlet UILabel *sumLabel;
@property (weak, nonatomic) IBOutlet UIButton *zeroButton;
@property (weak, nonatomic) IBOutlet UIButton *oneButton;
@property (weak, nonatomic) IBOutlet UIButton *twoButton;
@property (weak, nonatomic) IBOutlet UIButton *threeButton;
@property (weak, nonatomic) IBOutlet UIButton *fourButton;
@property (weak, nonatomic) IBOutlet UIButton *fiveButton;
@property (weak, nonatomic) IBOutlet UIButton *sixButton;
@property (weak, nonatomic) IBOutlet UIButton *sevenButton;
@property (weak, nonatomic) IBOutlet UIButton *eightButton;
@property (weak, nonatomic) IBOutlet UIButton *nineButton;
@property (weak, nonatomic) IBOutlet UIButton *decimalButton;
@property (weak, nonatomic) IBOutlet UIButton *clearButton;
@property (weak, nonatomic) IBOutlet UIButton *multiplyButton;
@property (weak, nonatomic) IBOutlet UIButton *divideButton;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *minusButton;
@property (weak, nonatomic) IBOutlet UIButton *signButton;
@property (weak, nonatomic) IBOutlet UIButton *moduloButton;
@property (weak, nonatomic) IBOutlet UIButton *equalsButton;

@property (assign) int number1;
@property (assign) int number2;
@property (assign) int number3;
@property (assign) int number4;
@property (nonatomic) int number5;
@property (nonatomic) int number6;
@property (nonatomic) int number7;
@property (nonatomic) int number8;
@property (nonatomic) int number9;
@property (nonatomic) NSString *equalSign;
@property (nonatomic) NSString *clearValue;
@property (nonatomic) int number0;
@property (nonatomic) int decimalPoint;
@property (nonatomic) NSString *plusSign;
@property (nonatomic) NSString *minusSign;
@property (nonatomic) NSString *multiplicationSign;
@property (nonatomic) NSString *divisionSign;


@end

@implementation CalculatorBrainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.number1 = 1;
    self.sumLabel.text = [NSString stringWithFormat:@"%d", self.number1];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -ACTION HANDLERS

- (IBAction)number:(UIButton *)sender;
{

}

- (IBAction)operator:(UIButton *)sender;
{

}

- (IBAction)equal:(UIButton *)sender;
{

}

- (IBAction)clear:(UIButton *)sender;
{

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
