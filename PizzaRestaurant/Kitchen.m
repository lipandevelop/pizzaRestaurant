//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"


@implementation Kitchen


- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings{
    if (self.delegate) {
        if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings] && [self.delegate kitchenShouldUpgradeOrder:self]) {
            Pizza *newPizza = [[Pizza alloc] initWithPizzaSize:large toppings:toppings];
            NSLog(@"Here is your upgraded Pizza!");
            return newPizza;
        }
        else if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
            if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                Pizza *newPizza = [[Pizza alloc] initWithPizzaSize:size toppings:toppings];
                NSLog(@"Here is your Pizza!");
                return newPizza;
            }
            
            else {
                NSLog(@"Sorry, we shouldn't make a Pizza for you.");
                return nil;
            }
        }
    }
    return ([Pizza new]);
    
}


@end
