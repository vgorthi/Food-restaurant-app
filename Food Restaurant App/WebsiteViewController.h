//
//  WebsiteViewController.h
//  Food Restaurant App
//  Created by pavan krishna on 19/09/16.
//  Copyright © 2016 Test. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebsiteViewController : UIViewController

@property(nonatomic, strong) NSString *websiteUrl;

@property (weak, nonatomic) IBOutlet UIWebView *yelpWebsiteView;
@end
