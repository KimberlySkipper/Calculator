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
    if (self.anOperator)
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
    self.anOperator =nil;
    self.myDisplay = @"";
}

-(void)equalWasSelected: (NSString *)equalSelected
{

}



@end
