//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Li Pan on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PizzaSize) {
    small,
    medium,
    large,
};

@interface Pizza : NSObject

-(instancetype)initWithPizzaSize: (PizzaSize)pizzaSize toppings:(NSArray *)toppings;

//-(PizzaSize)sizeOfPizza;
-(NSArray *)toppings;
+(PizzaSize)convertStringToEnum: (NSString *)pizzaSizeString;

@end
