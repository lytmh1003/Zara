//
//  VcSearch.m
//  Zara
//
//  Created by 李育腾 on 2022/6/6.
//

#import "VcSearch.h"
#import "VcSearchCarme.h"

@interface VcSearch ()

@end

@implementation VcSearch
@synthesize txField = _txField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem* tb1 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemSearch tag:105];
    self.tabBarItem = tb1;
    
    UIBarButtonItem* btnSet = [[UIBarButtonItem alloc] initWithTitle:@"拍照识物" style:UIBarButtonItemStylePlain target:self action:@selector(pressCarme)];
    
    self.navigationItem.rightBarButtonItem = btnSet;
    
    
    
//搜索框
     _txField = [[UITextField alloc] init];
    _txField.frame = CGRectMake(40, 140, 280, 40);
    _txField.font = [UIFont systemFontOfSize:18];
    _txField.textColor = [UIColor blackColor];
    
    // 边框风格
    _txField.borderStyle = UITextBorderStyleRoundedRect;
    // 键盘风格
    _txField.keyboardType = UIKeyboardTypeDefault;
    //
    _txField.placeholder = @"夏季新品女裤...";
    
    [self.view addSubview:_txField];
// 字母框架
    UILabel* _lb1 = [[UILabel alloc] init];
    _lb1.text = @"Search In  Z A R A";
    _lb1.frame = CGRectMake(30, 120, 800, 900);
    _lb1.textColor = [UIColor whiteColor];
    _lb1.font = [UIFont systemFontOfSize:50];
    _lb1.shadowColor = [UIColor grayColor];
    _lb1.shadowOffset = CGSizeMake(15, 15);
    _lb1.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:_lb1];
    
// 搜索分类框
   //男士
    UIButton* btnMan = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnMan.frame = CGRectMake(40, 180, 40, 40);
    [btnMan setTitle:@"孟好" forState:UIControlStateNormal];
    [self.view addSubview:btnMan];
    [btnMan setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btnMan.titleLabel.font = [UIFont systemFontOfSize:18];
   //女士
    UIButton* btnWoman = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnWoman.frame = CGRectMake(110, 180, 40, 40);
    [btnWoman setTitle:@"孟好辣妹" forState:UIControlStateNormal];
    [self.view addSubview:btnWoman];
    [btnWoman setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btnWoman.titleLabel.font = [UIFont systemFontOfSize:18];
    btnWoman.titleLabel.numberOfLines = 0;
    // 儿童
    UIButton* btnWoman1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnWoman1.frame = CGRectMake(170, 180, 40, 40);
    [btnWoman1 setTitle:@"HOME" forState:UIControlStateNormal];
    [self.view addSubview:btnWoman1];
    [btnWoman1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btnWoman1.titleLabel.font = [UIFont systemFontOfSize:18];
    btnWoman1.titleLabel.numberOfLines = 0;
    // HOme
    UIButton* btnWoman2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnWoman2.frame = CGRectMake(235, 180, 40, 40);
    [btnWoman2 setTitle:@"赛格新品" forState:UIControlStateNormal];
    [self.view addSubview:btnWoman2];
    [btnWoman2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btnWoman2.titleLabel.font = [UIFont systemFontOfSize:12];
    btnWoman2.titleLabel.numberOfLines = 0;
    // 本周新品
    UIButton* btnMan1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnMan1.frame = CGRectMake(40, 280, 40, 40);
    [btnMan1 setTitle:@"New----基础系列" forState:UIControlStateNormal];
    [self.view addSubview:btnMan1];
    [btnMan1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btnMan1.titleLabel.font = [UIFont systemFontOfSize:18];
    btnMan1.titleLabel.numberOfLines = 0;
// 侧边按钮
//    UIBarButtonItem* btnSet = [[UIBarButtonItem alloc] initWithTitle:@"拍照识物" style:UIBarButtonItemStylePlain target:self action:@selector(pressCarme)];
//
//    self.navigationItem.rightBarButtonItem = btnSet;
}
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.txField resignFirstResponder];
    
}
-(void) pressCarme {
    VcSearchCarme* VcSCarme = [[VcSearchCarme alloc] init];
    
    [self.navigationController pushViewController:VcSCarme animated:YES];
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
