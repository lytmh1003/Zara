//
//  VcPersonal-Set.m
//  Zara
//
//  Created by 李育腾 on 2022/6/6.
//

#import "VcPersonal-Set.h"

@interface VcPersonal_Set ()

@end

@implementation VcPersonal_Set

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 个人中心
        // 大小和风格的创建
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 40, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
        // 数据视图的代理对象
        _tableView.delegate = self;
        // 数据视图的数据源对象
        _tableView.dataSource = self;
        [self.view addSubview:_tableView];
        
        _arrayData = [[NSMutableArray alloc] init];
        NSArray* _arrayName = [NSArray arrayWithObjects:@"账号和安全", @"青少年模式", @"成为Zara终身会员", @"通用" ,@"帮助和反馈", @"切换账号",@"退出登陆",  nil];
        [_arrayData addObjectsFromArray:_arrayName];
        
        // 当数据的数据源发生变化时候
        // 更新数据视图，重新加载数据
        [_tableView reloadData];

    }

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
        return 7;
    }
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        return 7;
    }
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* strId = @"Personal Page";
        
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:strId];
        
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strId];
    }
    // cell赋值
    cell.textLabel.text = [_arrayData objectAtIndex:indexPath.section];
    // cell附加图样式
    cell.accessoryType = UITableViewCellAccessoryDetailButton;
//    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    
    cell.imageView.image = [UIImage imageNamed:@"wechat1.jpeg"];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
        return 60;
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
