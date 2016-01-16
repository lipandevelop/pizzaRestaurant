//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Li Pan on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PizzaSize) {
    small,
    medium,
    large,
};

@interface Pizza : NSObject
@property (nonatomic, assign)PizzaSize *size;

-(instancetype)initWithPizzaSize: (PizzaSize)pizzaSize toppings:(NSArray *)toppings;

//-(NSString *)sizeOfPizza: (PizzaSize)pizzaSize;
//-(NSArray *)toppings;
+(PizzaSize)convertStringToEnum: (NSString *)pizzaSizeString;

@end
