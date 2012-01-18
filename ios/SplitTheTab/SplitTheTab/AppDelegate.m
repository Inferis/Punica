//
//  AppDelegate.m
//  SplitTheTab
//
//  Created by Tom Adriaenssen on 18/01/12.
//  Copyright (c) 2012 Adriaenssen BVBA. All rights reserved.
//

#import "AppDelegate.h"
#import "CentralBillPhoneController.h"
#import "BillListPhoneController.h"
#import "IIViewDeckController.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    if (IsIPad()) {
    }
    else {
       
        // create the left navigation controller with the bill list
        BillListPhoneController* billListController = [[BillListPhoneController alloc] initWithNibName:@"BillListPhoneView" bundle:nil];
        UINavigationController* listNavigationController = [[UINavigationController alloc] initWithRootViewController:billListController];
        listNavigationController.navigationBar.tintColor = [UIColor colorWithWhite:0.200 alpha:1.000];
        
        // create the central bill controller in a viewdeck
        CentralBillPhoneController* centralBillController = [[CentralBillPhoneController alloc] initWithNibName:@"CentralBillPhoneView" bundle:nil];      
        IIViewDeckController* deckController = [[IIViewDeckController alloc] initWithCenterViewController:centralBillController leftViewController:listNavigationController];
        deckController.navigationControllerBehavior = IIViewDeckNavigationControllerIntegrated;

        // create the center navigation controller
        UINavigationController* navigationController = [[UINavigationController alloc] initWithRootViewController:deckController];
        navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.400 green:0.800 blue:1.000 alpha:1.000];
        self.window.rootViewController = navigationController;
    }
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
