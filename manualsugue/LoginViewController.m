//
//  LoginViewController.m
//  manualsugue
//
//  Created by luwentao on 2018/8/6.
//  Copyright © 2018年 cmb. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"
@interface LoginViewController ()
-(void)buttonClicked:(UIButton*)sender;
-(void) getUserInfo:(NSNotification *) notification;
@property (weak,nonatomic) UITextView * userNameTxtView;
@property (weak,nonatomic) UITextView * passwordTxtView;
-(void) push:(UIButton *) sender;
@end

@implementation LoginViewController

- (void)viewDidLoad {
    /*
     注册广播
     */
    [[NSNotificationCenter defaultCenter] addObserver:self selector: @selector(getUserInfo:) name:@"RegisterCompletionNotification" object:nil];
    [super viewDidLoad];
    // Do any additional setup after loading the view.getUserInfo
    UILabel * userNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 150, 100, 50)];
    userNameLabel.text = @"用户名：";
    
    UILabel *passwordLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 260, 100, 50)];
    passwordLabel.text = @"密 码：";
    
    UITextView * userNameTxtView = [[UITextView alloc ] initWithFrame:CGRectMake(210, 150, 100, 100)];
    UITextView *passwordTxtView = [[UITextView alloc ] initWithFrame:CGRectMake(210, 260, 100, 100)];
    userNameTxtView.text = @"用户名";
    passwordTxtView.text = @"密码";
    self.userNameTxtView = userNameTxtView;
    self.passwordTxtView = passwordTxtView;
    userNameTxtView.font = [UIFont fontWithName:@"Helvetica" size:15.f];
    passwordTxtView.font = [UIFont fontWithName:@"Helvetica" size:15.f];
    [self.view addSubview:userNameLabel];
    [self.view addSubview:passwordLabel];
    [self.view addSubview:userNameTxtView];
    [self.view addSubview:passwordTxtView];
    
    
    UIButton * loginBtn = [[UIButton alloc ] initWithFrame:CGRectMake(150,370,100,50)];
    //[loginBtn setTitleEdgeInsets:UIEdgeInsetsMake(50, 0, 0, 0)];
    [loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    //loginBtn.titleLabel.font =[UIFont fontWithName:@"Helvetica" size:15.f];
    //loginBtn.font = [UIFont fontWithName:@"Helvetica" size:15.f];
    //loginBtn.titleLabel = @"登陆";
    //[self.view addSubView:loginBtn];
    
    UIButton * registerBtnPre = [[UIButton alloc ] initWithFrame:CGRectMake(150,450,100,50)];
    //[loginBtn setTitleEdgeInsets:UIEdgeInsetsMake(50, 0, 0, 0)];
    [registerBtnPre setTitle:@"注册" forState:UIControlStateNormal];
    
    //[loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
    [registerBtnPre setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    [self.view addSubview:loginBtn];
    [self.view addSubview:registerBtnPre];
    
    [registerBtnPre addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    
    /*
    UIButton * registerPush = [[UIButton alloc ] initWithFrame:CGRectMake(180,510,100,50)];
    //[loginBtn setTitleEdgeInsets:UIEdgeInsetsMake(50, 0, 0, 0)];
    [registerPush setTitle:@"注册Push" forState:UIControlStateNormal];
    //[loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
    [registerPush setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    [registerPush addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];*/
    
}
-(void) push:(UIButton *) sender{
    
}

-(void) getUserInfo:(NSNotification *) notification{
    
    NSString* userInfo = [[notification userInfo] objectForKey:@"userInfo"];
    if ([userInfo length]){
        NSString *userName = [userInfo componentsSeparatedByString:@"-"][0];
        NSString *password = [userInfo componentsSeparatedByString:@"-"][1];
        NSLog(@"userName=%@,password=%@" ,userName ,password);
        self.userNameTxtView.text = userName;
        self.passwordTxtView.text = password;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void) buttonClicked:(UIButton*)sender{
    /*if(1){
        NSLog(@"...");
    }*/
    RegisterViewController * re = [[RegisterViewController alloc] init];
    // UINavigationController *nc =
    [self presentViewController:re animated:TRUE completion:^{
        NSLog(@"跳转了。。。");
    }];
}
-(void) dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
@end
