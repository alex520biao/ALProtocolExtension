//
//  ALTestProtocol.h
//  ALProtocolExtension
//
//  Created by liubiao on 16/6/17.
//  Copyright © 2016年 alex520biao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ALProtocolExtension/ProtocolKit.h>

@protocol ALTestProtocol <NSObject>

@optional

/*!
 *  @brief 添加属性
 */
@property (nonatomic, copy) NSString *fork;


@end

// Protocol Extension

@defs(ALTestProtocol)

//添加属性方法实现
- (NSString*)fork {
    NSString *value = objc_getAssociatedObject(self, @"fork");
    return value;
}

- (void)setFork:(NSString*)fork {
    objc_setAssociatedObject(self, @"fork", fork, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end
