//
//  ViewController.h
//  LoanCalculator
//
//  Created by Bob Roberts on 11/21/13.
//  Copyright (c) 2013 Bob Roberts. All rights reserved.
//

#import <UIKit/UIKit.h>

float amountFinanced;
float interestRate;
int loanLength;


@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *amountFinanced;
@property (weak, nonatomic) IBOutlet UITextField *interestRate;
@property (weak, nonatomic) IBOutlet UITextField *loanLength;

@property (weak, nonatomic) IBOutlet UILabel *monthlyPayment;
@property (weak, nonatomic) IBOutlet UILabel *totalInterest;
@property (weak, nonatomic) IBOutlet UILabel *totalPayment;

- (IBAction)calculatePayment:(id)sender;

@end
