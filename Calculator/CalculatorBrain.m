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
    //BOOL op2IsDecimal = [self.operand2 containsString:@"."];
    if (self.anOperator)  // if condition, must be YES or NO.
    {
        [self.operand2 appendString: numberSelected];
        self.myDisplay = self.operand2;
    }
    else
    {
        if ([numberSelected isEqualToString:@"."])
        {
        
            if (![self.operand1 containsString: @"."])
            {
            
                [self.operand1 appendString:numberSelected];
            }
            else
            {
                // do nothing
            }
        }

        else
        {
           [self.operand1 appendString:numberSelected];
        }
            
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
    //to to set a NSMutableString to empty string
    [self.operand1 setString:@""];
    [self.operand2 setString:@""];
    // nil is the same as false for a boolean statement.
    self.anOperator = nil;
    self.myDisplay = @"";
}

//I don't need an argument for this method because no equal sign is displayed.
-(void)equalWasSelected
{
    //compare string values isEqualToString
    if ([self.anOperator isEqualToString:@"+"])
    {
        //[self.operand1 floatValue] how to get a float value from the text field
        float operandNumber1 = ([self.operand1 floatValue]);
        float operandNumber2 = ([self.operand2 floatValue]);
        float results = operandNumber1 + operandNumber2;
        //changing float into a string to phantom display
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
         if (operandNumber2 == 0)
         {
             self.myDisplay = @"ERROR";
         }
         else
         {
             float results = operandNumber1 / operandNumber2;
             self.myDisplay = [NSString stringWithFormat:@"%.4f", results];
         }
     }
    
    //CGFloat moduloResult = (float)((int)valueB % (int)valueA);
    
}


@end
