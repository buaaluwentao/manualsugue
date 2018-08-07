//
//  TongXunLuViewController.m
//  manualsugue
//
//  Created by luwentao on 2018/8/6.
//  Copyright © 2018年 cmb. All rights reserved.
//

#import "TongXunLuViewController.h"
#import "UserInfoDetailViewController.h"
@interface TongXunLuViewController ()
-(void) showDetail:(UIButton *) sender;
@end

@implementation TongXunLuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    for(int i = 0 ; i < 4 ;i++){
        UILabel * userName = [[UILabel alloc] initWithFrame:CGRectMake(120  , 200 + 60 * i , 50, 50)];
        userName.text = @[@"张三" ,@"李四" ,@"王五" ,@"赵六"][i];
        
        UIButton * userInfoDetail = [[UIButton alloc] initWithFrame:CGRectMake(120 + 50 + 10 , 200 + 60 * i, 100, 50)];
        [userInfoDetail setTitle:@"点击查看" forState:UIControlStateNormal];
        [userInfoDetail setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [userInfoDetail addTarget:self action:@selector(showDetail:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:userName];
        [self.view addSubview:userInfoDetail];
    }
   
   
    
    
    
    
}

-(void) showDetail:(UIButton *) sender{
    
    UserInfoDetailViewController * userInfoDetail = [[UserInfoDetailViewController alloc] init];
    
    //UINavigationController *nc = [[UINavigationController alloc ] initWithRootViewController:self];
    
    NSLog(@"hellow，world...");
    [self.navigationController pushViewController:userInfoDetail animated:TRUE];
    NSLog(@"hellow，world");
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
