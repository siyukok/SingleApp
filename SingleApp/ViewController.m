//
//  ViewController.m
//  SingleApp
//
//  Created by Alias on 2020/5/6.
//  Copyright © 2020 Alias. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    UITableView *uiTableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    uiTableView.dataSource = self;
    uiTableView.delegate = self;
    [self.view addSubview:uiTableView];
}

- (void)pushController {

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"id"];
    if (!cell) {
        cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    }
    [cell initLabelText];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *uiViewController = [[UIViewController alloc] init];
    uiViewController.title = [NSString stringWithFormat:@"%@", @(indexPath.row)];
    uiViewController.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:uiViewController animated:YES];
}


@end
