//
//  VcPerSonal.m
//  Zara
//
//  Created by 李育腾 on 2022/6/6.
//

#import "VcPerSonal.h"
#import "VcPersonal-Set.h"

@interface VcPerSonal ()

@end

@implementation VcPerSonal

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //
    UITabBarItem* tb1 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:104];
    tb1.badgeValue = @"15新消息";
    self.tabBarItem = tb1;

    

// 导航栏及其侧边按钮
    UIBarButtonItem* btnSet = [[UIBarButtonItem alloc] initWithTitle:@"个人设置" style:UIBarButtonItemStylePlain target:self action:@selector(pressSet)];
    
    self.navigationItem.rightBarButtonItem = btnSet;
    
// 个人中心
    // 大小和风格的创建
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 40, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    // 数据视图的代理对象
    _tableView.delegate = self;
    // 数据视图的数据源对象
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    _arrayData = [[NSMutableArray alloc] init];
    NSArray* _arrayName = [NSArray arrayWithObjects:@"用户服务", @"会员评价", @"History", @"MyBag" ,@"关于Zara", @"版本更新", nil];
    [_arrayData addObjectsFromArray:_arrayName];
    
    // 当数据的数据源发生变化时候
    // 更新数据视图，重新加载数据
    [_tableView reloadData];

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 6;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* strId = @"Personal Page";
    
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:strId];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strId];
    }
    
// cell赋值
    cell.textLabel.text = [_arrayData objectAtIndex:indexPath.section];
    cell.detailTextLabel.text = @" xx";
    
// cell附加图样式
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}


// 跳转到下一个界面
- (void)pressSet {
    VcPersonal_Set* VcPerSet = [[VcPersonal_Set alloc] init];
    
    [self.navigationController pushViewController:VcPerSet animated:YES];
    
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
