//
//  ViewController.m
//  MyTestSDKDemo
//
//  Created by LYH on 2019/9/2.
//  Copyright © 2019 LYH. All rights reserved.
//

#import "ViewController.h"
#import <MyTestSDK/MyStyleView.h>
#import <MyTestSDK/TestViewController.h>

@interface ViewController ()<MyStyleViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    MyStyleView *styleView = [[MyStyleView alloc] initWithFrame:CGRectMake(0, 80, self.view.frame.size.width, 40) titleArray:@[@"漯河",@"新乡",@"杭州",@"广州"]];
    styleView.delegate = self;
    [self.view addSubview:styleView];
}

- (void)view:(MyStyleView *)view clickButtonWithTag:(NSInteger)buttonTag {
    switch (buttonTag) {
        case ShowCityName_LuoHe: {
            TestViewController *testVC = [[TestViewController alloc] init];
            [self.navigationController pushViewController:testVC animated:YES];
        }
            break;
            
        case ShowCityName_XinXiang: {
            
        }
            break;
            
        case ShowCityName_HangZhou: {
            
        }
            break;
            
        case ShowCityName_GuangZhou: {
            TestViewController *testVC = [[TestViewController alloc] init];
            [self.navigationController pushViewController:testVC animated:YES];
        }
            break;
            
        default:
            break;
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    TestViewController *testVC = [[TestViewController alloc] init];
    [self.navigationController pushViewController:testVC animated:YES];
}



@end
