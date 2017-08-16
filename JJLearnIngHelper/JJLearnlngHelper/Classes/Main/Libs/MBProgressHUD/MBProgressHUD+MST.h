//
//  MBProgressHUD+MST.h
//  DemoRunCollPro
//
//  Created by asdc on 16/9/27.
//  Copyright © 2016年 mst. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (MST)

+ (void)showSuccess:(NSString *)success toView:(UIView *)view;
+ (void)showError:(NSString *)error toView:(UIView *)view;
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;

+ (void)showSuccess:(NSString *)success;
+ (void)showError:(NSString *)error;
+ (MBProgressHUD *)showMessage:(NSString *)message;

+ (void)showWarning:(NSString *)warning;
+ (void)showWarning:(NSString *)warning toView:(UIView *)view;

+ (void)showText:(NSString *)text;
+(void)showText:(NSString *)text toView:(UIView *)view;

+ (void)hideHUDForView:(UIView *)view;
+ (void)hideHUD;

+(MBProgressHUD *)showProgress:(NSString *)message progress:(CGFloat)prectnt toView:(UIView *)view;

@end
