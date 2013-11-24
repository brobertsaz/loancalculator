//
//  ViewController.m
//  LoanCalculator
//
//  Created by Bob Roberts on 11/21/13.
//  Copyright (c) 2013 Bob Roberts. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize amountFinanced;
@synthesize interestRate;
@synthesize loanLength;

- (void)viewDidLoad
{
    self.title=@"Easy Loan Calculator";
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.amountFinanced.delegate = self;
    self.interestRate.delegate = self;
    self.loanLength.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculatePayment:(id)sender {
    
    float monthlyInterest = [self.interestRate.text floatValue] / 1200;
    float totalMonths = [self.loanLength.text intValue] * 12;
    float nthPower = 1 - powf((monthlyInterest + 1), (totalMonths * -1));
    
    float monthlyPaymentResult = [self.amountFinanced.text floatValue] * (monthlyInterest / nthPower);

    float totalPaymentResult = monthlyPaymentResult * totalMonths;
    
    float totalInterestResult = totalPaymentResult - [self.amountFinanced.text floatValue];
    

    
    _monthlyPayment.text = [NSString stringWithFormat:@"%.2f", monthlyPaymentResult];
    _totalInterest.text = [NSString stringWithFormat:@"%.2f", totalInterestResult];
    _totalPayment.text = [NSString stringWithFormat:@"%.2f", totalPaymentResult];
    
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return [textField resignFirstResponder];
}
@end
