//
//  Person.m
//  Testing
//
//  Created by Liam Williams on 2016-11-30.
//  Copyright © 2016 Lighthouse. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype) initWithFirstName:(NSString *) firstName lastName:(NSString *) lastName {
  self = [super init];
  if (self) {
    self.firstName = firstName;
    self.lastName = lastName;
  }
  return self;
}

- (NSString *) fullName {
  return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

//- (NSInteger) age {
//  NSDateFormatter *df = [NSDateFormatter new];
//  [df setDateFormat:@"yyyy"];
//  NSInteger currentYear = [[df stringFromDate:[NSDate new]] integerValue];
//  return currentYear - self.birthYear;
//}

- (NSInteger) age {
  NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  NSDateComponents *components = [calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay
                                             fromDate:self.birthdate
                                               toDate:[NSDate new]
                                              options:0];
  return components.year;
}

- (bool) walk:(NSInteger) distance {
  if (distance < 0 || distance > 100) {
    return false;
  }
  // Walk
  return true;
}

- (void) walkDog: (NSInteger) distance {
  if (distance >= 0 && distance <= 90) {
    [self.dog walk];
  }
}



@end
