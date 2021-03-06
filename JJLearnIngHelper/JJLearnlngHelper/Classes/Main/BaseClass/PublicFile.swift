//
//  PublicFile.swift
//  swiftUITestDemo
//
//  Created by 贾文鹏 on 2017/8/13.
//  Copyright © 2017年 贾文鹏. All rights reserved.
//

import Foundation
import UIKit
//主题色
public let THEME_COLOR=UIColor(red: 33/255.0, green: 41/255.0, blue: 54/255.0, alpha: 1.0)
//背景色
public let BG_COLOR=UIColor(red: 246/225.0, green: 246/225.0, blue: 246/225.0, alpha: 1.0)
//分割线颜色
public let LINE_COLOR=UIColor(red: 217/225.0, green: 217/225.0, blue: 217/225.0, alpha: 1.0)
//设备屏幕尺寸
public let SCREEN_WIDTH=UIScreen.main.bounds.size.width
public let SCREEN_HEIGHT=UIScreen.main.bounds.size.height
//获取视图尺寸
public func VIEW_WIDTH(view:UIView)->CGFloat{
    return view.frame.size.width
}
public func VIEW_HEIGHT(view:UIView)->CGFloat{
    return view.frame.size.height
}

