//
//  ViewController.m
//  SingleApp
//
//  Created by Alias on 2020/5/6.
//  Copyright © 2020 Alias. All rights reserved.
//

#import "ViewController.h"
@interface TestView : UIView
@end

@implementation TestView

- (instancetype)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)willMoveToSuperview:(nullable UIView *)newSuperview{
    [super willMoveToSuperview:newSuperview];
} 
- (void)didMoveToSuperview{
    [super didMoveToSuperview];
}
- (void)willMoveToWindow:(nullable UIWindow *)newWindow{
    [super willMoveToWindow:newWindow];
}
- (void)didMoveToWindow{
    [super didMoveToWindow];
}

@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TestView *view1 = [[TestView alloc] init];
    view1.backgroundColor = [UIColor redColor];
    view1.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:view1];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITapGestureRecognizer *tagGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(pushController)];
    
    [view1 addGestureRecognizer:tagGesture];
}

- (void)pushController{
    UIViewController *vc = [[UIViewController alloc] init];
    vc.navigationItem.title = @"内容";
    vc.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"right" style:UIBarButtonItemStylePlain target:self action:nil];
    vc.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:vc animated:true];
}

@end
