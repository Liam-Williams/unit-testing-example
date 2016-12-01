//
//  Person.h
//  Testing
//
//  Created by Liam Williams on 2016-11-30.
//  Copyright © 2016 Lighthouse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

@interface Person : NSObject

@property NSString *firstName;
@property NSString *lastName;
@property NSDate *birthdate;
@property Dog *dog;

- (instancetype) initWithFirstName:(NSString *) firstName lastName:(NSString *) lastName;

- (NSString *) fullName;
- (NSInteger) age;
- (bool) walk:(NSInteger) distance;
- (void) walkDog: (NSInteger) distance;

@end
