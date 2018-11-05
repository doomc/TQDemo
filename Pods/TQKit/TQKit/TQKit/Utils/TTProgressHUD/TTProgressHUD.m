//
//  TTProgressHUD.m
//  TTLightKitDemo
//
//  Created by 天智慧启 on 2017/5/17.
//  Copyright © 2017年 天智慧启. All rights reserved.
//

#import "TTProgressHUD.h"
#import "SVProgressHUD.h"

@implementation TTProgressHUD

/**
 信息提示 -- 深色背景
 
 @param tips 信息
 */
+ (void)showInfoTips:(NSString *)tips {
    [self showInfoTips:tips delay:TTProgressDismissSeconds];
}

/**
 信息提示 -- 无图标
 
 @param tips 信息
 */
+ (void)showBlankInfoTips:(NSString *)tips {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleLight];
    [SVProgressHUD setInfoImage:nil];
    [SVProgressHUD showInfoWithStatus:tips];
    [SVProgressHUD dismissWithDelay:TTProgressDismissSeconds];
}

/**
 信息提示 -- 浅色背景

 @param tips 信息
 */
+ (void)showLightInfoTips:(NSString *)tips {
    [self showLightInfoTips:tips delay:TTProgressDismissSeconds infoImage:nil];
}

/**
 信息提示 -- 深色背景
 
 @param tips 提示信息
 @param delay 延迟时间
 */
+ (void)showInfoTips:(NSString *)tips delay:(float)delay {
    [self showInfoTips:tips delay:delay infoImage:nil];
}

/**
 信息提示 -- 深色背景
 
 @param tips 提示信息
 @param delay 延迟时间
 @param image 提示图片，nil则为默认图片
 */
+ (void)showInfoTips:(NSString *)tips delay:(float)delay infoImage:(UIImage *)image {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    if (image) {
        [SVProgressHUD setInfoImage:image];
    }
    [SVProgressHUD showInfoWithStatus:tips];
    [SVProgressHUD dismissWithDelay:delay];
}

/**
 信息提示 -- 浅色背景
 
 @param tips 提示信息
 @param delay 延迟时间
 @param image 提示图片，nil则为默认图片
 */
+ (void)showLightInfoTips:(NSString *)tips delay:(float)delay infoImage:(UIImage *)image {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleLight];
    [SVProgressHUD setInfoImage:image];
    [SVProgressHUD showInfoWithStatus:tips];
    [SVProgressHUD dismissWithDelay:delay];
}

/**
 成功提示, 默认2秒取消
 
 @param tips 提示语
 */
+ (void)showSuccessTips:(NSString *)tips {
    [self showSuccessTips:tips withDismissDelay:TTProgressDismissSeconds];
}

/**
 成功提示
 
 @param tips 提示语
 @param delay 延迟几秒取消
 */
+ (void)showSuccessTips:(NSString *)tips withDismissDelay:(float)delay {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD showSuccessWithStatus:tips];
    [SVProgressHUD dismissWithDelay:delay];
}

/**
 错误提示,默认2秒取消
 
 @param tips 提示语
 */
+ (void)showErrorTips:(NSString *)tips {
    [self showErrorTips:tips withDismissDelay:TTProgressDismissSeconds];
}

/**
 错误提示
 
 @param tips 提示语
 @param delay 延迟几秒取消
 */
+ (void)showErrorTips:(NSString *)tips withDismissDelay:(float)delay {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD showErrorWithStatus:tips];
    [SVProgressHUD dismissWithDelay:delay];
}

/**
 等待提示框,转圆圈,无提示语
 */
+ (void)showFlatLoading {
    [self showFlatLoadingWithTips:nil];
}

/**
 等待提示框,转圆圈
 
 @param tips 提示语
 */
+ (void)showFlatLoadingWithTips:(NSString *)tips {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeFlat];
    [SVProgressHUD showWithStatus:tips];
}

/**
 等待框,iOS 菊花转, 无提示语
 
 */
+ (void)showNativeLoading {
    [self showNativeLoadingWithTips:nil];
}

/**
 等待框,iOS 菊花转
 
 @param tips 提示语
 */
+ (void)showNativeLoadingWithTips:(NSString *)tips {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeNative];
    [SVProgressHUD showWithStatus:tips];
}

/**
 取消提示框
 */
+ (void)hideProgressHUD {
    [SVProgressHUD dismiss];
}

@end
