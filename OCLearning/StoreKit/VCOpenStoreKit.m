//
//  VCOpenStoreKit.m
//  OCLearning
//
//  Created by Vincent on 2019/12/25.
//  Copyright © 2019 Vincent. All rights reserved.
//

#import "VCOpenStoreKit.h"
#import <StoreKit/StoreKit.h>

@interface VCOpenStoreKit () <SKStoreProductViewControllerDelegate> {
    SKStoreProductViewController *_storeController;
}

@end

@implementation VCOpenStoreKit

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _storeController = [[SKStoreProductViewController alloc] init];
    self.view.backgroundColor = [UIColor whiteColor];
    
    float screenWidth = UIScreen.mainScreen.bounds.size.width;
    int width = 250;
    int height = 50;
    float x = screenWidth/2-125;
    float y = 100;
    
    // create UIButton
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(x, y, width, height);
    button.backgroundColor = [UIColor orangeColor];
    [button setTitle:@"Play Store Kit or open Sotre" forState:UIControlStateNormal];
    // button event
    [button addTarget:self action:@selector(openStore) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [self preCacheStoreKit];
}

-(void)preCacheStoreKit {
    NSDictionary *productParameters = @{ SKStoreProductParameterITunesItemIdentifier : @"791532221" };
    _storeController.delegate = self;
    [_storeController loadProductWithParameters:productParameters completionBlock:^(BOOL result, NSError *error) {
        //Handle response
        NSLog(@"load store done");
    }];
}

-(void)openStore {
    NSLog(@"Open Store");
    [self presentViewController:_storeController animated:YES completion:^{
        NSLog(@"Did Open Store kit controller");
    }];
 }

#pragma mark SKStoreProductViewControllerDelegate

- (void)productViewControllerDidFinish:(SKStoreProductViewController *)viewController {
    NSLog(@"productViewControllerDidFinish");
    [viewController dismissViewControllerAnimated:YES completion:^{
        NSLog(@"You can find this is not fired as expected");
    }];
}

@end
 
