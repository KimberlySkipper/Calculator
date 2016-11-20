//
//  CalculatorBrainViewController.h
//  Calculator
//
//  Created by Kimberly Skipper on 11/16/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SolvingSimpleMathEquationsDelegate //declaring a delegate

-(IBAction)numberButtonPressed:(UIButton *)sender;//adding a method to display numbers selected for equation.
-(IBAction)operatorButtonPressed:(UIButton *)sender;
-(IBAction)clearButtonPressed:(UIButton *)sender;
-(IBAction)equalButtonPressed:(UIButton *)sender;

@end

@interface CalculatorBrainViewController : UIViewController


@end
