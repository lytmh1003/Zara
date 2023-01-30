//
//  UIViewMyself.m
//  Zara
//
//  Created by 李育腾 on 2022/7/13.
//

#import "UIViewMyself.h"
#import "UIViewFriends.h"
#import "UIViewServe.h"

@interface UIViewMyself ()

@end

@implementation UIViewMyself

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem* tabBarMyself = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemTopRated tag:104];
    tabBarMyself.badgeValue = @"VIP";
    self.tabBarItem = tabBarMyself;
    
    
    UIImageView* imageSelf = [[UIImageView alloc]init];
    imageSelf.image = [UIImage imageNamed:@"UIWechat1.jpeg"];
    imageSelf.frame = CGRectMake(0, 50, self.view.frame.size.width, (self.view.frame.size.height) / 5);
    [self.view addSubview:imageSelf];
    
    //用户端的界面的设置
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, (self.view.frame.size.height) / 4, self.view.frame.size.width, 4 * (self.view.frame.size.height) / 5) style:UITableViewStyleGrouped];
    
    // 协议代理
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    [self.view addSubview:_tableView];
    [_tableView reloadData];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell;
    if (indexPath.row == 0) {
        NSString* strId = @"Personal Page";
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strId];
        }
        // cell赋值
        cell.textLabel.text = @"服务";
        // cell附加图样式
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;

        cell.imageView.image = [UIImage imageNamed:@"UIWechat7.jpeg"];
        cell.backgroundColor = [UIColor whiteColor];
        // 设置tableViewcell----图片大小的方法
        CGSize itemSize = CGSizeMake(40, 40);
              UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
              CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
              [cell.imageView.image drawInRect:imageRect];
              cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
              UIGraphicsEndImageContext();
    
    } if (indexPath.row == 1) {
        NSString* strId = @"Personal Page";
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strId];
        }
        // cell赋值
        cell.textLabel.text = @"我的卡包";
        cell.detailTextLabel.text = @"111";
        // cell附加图样式
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;

        cell.imageView.image = [UIImage imageNamed:@"UIWechat2.jpeg"];
        cell.backgroundColor = [UIColor whiteColor];
        // 设置tableViewcell----图片大小的方法
        CGSize itemSize = CGSizeMake(40, 40);
              UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
              CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
              [cell.imageView.image drawInRect:imageRect];
              cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
              UIGraphicsEndImageContext();

    } if (indexPath.row == 2) {
        NSString* strId = @"Personal Page";
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strId];
        }
        // cell赋值
        cell.textLabel.text = @"收藏";
//        cell.detailTextLabel.text = @"111";
        // cell附加图样式
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;

        cell.imageView.image = [UIImage imageNamed:@"UIWechat6.jpeg"];
        cell.backgroundColor = [UIColor whiteColor];
        // 设置tableViewcell----图片大小的方法
        CGSize itemSize = CGSizeMake(40, 40);
              UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
              CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
              [cell.imageView.image drawInRect:imageRect];
              cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
              UIGraphicsEndImageContext();
    } if (indexPath.row == 3) {
        NSString* strId = @"Personal Page";
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strId];
        }
        // cell赋值
        cell.textLabel.text = @"微信小世界";
//        cell.detailTextLabel.text = @"111";
        // cell附加图样式
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;

        cell.imageView.image = [UIImage imageNamed:@"UIWechat5.jpeg"];
        cell.backgroundColor = [UIColor whiteColor];
        // 设置tableViewcell----图片大小的方法
        CGSize itemSize = CGSizeMake(40, 40);
              UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
              CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
              [cell.imageView.image drawInRect:imageRect];
              cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
              UIGraphicsEndImageContext();
    } if (indexPath.row == 4) {
        NSString* strId = @"Personal Page";
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strId];
        }
        // cell赋值
        cell.textLabel.text = @"朋友圈";
//        cell.detailTextLabel.text = @"111";
        // cell附加图样式
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;

        cell.imageView.image = [UIImage imageNamed:@"UIWechat4.jpeg"];
        cell.backgroundColor = [UIColor whiteColor];
        
        // 设置tableViewcell----图片大小的方法
        CGSize itemSize = CGSizeMake(40, 40);
              UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
              CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
              [cell.imageView.image drawInRect:imageRect];
              cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
              UIGraphicsEndImageContext();
    } if (indexPath.row == 5) {
        NSString* strId = @"Personal Page";
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strId];
        }
        // cell赋值
        cell.textLabel.text = @"设置";
//        cell.detailTextLabel.text = @"111";
        // cell附加图样式
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;

        cell.imageView.image = [UIImage imageNamed:@"UIWechat3.jpeg"];
        // 设置tableViewcell----图片大小的方法
        CGSize itemSize = CGSizeMake(40, 40);
              UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
              CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
              [cell.imageView.image drawInRect:imageRect];
              cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
              UIGraphicsEndImageContext();

        cell.backgroundColor = [UIColor whiteColor];
    }
    return cell;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 58;
}

// talbeView点击事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    // 不加此句时，在二级栏目点击返回时，此行会由选中状态慢慢变成非选中状态。
    // 加上此句，返回时直接就是非选中状态。
    if (indexPath.row == 0) {
        UIViewServe* UIViewServe1 = [[UIViewServe alloc] init];
        [self.navigationController pushViewController:UIViewServe1 animated:YES];
    } else if (indexPath.row == 4) {
        UIViewFriends* UIViewF = [[UIViewFriends alloc]init];
        [self.navigationController pushViewController:UIViewF animated:YES];
    }
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
