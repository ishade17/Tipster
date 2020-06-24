//
//  ViewController.m
//  Tipster
//
//  Created by Isaac Schaider on 6/23/20.
//  Copyright © 2020 Isaac Schaider. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UILabel *twoSplitLabel;
@property (weak, nonatomic) IBOutlet UILabel *threeSplitLabel;
@property (weak, nonatomic) IBOutlet UILabel *fourSplitLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}

- (IBAction)onEdit:(id)sender {
    double bill = [self.billField.text doubleValue];
    NSArray *percentages = @[@(0.15), @(0.2), @(0.22)];
    
    double tipPercentage = [percentages[self.tipControl.selectedSegmentIndex] doubleValue];
    double tip = tipPercentage * bill;
    double total = bill + tip;
    double twoSplitTotal = total / 2;
    double threeSplitTotal = total / 3;
    double fourSplitTotal = total / 4;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
    self.twoSplitLabel.text = [NSString stringWithFormat:@"$%.2f", twoSplitTotal];
    self.threeSplitLabel.text = [NSString stringWithFormat:@"$%.2f", threeSplitTotal];
    self.fourSplitLabel.text = [NSString stringWithFormat:@"$%.2f", fourSplitTotal];
    
}

@end
