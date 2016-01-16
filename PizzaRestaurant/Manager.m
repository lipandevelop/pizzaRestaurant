//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Li Pan on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"
#import "Kitchen.h"

@implementation Manager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    for (NSString *archovies in toppings) {
        if ([[archovies lowercaseString] isEqualToString: @"archovies"] || [[archovies lowercaseString] isEqualToString: @"archovie"]) {
            return NO;
        }
        else return YES;
    }
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
//    if (arc4random_uniform(3) == 0) {
//        return NO;
//    }
//    else return YES;
    return NO;
}
@end
