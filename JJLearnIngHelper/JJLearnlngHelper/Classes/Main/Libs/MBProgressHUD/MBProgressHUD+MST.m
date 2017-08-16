//
//  MBProgressHUD+MST.m
//  DemoRunCollPro
//
//  Created by asdc on 16/9/27.
//  Copyright © 2016年 mst. All rights reserved.
//

#import "MBProgressHUD+MST.h"

@implementation MBProgressHUD (MST)

#pragma mark showMessage
+(MBProgressHUD *)showProgress:(NSString *)message progress:(CGFloat)prectnt toView:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
    // 这种设置不可换行
    // hud.labelText = message;
    
    // 更改可换行
    hud.detailsLabelText= message;
    hud.detailsLabelFont = [UIFont boldSystemFontOfSize:15.0];
    
    hud.mode = MBProgressHUDModeDeterminate;
//    hud.labelText = @"Downloading...";
    hud.square = YES;
    hud.progress = prectnt;
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    // YES代表需要蒙版效果
    hud.dimBackground = YES;
    
    return hud;
}

+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view {
    
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
    // 这种设置不可换行
    // hud.labelText = message;
    
    // 更改可换行
    hud.detailsLabelText= message;
    hud.detailsLabelFont = [UIFont boldSystemFontOfSize:15.0];
    
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    // YES代表需要蒙版效果
    hud.dimBackground = YES;
    
    // 30秒之后再消失超时
    // [hud hide:YES afterDelay:30];
    
    return hud;
}

+ (MBProgressHUD *)showMessage:(NSString *)message
{
    return [self showMessage:message toView:nil];
}

#pragma mark -- showTest
+(void)showText:(NSString *)text toView:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
    // 这种设置不可换行
    // hud.labelText = text;
    
    // 更改可换行
    hud.detailsLabelText= text;
    hud.detailsLabelFont = [UIFont boldSystemFontOfSize:15.0];
    
    // 再设置模式
    hud.mode = MBProgressHUDModeText;
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // 1.5秒之后再消失
    [hud hide:YES afterDelay:1.5];
}

+ (void)showText:(NSString *)text
{
    [self showText:text toView:nil];
}


#pragma mark showSuccess  showError
+ (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
    // 这种设置不可换行
    // hud.labelText = text;
    
    // 更改可换行
    hud.detailsLabelText= text;
    hud.detailsLabelFont = [UIFont boldSystemFontOfSize:15.0];
    
    
    
    // 设置图片
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@", icon]]];
    // 再设置模式
    hud.mode = MBProgressHUDModeCustomView;
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // 1.5秒之后再消失
    [hud hide:YES afterDelay:1.5];
}

+ (void)showSuccess:(NSString *)success toView:(UIView *)view
{
    [self show:success icon:@"success.png" view:view];
}

+ (void)showSuccess:(NSString *)success
{
    [self showSuccess:success toView:nil];
}


+ (void)showError:(NSString *)error toView:(UIView *)view{
    [self show:error icon:@"error.png" view:view];
}

+ (void)showError:(NSString *)error
{
    [self showError:error toView:nil];
}

+ (void)showWarning:(NSString *)warning toView:(UIView *)view
{
    [self show:warning icon:@"bwm_hud_warning.png" view:view];
}

+ (void)showWarning:(NSString *)warning
{
    [self showWarning:warning toView:nil];
}


#pragma mark -- hideHUD
+ (void)hideHUDForView:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    [self hideHUDForView:view animated:YES];
}

+ (void)hideHUD
{
    [self hideHUDForView:nil];
}

@end
