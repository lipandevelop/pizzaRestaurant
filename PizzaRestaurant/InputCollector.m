//
//  InputCollector.m
//  PizzaRestaurant
//
//  Created by Li Pan on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputPrompt:(NSString *)prompt {
    NSLog(@"%@",prompt);
    char inputChar[100];
    
    fgets(inputChar, 100, stdin);
    NSString *input = [NSString stringWithUTF8String:inputChar];
    
    return input;
}


@end
