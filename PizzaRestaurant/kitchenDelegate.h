//
//  kitchenDelegate.h
//  PizzaRestaurant
//
//  Created by Li Pan on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@class Kitchen;

@protocol KitchenDelegate <NSObject>
-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;


@optional
-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end
