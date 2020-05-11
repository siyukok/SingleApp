//
//  SceneDelegate.m
//  SingleApp
//
//  Created by Alias on 2020/5/6.
//  Copyright © 2020 Alias. All rights reserved.
//

#import "SceneDelegate.h"
#import "ViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    self.window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *)scene];//创建一个Window
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    
    ViewController *vc = [[ViewController alloc]init];
//    vc.hidesBottomBarWhenPushed = YES;
//    UINavigationController *unvc1 = [[UINavigationController alloc]initWithRootViewController:vc];

//    UIViewController *uvc1 = [[UIViewController alloc]init];
    vc.tabBarItem.title = @"新闻";
    vc.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/page@2x"];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/page_selected@2x"];
    
    UIViewController *uvc2 = [[UIViewController alloc]init];
    uvc2.view.backgroundColor = [UIColor blueColor];
    uvc2.tabBarItem.title = @"视频";
    uvc2.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/video@2x"];
    uvc2.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/video_selected@2x"];
    
    UIViewController *uvc3 = [[UIViewController alloc]init];
    uvc3.view.backgroundColor = [UIColor yellowColor];
    uvc3.tabBarItem.title = @"精选";
    uvc3.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/like@2x"];
    uvc3.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/like_selected@2x"];
    
    UIViewController *uvc4 = [[UIViewController alloc]init];
    uvc4.view.backgroundColor = [UIColor greenColor];
    uvc4.tabBarItem.title = @"我的";
    uvc4.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/home@2x"];
    uvc4.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/home_selected@2x"];
    
    [tabBarController setViewControllers:@[vc,uvc2,uvc3,uvc4]];

    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:tabBarController];

    self.window.rootViewController = navigationController;
    
    [self.window makeKeyAndVisible]; //设置这个window为主(key)窗口并设置成为可见
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
