//
//  DownloadsViewController.m
//  Food Restaurant App
//  Created by pavan krishna on 19/09/16.
//  Copyright © 2016 Test. All rights reserved.
//

#import "DownloadsViewController.h"

@interface DownloadsViewController ()
{
    NSArray *imagesArray;
}
@end

@implementation DownloadsViewController

int x = 0;

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)foodSliderValueChanged:(id)sender {
    self.foodImageView.image = [UIImage imageNamed:[imagesArray objectAtIndex:self.foodSlider.value]];
}

-(void)viewDidLoad{

    self.navigationItem.title = @"Photo Gallery";

    imagesArray = @[@"caadd.jpeg",@"chcikem.jpeg",@"cookie.jpeg",@"hbsdjjds.jpeg",@"dfhjjdf.jpeg",@"fish.jpeg",@"dsjbjds.jpeg",@"dsfdfd.jpeg",@"hdd.jpeg",@"dfhjjdf.jpeg"];
    self.foodImageView.image = [UIImage imageNamed:@"caadd.jpeg"];
}

-(IBAction)prevbuttonclicked
{
    x--;
    if (x < 0){
        x = 9;
    }
    self.foodSlider.value = x;
    self.foodImageView.image = [UIImage imageNamed:[imagesArray objectAtIndex:x]];
}

-(IBAction)nextbuttonclicked
{
    
    x++;
    if (x > 9){
        x = 0;
    }
    self.foodSlider.value = x;
    self.foodImageView.image = [UIImage imageNamed:[imagesArray objectAtIndex:x]];
}

@end
