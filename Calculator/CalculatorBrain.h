//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Kimberly Skipper on 11/19/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

@property (nonatomic) NSString *anOperator;
@property (nonatomic) NSMutableString *operand1;
@property (nonatomic) NSMutableString *operand2;
@property (nonatomic) NSString *myDisplay;

-(void)numberWasSelected:(NSString *)numberSelected;
-(void)operatorWasSelected:(NSString *)operatorSelected;
-(void)clearWasSelected;
-(void)equalWasSelected:(NSString *)equalSelected;

@end
