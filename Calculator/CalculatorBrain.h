//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Kimberly Skipper on 11/19/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

//@property (assign) NSInteger number;
//@property (nonatomic) NSString *equalSign;
//@property (nonatomic) NSString *clearSign;
@property (nonatomic) NSString *anOperator;
@property (nonatomic) NSMutableString *operand1;
@property (nonatomic) NSMutableString *operand2;

-(void)numberWasSelected:(NSString*)numberSelected;

@end
