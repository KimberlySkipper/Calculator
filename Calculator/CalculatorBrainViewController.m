//
//  CalculatorBrainViewController.m
//  Calculator
//
//  Created by Kimberly Skipper on 11/16/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "CalculatorBrainViewController.h"

@interface CalculatorBrainViewController () <SolvingSimpleMathEquationsDelegate>


@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

@property (assign) NSInteger numbers;
@property (nonatomic) NSString *equalSign;
@property (nonatomic) NSString *clearSign;
@property (nonatomic) NSString *operators;

- (IBAction)numberButtonPressed:(UIButton *)sender;
- (IBAction)operatorButtonPressed:(UIButton *)sender;
- (IBAction)equalButtonPressed:(UIButton *)sender;
- (IBAction)clearButtonPressed:(UIButton *)sender;


@end

@implementation CalculatorBrainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.answerLabel.text = @""; //set the answer label as empty string to accept numbers
    
    /*self.numbers =2;
    self.answerLabel.text = [NSString stringWithFormat:@"%ld", (long)self.numbers];
    
    NSString *aNumber = [NSString stringWithFormat:@"%ld", (long)self.numbers];
    [_answerLabel setText:aNumber];
    

    NSString *aString = [NSString stringWithFormat:@"Hello, %@!", @"World"];
    NSString *string = [NSString stringWithFormat:@"%d", myInt];
    [label setText:string];
    */
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -ACTION HANDLERS

- (IBAction)numberButtonPressed:(UIButton *)sender;
{
    
    int numberZero= 0;
    self.answerLabel.text = [NSString stringWithFormat:@"%ld", (long)numberZero];
    
    int numberOne= 1;
    self.answerLabel.text = [NSString stringWithFormat:@"%ld", (long)numberOne];
    
    int numberTwo= 2;
    self.answerLabel.text = [NSString stringWithFormat:@"%ld", (long)numberTwo];
    
    int numberThree= 3;
    self.answerLabel.text = [NSString stringWithFormat:@"%ld", (long)numberThree];
    
    int numberFour= 4;
    self.answerLabel.text = [NSString stringWithFormat:@"%ld", (long)numberFour];

    int numberFive= 5;
    self.answerLabel.text = [NSString stringWithFormat:@"%ld", (long)numberFive];
    
    int numberSix= 6;
    self.answerLabel.text = [NSString stringWithFormat:@"%ld", (long)numberSix];
    
    int numberSeven= 7;
    self.answerLabel.text = [NSString stringWithFormat:@"%ld", (long)numberSeven];
    
    int numberEight= 8;
    self.answerLabel.text = [NSString stringWithFormat:@"%ld", (long)numberEight];
    
    int numberNine= 9;
    self.answerLabel.text = [NSString stringWithFormat:@"%ld", (long)numberNine];


}

- (IBAction)operatorButtonPressed:(UIButton *)sender;
{

}

- (IBAction)equalButtonPressed:(UIButton *)sender;
{

}

- (IBAction)clearButtonPressed:(UIButton *)sender;
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
