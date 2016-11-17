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

@property (assign) NSInteger numbers;
@property (nonatomic) NSString *equalSign;
@property (nonatomic) NSString *clearSign;
@property (nonatomic) NSString *operators;

- (IBAction)numberButtonPressed:(UIButton *)sender;
- (IBAction)operatorButtonPressed:(UIButton *)sender;
- (IBAction)equalButtonPressed:(UIButton *)sender;
- (IBAction)clearButtonPressed:(UIButton *)sender;

float 

@end

@implementation CalculatorBrainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.numbers =2;
    self.sumLabel.text = [NSString stringWithFormat:@"%ld", (long)self.numbers];
    
    //NSString *aNumber = [NSString stringWithFormat:@"%ld", (long)self.numbers];
    //[_sumLabel setText:aNumber];
    

    //NSString *aString = [NSString stringWithFormat:@"Hello, %@!", @"World"];
    /*NSString *string = [NSString stringWithFormat:@"%d", myInt];
    [label setText:string]; */
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -ACTION HANDLERS

- (IBAction)numberButtonPressed:(UIButton *)sender;
{
    
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
