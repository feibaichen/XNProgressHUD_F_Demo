//
//  ViewController.m
//  XNProgressHUD_Demo
//
//  Created by Karl on 2018/6/4.
//  Copyright © 2018年 Derek. All rights reserved.
//

#import "ViewController.h"
#import "XNProgressHUD.h"
#import "UIViewController+XNProgressHUD.h"
#import "XNRefreshView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //在UIWindow上显示，无需新建类
    //[self makeWindowHud];
    
    //（一）在UIViewController上显示（maskType.enable=true时，导航栏依然可以接受点击事件）
    //[self makeViewControllerHud1];
    
    //（二）在UIViewController上显示（maskType.enable=true时，导航栏依然可以接受点击事件）
    //[self makeViewControllerHud2];
    
    //在UIView上显示
    [self makeViewHud];
    
}

-(void)makeWindowHud{
    
    //展示的位置
    [XNHUD setPosition:CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2)];
    
    //设置颜色提示框的背景颜色,默认为黑色
    //[XNHUD setTintColor:[UIColor lightGrayColor]];
    //设置相应的maskType状态下的颜色（16进制颜色值）
    [XNHUD setMaskType:(XNProgressHUDMaskTypeCustom) hexColor:0xff000044];
    
    //几种展示形态
    //[XNHUD showLoadingWithTitle:@"正在登录"];//第一种
    [XNHUD showWithTitle:@"这是一个支持自定义的轻量级HUD"];//第二种
    //[XNHUD showInfoWithTitle:@"邮箱地址不能为空"];//第三种
    //[XNHUD showErrorWithTitle:@"拒绝访问"];//第四种
    //[XNHUD showSuccessWithTitle:@"操作成功"];//第五种
    
    //设置垂直或者水平方向
    [XNHUD setOrientation:XNProgressHUDOrientationVertical];//垂直
    [XNHUD setOrientation:XNProgressHUDOrientationHorizontal];//水平
    
    //设置展示时间和延迟时间
    [XNHUD setDisposableDelayResponse:1 delayDismiss:2];
}
-(void)makeViewControllerHud1{
    
    //可以自己新建一个类
    XNProgressHUD *newHud = [[XNProgressHUD alloc] init];
    
    [newHud setPosition:CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2)];
    //设置颜色提示框的背景颜色,默认为黑色
    //[newHud setTintColor:[UIColor lightGrayColor]];
    //设置相应的maskType状态下的颜色（16进制颜色值）
    [newHud setMaskType:(XNProgressHUDMaskTypeCustom) hexColor:0xff000044];
    
    //设置垂直或者水平方向
    //[newHud setOrientation:XNProgressHUDOrientationHorizontal];//水平
    [newHud setOrientation:XNProgressHUDOrientationVertical];//垂直
    
    //几种展示形态
    //[newHud showLoadingWithTitle:@"正在登录"];//第一种
    //[newHud showWithTitle:@"这是一个支持自定义的轻量级HUD"];//第二种
    //[newHud showInfoWithTitle:@"邮箱地址不能为空"];//第三种
    //[newHud showErrorWithTitle:@"拒绝访问"];//第四种
    [newHud showSuccessWithTitle:@"操作成功"];//第五种
    
    //设置展示时间和延迟时间
    [newHud setDisposableDelayResponse:1 delayDismiss:2];
}
-(void)makeViewControllerHud2{
    //无需新建一个类，直接在文件头引入'UIViewController+XNProgressHUD.h'

    [self.hud setPosition:CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2)];
    //设置颜色提示框的背景颜色,默认为黑色
    //[self.hud setTintColor:[UIColor darkTextColor]];
    //设置相应的maskType状态下的颜色（16进制颜色值）
    [self.hud setMaskType:(XNProgressHUDMaskTypeCustom) hexColor:0xff000044];
    
    
    //设置垂直或者水平方向
    //[self.hud setOrientation:XNProgressHUDOrientationHorizontal];
    [self.hud setOrientation:XNProgressHUDOrientationVertical];
    
    //几种展示形态
    //[self.hud showLoadingWithTitle:@"正在登录"];//第一种
    //[self.hud showWithTitle:@"这是一个支持自定义的轻量级HUD"];//第二种
    //[self.hud showInfoWithTitle:@"邮箱地址不能为空"];//第三种
    //[self.hud showErrorWithTitle:@"拒绝访问"];//第四种
    [self.hud showSuccessWithTitle:@"操作成功"];//第五种
    
    //设置展示时间和延迟时间
    [self.hud setDisposableDelayResponse:1 delayDismiss:2];
}
-(void)makeViewHud{
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 300, 300)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    // 设置显示的目标View并传入显示位置
    [XNHUD setTargetView:view position:CGPointMake(view.bounds.size.width/2,  view.bounds.size.height/2)];
    
    [XNHUD showLoadingWithTitle:@"指定显示在某个View上"];
    //设置展示时间和延迟时间
    [XNHUD setDisposableDelayResponse:1 delayDismiss:2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
