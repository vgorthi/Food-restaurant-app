//
//  BookmarksTableViewController.m
//  Food Restaurant App
//  Created by pavan krishna on 19/09/16.
//  Copyright © 2016 Test. All rights reserved.
//

#import "BookmarksTableViewController.h"

@interface BookmarksTableViewController ()<UITextFieldDelegate>
{
    BOOL isSwitchOff;
    BOOL isResetOff;
}

@end

@implementation BookmarksTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Preferences";
    self.allergiesTextField.delegate = self;
    isSwitchOff = NO;
    isResetOff = NO;
    self.resultLabel.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segmentChoiceValueChanged:(id)sender {
    if (self.optionsSegmentControl.selectedSegmentIndex == 0) {
        self.selectedOptionLabel.text = @"You like Veg";
    }
    else if (self.optionsSegmentControl.selectedSegmentIndex == 1)
    {
        self.selectedOptionLabel.text = @"You like Meat";
    }
    else if (self.optionsSegmentControl.selectedSegmentIndex == 2)
    {
        self.selectedOptionLabel.text = @"You like Vegan";
    }
    else if (self.optionsSegmentControl.selectedSegmentIndex == 3)
    {
        self.selectedOptionLabel.text = @"You like Kosher";
    }
    else if (self.optionsSegmentControl.selectedSegmentIndex == 4)
    {
        self.selectedOptionLabel.text = @"You like Halal";
    }
}

- (IBAction)switchValueChanged:(id)sender {
    
    if (isSwitchOff == YES) {
        self.selectedSwitchLabel.text = @"Dont send me specials";
        isSwitchOff = NO;
    }else
    {
        self.selectedSwitchLabel.text = @"Send me specials";
        isSwitchOff = YES;
    }
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    NSLog(@"textFieldShouldEndEditing");
    textField.backgroundColor = [UIColor whiteColor];
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"textFieldDidEndEditing");
}

- (IBAction)addButtonPressed:(id)sender {
    
    if (isResetOff == NO) {
        self.allergiesTextField.hidden = YES;
        self.resultLabel.hidden = NO;
        self.resultLabel.text = self.allergiesTextField.text;
        self.addButton.titleLabel.text = @"Add";
        isResetOff = YES;
    }else
    {
        self.allergiesTextField.text = @"";
        self.allergiesTextField.hidden = NO;
        self.resultLabel.hidden = YES;
        self.resultLabel.text = @"";
        self.addButton.titleLabel.text = @"Reset";
        isResetOff = NO;
    }
}
@end
