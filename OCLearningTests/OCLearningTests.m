//
//  OCLearningTests.m
//  OCLearningTests
//
//  Created by Vincent on 2019/2/15.
//  Copyright © 2019 Vincent. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface OCLearningTests : XCTestCase

@end

@implementation OCLearningTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    
    NSURL* url = [NSURL URLWithString:@"https://itunes.apple.com/fr/app/pokerstars-poker-en-ligne/id509469724?ign-mpt=uo%3D5"];
    NSLog(@"____sURL IS : %@",url);
    
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
        NSLog(@"Unit Test");
    }];
}

@end
