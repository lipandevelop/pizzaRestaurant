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
#import "Manager.h"
#import "GoodManager.h"
#import "InputCollector.h"


int main(int argc, const char * argv[])

{

    @autoreleasepool {
        
        InputCollector *inputCollector = [InputCollector new];
        NSString *userSelectedManager = [inputCollector inputPrompt:@"Ask for a manager: No One//George//John//Random \n>"];
        Kitchen *kitchen = [Kitchen new];
        Manager *badManager = [Manager new];
        GoodManager *goodManager = [GoodManager new];
        badManager.name = @"George";
        goodManager.name = @"John";
        id delegatedManager;
        
        if ([[userSelectedManager lowercaseString] isEqualToString:@"no one"]) {
        }
        
        else if ([[userSelectedManager lowercaseString] isEqualToString:@"john"]) {
            delegatedManager = goodManager;
        }
        else if ([[userSelectedManager lowercaseString] isEqualToString:@"George"]) {
            delegatedManager = badManager;
        }
        else if ([[userSelectedManager lowercaseString] isEqualToString:@"random"]) {
            
            id delegatedManager;
            if (arc4random_uniform(2)==0){
                delegatedManager = badManager;
            }
            else {
                delegatedManager = goodManager;
            }
            
            kitchen.delegate = delegatedManager;
        }
        
        NSLog(@"Your Manager Today is going to be %@", goodManager.name);
        NSLog(@"Please pick your pizza size and toppings:");

        while (TRUE) {
            // Loop forever
            
            //User input
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            
            
            //Parse
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSMutableArray *components = [[inputString componentsSeparatedByString:@" "] mutableCopy];
            NSString *size = components[0];
            
            [Pizza convertStringToEnum:size];
            
             [components removeObjectAtIndex:0];
            
            NSLog(@"You've ordered %@", inputString);
            NSString *parsed = [[NSString alloc] init];
            for (NSString *s in components) {
                //NSLog(@"s = %@", s);
                parsed = [[parsed stringByAppendingString:s] stringByAppendingString:@" "] ;
            }
            
            parsed = [parsed stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

            //NSLog(@"parsed = %@", parsed);
            
            
            //Parsed
            NSArray *toppings = [parsed componentsSeparatedByString:@","];
            
            NSLog(@"Size: %@", size);
            NSLog(@"Toppings Ordered: %@", toppings);
            
            PizzaSize pizzaSize = [Pizza convertStringToEnum:size];
            
            Pizza *newOrder = [kitchen makePizzaWithSize:pizzaSize toppings:toppings];
            
            NSLog(@"%@", newOrder);
        }

    }
    return 0;
}

