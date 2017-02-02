//
//  WebsiteViewController.m
//  Food Restaurant App
//  Created by pavan krishna on 19/09/16.
//  Copyright © 2016 Test. All rights reserved.
//

#import "WebsiteViewController.h"

@interface WebsiteViewController ()

@end

@implementation WebsiteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.yelpWebsiteView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.yelp.com/biz/royal-taj-columbia-2"]]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
