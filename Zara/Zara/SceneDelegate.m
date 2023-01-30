//
//  SceneDelegate.m
//  Zara
//
//  Created by 李育腾 on 2022/6/6.
//

#import "SceneDelegate.h"
#import "VcFrist-Image.h"
#import "ViewController.h"
#import "VcLike.h"
#import "VcPerSonal.h"
#import "VcSearch.h"
#import "UIViewMyself.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    
//    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[ViewController alloc] init]];
    
    
    // 创建分栏控制器对象
    // 注意平行关系
    VcFrist_Image* VcFrist = [[VcFrist_Image alloc] init];
    VcFrist.view.backgroundColor = [UIColor whiteColor];
   //收藏
    VcLike* VcLike1 = [[VcLike alloc] init];
    VcLike1.view.backgroundColor = [UIColor whiteColor];
    //个人中心
    VcPerSonal* VcPerson = [[VcPerSonal alloc] init];
    VcPerson.view.backgroundColor = [UIColor whiteColor];
    // 搜索
    VcSearch* VcSearch1 = [[VcSearch alloc] init];
    VcSearch1.view.backgroundColor = [UIColor whiteColor];
    // 添加图片的UITableView
    UIViewMyself* VcMyself = [[UIViewMyself alloc]init];
    VcMyself.view.backgroundColor = [UIColor whiteColor];
// 收藏界面的导航控制器
   UINavigationController* navLike= [[UINavigationController alloc] initWithRootViewController:VcLike1];
 // 用户界面的导航控制器
    UINavigationController* navPersonal = [[UINavigationController alloc] initWithRootViewController:VcPerson];
// 搜索界面的导航控制器
    UINavigationController* navSearch = [[UINavigationController alloc] initWithRootViewController:VcSearch1];
// 添加图片的UITableView的导航控制器
    UINavigationController* navMyself = [[UINavigationController alloc]initWithRootViewController:VcMyself];
    
    // 分栏控制器对象
    UITabBarController* tbController = [[UITabBarController alloc] init];
    // 数组
    NSArray * arrayVc = [NSArray arrayWithObjects:VcFrist, navSearch, navLike, navPersonal, navMyself, nil];
    
    tbController.viewControllers = arrayVc;
    // 分栏控制器工具栏的透明度
//    tbController.tabBar.translucent = YES;
//    tbController.view.backgroundColor = [UIColor blackColor];
    self.window.rootViewController = tbController;

}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
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
