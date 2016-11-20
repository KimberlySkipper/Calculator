//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Kimberly Skipper on 11/19/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain




-(void)numberWasSelected:(NSString *)numberSelected
{
    if (self.anOperator)  // if condition, must be YES or NO.
    {
        [self.operand2 appendString: numberSelected];
        self.myDisplay = self.operand2;
    }
    else
    {
        [self.operand1 appendString:numberSelected];
        self.myDisplay = self. operand1;
    }
}

-(void)operatorWasSelected:(NSString *)operatorSelected
{
    if(!self.anOperator)
    {
        self.anOperator = operatorSelected;
        self.myDisplay = self.operand1;
    }
}

-(void)clearWasSelected
{
//    empty out operator and operand1 and operand2;
    [self.operand1 setString:@""];
    [self.operand2 setString:@""];
    self.anOperator = nil; // nil is the same as fale for a boolean statement.
    self.myDisplay = @"";
}

-(void)equalWasSelected: (NSString *)equalSelected
{
    if ([self.anOperator isEqualToString:@"+"])
    {
        float operandNumber1 = ([self.operand1 floatValue]);
        float operandNumber2 = ([self.operand2 floatValue]);
        float results = operandNumber1 + operandNumber2;
        self.myDisplay = [NSString stringWithFormat:@"%.2f", results];

    }
    
    else if ([self.anOperator isEqualToString:@"-"])
    {
         float operandNumber1 = ([self.operand1 floatValue]);
         float operandNumber2 = ([self.operand2 floatValue]);
         float results = operandNumber1 - operandNumber2;
         self. myDisplay = [NSString stringWithFormat:@"%.2f", results];
    }
    
    else if ([self.anOperator isEqualToString:@"x"])
    {
         float operandNumber1 = ([self.operand1 floatValue]);
         float operandNumber2 = ([self.operand2 floatValue]);
         float results = operandNumber1 * operandNumber2;
         self.myDisplay = [NSString stringWithFormat:@"%.2f", results];
     }
     
     else
     {
         float operandNumber1 = ([self.operand1 floatValue]);
         float operandNumber2 = ([self.operand2 floatValue]);
         float results = operandNumber1 / operandNumber2;
         self.myDisplay = [NSString stringWithFormat:@"%.4f", results];
     }
    
    //CGFloat moduloResult = (float)((int)valueB % (int)valueA);
    
}


@end
