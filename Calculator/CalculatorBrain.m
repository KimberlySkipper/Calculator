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
    }
    else
    {
        [self.operand1 appendString:numberSelected];
    }
}

-(void)operatorWasSelected:(NSString *)operatorSelected
{
    if(!self.anOperator)
    {
        self.anOperator = operatorSelected;
    }
}

-(void)clearWasSelected
{
//    empty out operator and _operand1 and _operand2;
    [self.operand1 setString:@""];
    [self.operand2 setString:@""];
    self.anOperator =nil;
}


-(void)getDisplay
{
    
}


@end
