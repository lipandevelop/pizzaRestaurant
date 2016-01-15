//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"

int main(int argc, const char * argv[])

{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings (separate every topping by a comma(,):");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSArray *components = [inputString componentsSeparatedByString:@" "];
            NSString *size = [components objectAtIndex:0];
            
            NSLog(@"You've ordered %@", inputString);
            NSString *parsed = [[NSString alloc] init];
            int i = 0;
            for (NSString *p in components) {
                if (i !=0 ) {
                parsed = [parsed stringByAppendingString:p];
                }
                i++;
                NSLog(@"p = %@", p);

            }
            NSLog(@" parsed = %@", parsed);
            NSArray *toppings = [parsed componentsSeparatedByString:@","];
            
            NSLog(@"Size: %@", size);
            NSLog(@"Toppings Ordered: %@", toppings);
            
            PizzaSize pizzaSize = [Pizza convertStringToEnum:size];
            
            Pizza *newOrder = [restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppings];
            
            NSLog(@"Here is your Pizza: %@", newOrder);
//            // Take the first word of the command as the size, and the rest as the toppings
//            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
//            
//            // And then send some message to the kitchen...
        }

    }
    return 0;
}

