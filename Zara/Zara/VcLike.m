//
//  VcLike.m
//  Zara
//
//  Created by 李育腾 on 2022/6/6.
//

#import "VcLike.h"
#import "VcLike历史收藏.h"

@interface VcLike ()

@end

@implementation VcLike

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem* tb1 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:102];
    tb1.badgeValue = @"降价啦";
    
    self.tabBarItem =tb1;
    
//    // 历史收藏导航栏
    self.navigationController.navigationBar.translucent = NO;
    // 导航拦颜色
    self.navigationController.navigationBar.backgroundColor = [UIColor blueColor];

    UIBarButtonItem* next = [[UIBarButtonItem alloc] initWithTitle:@"历史收藏" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    self.navigationItem.rightBarButtonItem = next;
    self.navigationController.navigationItem.rightBarButtonItem = next;
}

-(void) pressNext {
    VcLike____* VcHistory = [[VcLike____ alloc] init];

    [self.navigationController pushViewController:VcHistory animated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
