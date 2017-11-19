//
//  ViewController.m
//  PreventContinuousClick
//
//  Created by 郑乐银 on 2017/11/16.
//  Copyright © 2017年 郑乐银. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Clicks.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [[UIButton alloc]init];
    button.frame = CGRectMake(self.view.frame.size.width/ 2 - 50, self.view.frame.size.height/ 2 - 20, 100, 40);
    button.layer.borderWidth = 1;
    button.clickDurationTime = 3;
    [button setTitleColor:[UIColor blueColor] forState:(UIControlStateNormal)];
    [button setTitle:@"点击我" forState:(UIControlStateNormal)];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:(UIControlEventTouchUpInside)];
        [self.view addSubview:button];
}
-(void)buttonClick {
    NSLog(@"点击我");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
