//
//  AppDelegate.h
//  GroupBuy
//
//  Created by ZhongMing on 31/12/16.
//  Copyright © 2016 ZhongMing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

