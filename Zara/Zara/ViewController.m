//
//  ViewController.m
//  Zara
//
//  Created by 李育腾 on 2022/6/6.
//

#import "ViewController.h"
#import "VcFrist-Image.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _lb = [[UILabel alloc] init];
    _lb.frame = CGRectMake(60, 80, 800, 900);
    _lb.text = @"Welcome To 3G";
    _lb.textColor = [UIColor blackColor];
    _lb.font = [UIFont systemFontOfSize:30];
    _lb.textAlignment = NSTextAlignmentLeft;
   
    
    _lbUserName = [[UILabel alloc]init];
    _lbUserName.frame = CGRectMake(20, 160, 80, 40);
    _lbUserName.text = @"用户名：";
    _lbUserName.font = [UIFont systemFontOfSize:15];
    _lbUserName.textAlignment = NSTextAlignmentLeft;
   
    // 密码提示
    _lbPassWord = [[UILabel alloc] init];
    _lbPassWord.frame = CGRectMake(20, 240, 80, 40);
    _lbPassWord.text = @"密码：";
    _lbPassWord.font = [UIFont systemFontOfSize:15];
    _lbPassWord.textAlignment = NSTextAlignmentLeft;
    
    //用户名输入框
    _tfUserName = [[UITextField alloc] init];
    _tfUserName.frame = CGRectMake(120, 160, 180, 40);
    _tfUserName.placeholder = @"请输入用户名";
    _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
//    _tfUserName.keyboardType = UIKeyboardTypeNumberPad;
//
    //密码输入框
    _tfPassWord = [[UITextField alloc] init];
    _tfPassWord.frame = CGRectMake(120, 240, 180, 40);
    _tfPassWord.placeholder = @"请输入密码";
    _tfPassWord.borderStyle = UITextBorderStyleRoundedRect;
    _tfPassWord.secureTextEntry = YES;
//    _tfPassWord.keyboardType = UIKeyboardTypeNumberPad;
//
    //登陆button
    _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btLogin.frame = CGRectMake(120, 300, 80, 40);
    [_btLogin setTitle:@"会员登陆" forState:UIControlStateNormal];
    [_btLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    
    //注册button
    _btRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btRegister.frame = CGRectMake(120, 360, 80, 40);
    [_btRegister setTitle:@"会员注册" forState:UIControlStateNormal];
    [_btRegister addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:_lbUserName];
    [self.view addSubview:_lbPassWord];
    [self.view addSubview:_lb];
    [self.view addSubview:_btLogin];
    [self.view addSubview:_btRegister];
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_tfPassWord];
    self.view.backgroundColor = [UIColor whiteColor];
    
}

//登陆和注册事件函数

-(void) pressLogin {
    NSString* str1 = @"11111";
    NSString* str2 = @"123456";
    
    //输入的账号密码都能在其他函数获取
    NSString* strName = _tfUserName.text;
    NSString* strPass = _tfPassWord.text;
    if ([str1 isEqualToString:strName] && [str2 isEqualToString:strPass]) {
        NSLog(@" 用户名密码正确！");
        VcFrist_Image* v1 = [[VcFrist_Image alloc] init];
        [self.navigationController pushViewController:v1 animated:YES];
    }
    else {
        UIAlertController *_alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"验证失败,用户名或密码错误，请检查！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [_alert addAction:sure];
        [self presentViewController:_alert animated:YES completion:nil];
    }
}

-(void) pressRegister {
    UIAlertController *_alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"系统升级，ZARA暂不支持注册新会员！" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [_alert addAction:sure];
    [self presentViewController:_alert animated:YES completion:nil];
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //回收键盘对象
    [_tfUserName resignFirstResponder];
    [_tfPassWord resignFirstResponder];
}
@end

