//
//  BookmarksTableViewController.h
//  Food Restaurant App
//  Created by pavan krishna on 19/09/16.
//  Copyright © 2016 Test. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookmarksTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *optionsSegmentControl;

@property (weak, nonatomic) IBOutlet UILabel *selectedOptionLabel;

@property (weak, nonatomic) IBOutlet UISwitch *optionSwitch;

@property (weak, nonatomic) IBOutlet UILabel *selectedSwitchLabel;

@property (weak, nonatomic) IBOutlet UITextField *allergiesTextField;

@property (weak, nonatomic) IBOutlet UIButton *addButton;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end
