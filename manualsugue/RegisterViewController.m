//
//  RegisterViewController.m
//  manualsugue
//
//  Created by luwentao on 2018/8/6.
//  Copyright © 2018年 cmb. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()
-(void) registerInfo:(UIButton * )btn;
@property (weak,nonatomic) UITextView * userNameTxtView;
@property (weak,nonatomic) UITextView * passwordTxtView;
@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    // Do any additional setup after loading the view.
    UILabel * userNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 150, 100, 50)];
    userNameLabel.text = @"用户名：";
    
    UILabel *passwordLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 260, 100, 50)];
    passwordLabel.text = @"密 码：";
    
    UITextView * userNameTxtView = [[UITextView alloc ] initWithFrame:CGRectMake(210, 150, 100, 100)];
    UITextView *passwordTxtView = [[UITextView alloc ] initWithFrame:CGRectMake(210, 260, 100, 100)];
    userNameTxtView.text = @"用户名";
    passwordTxtView.text = @"密码";
    
    userNameTxtView.font = [UIFont fontWithName:@"Helvetica" size:15.f];
    passwordTxtView.font = [UIFont fontWithName:@"Helvetica" size:15.f];
    [self.view addSubview:userNameLabel];
    [self.view addSubview:passwordLabel];
    [self.view addSubview:userNameTxtView];
    [self.view addSubview:passwordTxtView];
    
    UIButton * registerBtn = [[UIButton alloc ] initWithFrame:CGRectMake(150,450,100,50)];
    //[loginBtn setTitleEdgeInsets:UIEdgeInsetsMake(50, 0, 0, 0)];
    [registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    //[loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
    [registerBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [registerBtn addTarget:self action:@selector(registerInfo:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:registerBtn];
    _userNameTxtView = userNameTxtView;
    _passwordTxtView = passwordTxtView;
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) registerInfo:(UIButton * )btn{
    [self dismissViewControllerAnimated:TRUE completion:^{
        
        NSString * userName = self.userNameTxtView.text;
        NSString * password = self.passwordTxtView.text;
         NSString * userInfo = [NSString stringWithFormat:@"%@-%@", userName ,password];
        NSDictionary * dic = [NSDictionary dictionaryWithObject:userInfo forKey:@"userInfo"];
       
        [[NSNotificationCenter defaultCenter] postNotificationName:@"RegisterCompletionNotification" object:nil userInfo:dic];
    }];
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
