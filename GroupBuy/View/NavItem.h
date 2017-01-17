//
//  NavItem.h
//  GroupBuy
//
//  Created by ZhongMing on 1/01/17.
//  Copyright © 2017 ZhongMing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavItem : UIView

+(instancetype) makeItem;
@property (strong, nonatomic) IBOutlet UIButton *btn;
    
-(void)addtarget:(id)target action:(SEL)action;

@end
