//
//  GoodManager.h
//  PizzaRestaurant
//
//  Created by Li Pan on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "kitchenDelegate.h"

@interface GoodManager : NSObject <KitchenDelegate>
@property (nonatomic, strong)NSString *name;

@end
