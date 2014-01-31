//
//  main.m
//  Quiz3
//
//  Created by Moser, Wesley on 1/31/14.
//  Copyright (c) 2014 Moser, Wesley. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"1: %@", @"Wes");        // 1.
        
        NSString *firstName = @"Wes";   // 2.
        NSLog(@"3: %@", firstName);     // 3.
        
        NSNumber *value = @200;         // 4.
        NSLog(@"5: %@", value);        // 5.
        
        // 6.
        NSMutableArray *fruits = [[NSMutableArray alloc] initWithArray:@[@"Apple", @"Orange", @"Mango"]];
        
        // 7.
        for (NSString *f in fruits)
        {
            NSLog(@"7: %@", f);
        }
        
        // 8.
        NSDictionary *fruitSweetness = [[NSDictionary alloc] initWithObjects:@[@5, @10, @2]
                                                                     forKeys:fruits];
        
        // 9.
        NSLog(@"9: Sweetness of Apple: %ld", [[fruitSweetness objectForKey:@"Apple"] integerValue]);
        
        // 10.
        NSUInteger myUInteger = 123;
        NSLog(@"10: %lu", myUInteger);
        
        // 11.
        NSNumber *one = @5;
        NSNumber *two = @3;
        NSLog(@"11: %lu", [one integerValue] * [two integerValue]);
        
        // 12.
        NSString *lastName = @"Moser";
        
        // 13.
        NSString *fullName = [NSString stringWithFormat:@"%@ %@", firstName, lastName];
        
        // 14.
        NSLog(@"14: %@", fullName);
        
        // 15.
        for (NSString *f in [fruitSweetness allKeys])
        {
            long sweetnessVal = [[fruitSweetness objectForKey:f] integerValue];
            if (sweetnessVal < 4)
                NSLog(@"15. %@: Not Sweet", f);
            else if (sweetnessVal < 7)
                NSLog(@"15. %@: Somewhat Sweet", f);
            else
                NSLog(@"15. %@: Sweet", f);
        }
        
        // 16.
        enum DayOfWeek
        {
            MON = 0,
            TUE = 1,
            WED = 2,
            THU = 3,
            FRI = 4,
            SAT = 5,
            SUN = 6
        };
        
        // 17.
        enum DayOfWeek curentDay = FRI;
        
        // 18.
        void (^myFirstBlock)(void) = ^void() { NSLog(@"18. Hello World"); };
        myFirstBlock();
        
        // 19.
        void (^mySecondBlock)(NSString *) = ^void(NSString *str) { NSLog(@"19. %@", str); };
        mySecondBlock(@"Hello");
        mySecondBlock(@"World");
    }
    return 0;
}

