//
//  Lec5CalculatorAppDelegate.h
//  Lec5Calculator
//
//  Created by Daniel Lin on 2/26/11.
//  Copyright 2011 Fliemaker. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Lec5CalculatorViewController;

@interface Lec5CalculatorAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Lec5CalculatorViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Lec5CalculatorViewController *viewController;

@end

