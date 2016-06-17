//
//  ALViewController.m
//  ALProtocolExtension
//
//  Created by alex520biao on 06/17/2016.
//  Copyright (c) 2016 alex520biao. All rights reserved.
//

#import "ALViewController.h"
#import "ALTestProtocol.h"

//// For a magic reserved keyword color, use @defs(your_protocol_name)
//#define pp _pk_extension
//
//// Interface
//#define _pk_extension1($protocol) _pk_extension_imp1($protocol, _pk_get_container_class($protocol))
//
//// Implementation
//#define _pk_extension_imp1($protocol, $container_class) \
//    protocol $protocol; \
//    @interface $container_class : NSObject <$protocol> @end \
//    @implementation $container_class \
//    + (void)load { \
//        _pk_extension_load(@protocol($protocol), $container_class.class); \
//    } \
//
//@pp(ALTestProtocol)
//
//@end


@interface ALViewController ()<ALTestProtocol>

@end


@implementation ALViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    //Protocol添加属性
    self.fork = @"forkdog";
    
    NSLog(@"%@",self.fork);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
