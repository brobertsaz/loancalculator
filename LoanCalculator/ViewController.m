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

- (void)viewDidLoad
{
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
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return [textField resignFirstResponder];
}
@end
