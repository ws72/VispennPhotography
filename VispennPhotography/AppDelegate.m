//
//  AppDelegate.m
//  TemplateTwoOnlineTennisStore
//
//  Created by Song Wang on 7/05/13.
//  Copyright (c) 2013 Konstantin Pinchuk. All rights reserved.
//

#import "AppDelegate.h"

#import "AboutVC.h"
#import "MapVC.h"
#import "NewsVC.h"
#import "GalleryVC.h"

@implementation AppDelegate

@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    UIViewController *aboutVC, *mapVC, *newsVC,* galleryVC;//init UITabBarController
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        aboutVC = [[AboutVC alloc] initWithNibName:@"AboutVC_iPhone" bundle:nil];// about us view controller
        mapVC   = [[MapVC alloc]   initWithNibName:@"MapVC"          bundle:nil];// find us view controller
        newsVC   = [[NewsVC alloc]   initWithNibName:@"NewsVC" bundle:nil];// news view controller
        galleryVC = [[GalleryVC alloc] initWithNibName:@"GalleryVC" bundle:nil];// gallery view controller
    }
    else
    {
        aboutVC = [[AboutVC alloc] initWithNibName:@"AboutVC_iPad" bundle:nil];
        mapVC   = [[MapVC alloc]   initWithNibName:@"MapVC"        bundle:nil];
    }
    self.tabBarController = [[UITabBarController alloc] init];// init UITabBarController
    self.tabBarController.viewControllers = @[galleryVC,newsVC,aboutVC, mapVC];// init view controller array
    [self.tabBarController.tabBar setBackgroundImage:[UIImage imageNamed:@"bg1.png"]];//set init bg image
    self.window.rootViewController = self.tabBarController;
    self.tabBarController.delegate=self;// set delegate
    [self.window makeKeyAndVisible];
    return YES;
    
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    if(self.tabBarController.selectedIndex ==0){
        //selected Gallery tabBar, changes tabBar style
        [self.tabBarController.tabBar setBackgroundImage:[UIImage imageNamed:@"bg1.png"]];
    }else if(self.tabBarController.selectedIndex ==1){
        //selected News tabBar, changes tabBar style
        [self.tabBarController.tabBar setBackgroundImage:[UIImage imageNamed:@"bg2.png"]];
    }else if(self.tabBarController.selectedIndex ==2){
        //selected About us tabBar, changes tabBar style
        [self.tabBarController.tabBar setBackgroundImage:[UIImage imageNamed:@"bg3.png"]];
    }else if(self.tabBarController.selectedIndex ==3){
        //selected find us tabBar, changes tabBar style
        [self.tabBarController.tabBar setBackgroundImage:[UIImage imageNamed:@"bg4.png"]];
    }

}


/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end
