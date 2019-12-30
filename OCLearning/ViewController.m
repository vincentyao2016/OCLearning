//
//  ViewController.m
//  OCLearning
//
//  Created by Vincent on 2019/2/15.
//  Copyright © 2019 Vincent. All rights reserved.
//

#import "ViewController.h"
#import "VCOpenStoreKit.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createView];
}

- (void)createView {
    self.view.backgroundColor = [UIColor whiteColor];
    
    float screenWidth = UIScreen.mainScreen.bounds.size.width;
    int width = 250;
    int height = 50;
    float x = screenWidth/2-125;
    float y = 100;
    
    // create UIButton
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(x, y + 100, width, height);
    button.backgroundColor = [UIColor orangeColor];
    [button setTitle:@"Go to a new View Controller" forState:UIControlStateNormal];
    [button setTitle:@"Go to a new View Controller HightLighted" forState:UIControlStateHighlighted];
    // button event
    [button addTarget:self action:@selector(clickEvent) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    // create UILabel
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(x, y + 250, width, height)];
    label.text = @"Below is a view";
    [self.view addSubview:label];
    
    // Create UIView
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(x, y + 300, width, height)];
    view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view];
}

// viewcontroller touch event
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Touch screen event");
}

- (void)clickEvent {
    // Default none-full-screen open on iOS 13
    VCOpenStoreKit *vc = [[VCOpenStoreKit alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
