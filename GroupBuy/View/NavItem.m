//
//  NavItem.m
//  GroupBuy
//
//  Created by ZhongMing on 1/01/17.
//  Copyright © 2017 ZhongMing. All rights reserved.
//

#import "NavItem.h"

@implementation NavItem


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+ (instancetype)makeItem{
    return [[[NSBundle mainBundle]loadNibNamed:@"NavItem" owner:self options:nil]firstObject];
}

- (void)addtarget:(id)target action:(SEL)action{
    [self.btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
}

@end
