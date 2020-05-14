//
// Created by Alias on 2020/5/14.
// Copyright (c) 2020 Alias. All rights reserved.
//

#import "RecommendViewController.h"

/**
 * @Author: siyukok
 * @Date: 2020/5/14 6:19 下午
 * @Version 1.0
 */
@interface RecommendViewController()<UIScrollViewDelegate>
@end

@implementation RecommendViewController {

}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    UIScrollView *uiScrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    uiScrollView.contentSize = CGSizeMake(self.view.bounds.size.width*5, self.view.bounds.size.height);

    NSArray *colorArr = @[[UIColor redColor], [UIColor blueColor], [UIColor greenColor], [UIColor grayColor], [UIColor yellowColor]];

    for (int i = 0; i < 5; i++) {
        [uiScrollView addSubview:({
            UIView *uiView = [[UIView alloc] initWithFrame:CGRectMake(uiScrollView.bounds.size.width * i, 0, uiScrollView.bounds.size.width, uiScrollView.bounds.size.height)];
            uiView.backgroundColor = colorArr[(NSUInteger) i];
            uiView;
        })];
    }
    uiScrollView.pagingEnabled = YES;
    uiScrollView.delegate = self;
    [self.view addSubview:uiScrollView];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {

}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {

}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {

}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {

}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {

}


@end