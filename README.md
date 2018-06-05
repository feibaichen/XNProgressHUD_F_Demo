# XNProgressHUD_Demo
原创地址：https://github.com/LuohanCC/XNProgressHUD
 ![image](https://github.com/feibaichen/XNProgressHUD_F_Demo/blob/master/xnp.gif)



使用说明
--------------------------------------------
// 设置显示位置

[XNHUD setPosition:CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height * 0.7)];


// 设置主色调
[XNHUD setTintColor:[UIColor colorWithRed:38/255.0 green:50/255.0 blue:56/255.0 alpha:0.8]];
// 设置相应的maskType状态下的颜色（16进制颜色值）
[XNHUD setMaskType:(XNProgressHUDMaskTypeBlack)  hexColor:0x00000044];
[XNHUD setMaskType:(XNProgressHUDMaskTypeCustom) hexColor:0xff000044];

-------------------------------------------
在UIWindow上显示：

[XNHUD showLoadingWithTitle:@"正在登录"];

[XNHUD showWithTitle:@"这是一个支持自定义的轻量级HUD"];

[XNHUD showInfoWithTitle:@"邮箱地址不能为空"];

[XNHUD showErrorWithTitle:@"拒绝访问"];

[XNHUD showSuccessWithTitle:@"操作成功"];


------------------------------------------
在UIViewController上显示（maskType.enable=true时，导航栏依然可以接受点击事件）


// 引入'UIViewController+XNProgressHUD.h'

[self.hud showLoadingWithTitle:@"正在登录"];

[self.hud showWithTitle:@"这是一个支持自定义的轻量级HUD"];

[self.hud showInfoWithTitle:@"邮箱地址不能为空"];

[self.hud showErrorWithTitle:@"拒绝访问"];

[self.hud showSuccessWithTitle:@"操作成功"];


-------------------------------------------

在UIView上显示

UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];

[self.view addSubview:view];

// 设置显示的目标View并传入显示位置

[XNHUD setTargetView:view position:CGPointMake(view.bounds.size.width/2,  view.bounds.size.height/2)];

[XNHUD showLoadingWithTitle:@"指定显示在某个View上"];


-----------------------------
属性和方法说明

显示时长minimumDelayDismissDuration作用于非加载样式的视图：XNRefreshViewStyleInfoImage、XNRefreshViewStyleError、XNRefreshViewStyleSuccess； 
显示时长maximumDelayDismissDuration作用与加载样式的视图：XNRefreshViewStyleLoading、XNRefreshViewStyleProgress。

@property (nonatomic, assign) NSTimeInterval minimumDelayDismissDuration; //default:1.5f
@property (nonatomic, assign) NSTimeInterval maximumDelayDismissDuration; //default:20.f
延时显示时间和延时消失时间，该方法只对下一次HUD显示生效（只生效一次）。


[XNHUD setDisposableDelayResponse:1.0f delayDismiss:2.0f];

设置排列方向，默认为水平方向


[XNHUD setOrientation:XNProgressHUDOrientationHorizontal];


-------------------------------
自定义XNProgressHUD


如果需要自定义加载视图的显示内容和动画样式，请重写XNRefreshView并实现XNRefreshViewProtocol中的协议方法即可，具体如下

自定义XNRefreshView并实现XNRefreshViewProtocol中的协议方法；

继承XNProgressHUD并实现XNProgressHUDMethod中的协议方法。
