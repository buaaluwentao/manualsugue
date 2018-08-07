//
//  UserInfoDetailViewController.m
//  manualsugue
//
//  Created by luwentao on 2018/8/6.
//  Copyright © 2018年 cmb. All rights reserved.
//

#import "UserInfoDetailViewController.h"

@interface UserInfoDetailViewController ()

@end

@implementation UserInfoDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //CGFloat
    int w = 80,h = 50;
    
    UILabel * userName = [[UILabel alloc] initWithFrame:CGRectMake( ([[UIScreen mainScreen] bounds].size.width - 2 * w - 10 ) / 2,  ([[UIScreen mainScreen] bounds].size.height - h ) / 2, w, h)];
    userName.text = @"张三";
    [self.view addSubview: userName];
    UILabel * userInfoDetail = [[UILabel alloc] initWithFrame:CGRectMake( ([[UIScreen mainScreen] bounds].size.width - w ) / 2 + w + 10,  ([[UIScreen mainScreen] bounds].size.height - h ) / 2, w, h)];
    userInfoDetail.text = @"来自河南";
    [self.view addSubview: userInfoDetail];
    
    
    UIButton * close = [[UIButton alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width - w ) / 2 ,  ([[UIScreen mainScreen] bounds].size.height - h ) / 2 + h + 10, w, h)];
    [close setTitle:@"关闭" forState:UIControlStateNormal];
    [close setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    [close addTarget:self action:@selector(closeSelf:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:close];
}
-(void) closeSelf:(UIButton *) sender{
    [self.navigationController popViewControllerAnimated:TRUE];
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

@end
