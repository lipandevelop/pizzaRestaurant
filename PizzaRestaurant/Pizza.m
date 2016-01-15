//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Li Pan on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@interface Pizza ()

@property(nonatomic, assign)PizzaSize *pizzaSize;
@property(nonatomic, strong)NSArray *toppings;

@end

@implementation Pizza

-(instancetype)initWithPizzaSize:(PizzaSize)pizzaSize toppings:(NSArray *)toppings {
    self = [super init];
    if (self) {
        _pizzaSize = pizzaSize;
        _toppings = toppings;
    }
    return self;
}

//-(PizzaSize)sizeofPizza {
//    return self.pizzaSize;
//}

-(NSArray *)pizzaTopping {
    return self.toppings;
}

+(PizzaSize)convertStringToEnum: (NSString *)pizzaSizeString {
    
    if ([[pizzaSizeString lowercaseString] isEqualToString:@"small" ]) {
        return small;
    }
    if ([[pizzaSizeString lowercaseString] isEqualToString:@"medium"]) {
        return medium;
    }
    if ([[pizzaSizeString lowercaseString] isEqualToString:@"large" ]) {
        return large;
    }
    else {
        NSLog(@"Do not recognize size of the pizza");
    }
    return medium;
}


@end
