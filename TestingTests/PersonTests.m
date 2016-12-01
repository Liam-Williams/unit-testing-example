//
//  PersonTests.m
//  PersonTests
//
//  Created by Liam Williams on 2016-11-30.
//  Copyright © 2016 Lighthouse. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "Person.h"
#import "Dog.h"

@interface PersonTests : XCTestCase

@property Person *person;

@end

@implementation PersonTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
  self.person = [[Person alloc] initWithFirstName:@"Liam" lastName:@"Williams"];
  NSDateFormatter *df = [NSDateFormatter new];
  df.dateFormat = @"yyyy/MM/dd";
  self.person.birthdate = [df dateFromString:@"1991/09/06"];
  self.person.dog = [Dog new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFullName {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  XCTAssert([[self.person fullName] isEqualToString:@"Liam Williams"]);
}

- (void)testAge {
  XCTAssert([self.person age] == 25);
}

- (void) testWalk {
  XCTAssertFalse([self.person walk:-1]);
  XCTAssertFalse([self.person walk:101]);
  XCTAssert([self.person walk:100]);
  XCTAssert([self.person walk:0]);
  XCTAssert([self.person walk:1]);
}

- (void) testWalkDog {
  id mockDog = OCMPartialMock(self.person.dog);
  
  OCMStub([mockDog walk]);
  
  [self.person walkDog:10];
  
  OCMVerify([mockDog walk]);
}

- (void) testNotWalkDog {
  id mockDog = OCMPartialMock(self.person.dog);
  
  //OCMStub([mockDog walk]);
  OCMReject([mockDog walk]);
  
  
  //lower bound
  [self.person walkDog:-1];
  
  // upper bound
  [self.person walkDog:91];
  
  
}

//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end
