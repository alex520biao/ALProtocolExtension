//
//  ALAppDelegate.h
//  ALProtocolExtension
//
//  Created by alex520biao on 06/17/2016.
//  Copyright (c) 2016 alex520biao. All rights reserved.
//

@import UIKit;

@interface ALAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/*!
 *  @brief 底层导航控制器
 */
@property (strong, nonatomic) UINavigationController *naviController;

@end
