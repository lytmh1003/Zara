//
//  VcFrist-Image.m
//  Zara
//
//  Created by 李育腾 on 2022/6/6.
//

#import "VcFrist-Image.h"
#define kScreenWidth [UIScreen mainScreen].bounds.size.width


@interface VcFrist_Image ()

@end

@implementation VcFrist_Image

- (void)viewDidLoad {
    // 左右切换button
    UIButton* btnLeft = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton* btnRight = [UIButton buttonWithType:UIButtonTypeCustom];
    btnLeft.frame = CGRectMake(0, (self.view.frame.size.height) / 2, 40, 40);
    btnRight.frame = CGRectMake(self.view.frame.size.width - 50, (self.view.frame.size.height) / 2, 40, 40);
    UIImage* icon1 = [UIImage imageNamed:@"UIbntL.jpeg"];
    UIImage* icon2 = [UIImage imageNamed:@"UIbtnR.jpeg"];
    [btnLeft setImage:icon1 forState:UIControlStateNormal];
    [btnRight setImage:icon2 forState:UIControlStateNormal];

    [btnLeft addTarget:self action:@selector(pressBtnLeft) forControlEvents:UIControlEventTouchUpInside];
    [btnRight addTarget:self action:@selector(pressBtnRight) forControlEvents:UIControlEventTouchUpInside];
    
    [super viewDidLoad];
    // 根据系统风格设定分栏按钮
    UITabBarItem* tb1 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:101];

    tb1.badgeValue = @"新品";
    self.tabBarItem = tb1;
//    self.navigationItem.title = @"夏季新品展示";
    
    
    self.imageNameList = @[@"WechatIMG25276.jpeg", @"WechatIMG25272.jpeg", @"WechatIMG25273.jpeg", @"WechatIMG25274.jpeg", @"WechatIMG25275.jpeg", @"WechatIMG25276.jpeg", @"WechatIMG25272.jpeg"];
    
    [self setupImage];
    
    [self.view addSubview:btnLeft];
    [self.view addSubview:btnRight];
}
/// 将图片放置在UIScrollView上
/// // 无线轮播
- (void)setupImage {
    /// 在UIScrollView的最前面添加一张图片
    UIImageView *firstImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, self.scrollView.frame.size.height)];
    /// 图片名是最后一张图片
    firstImageView.image = [UIImage imageNamed:self.imageNameList.lastObject];
    [self.scrollView addSubview:firstImageView];
    
    /// 添加图片
    for (NSInteger index = 0; index < self.imageNameList.count; index ++) {
        /// UIScrollView上的每一张图片
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake((index + 1) * kScreenWidth, 0, kScreenWidth, self.view.frame.size.height)];
        imageView.image = [UIImage imageNamed:self.imageNameList[index]];
        
        [self.scrollView addSubview:imageView];
        self.scrollView.contentSize = CGSizeMake((index + 2) * self.scrollView.bounds.size.width, 0);
    }
    
    /// 在UIScrollView的最后面添加一张图片
    UIImageView *lastImageView = [[UIImageView alloc] initWithFrame:CGRectMake((self.imageNameList.count + 1) * kScreenWidth, 0, kScreenWidth, self.view.frame.size.height)];
    /// 图片名是第一张图片
    lastImageView.image = [UIImage imageNamed:self.imageNameList.firstObject];
    [self.scrollView addSubview:lastImageView];
    
    /// 设置UIScrollView的偏移量
    self.scrollView.contentSize = CGSizeMake((self.imageNameList.count + 2) * self.view.bounds.size.width, 0);
    
    /// 设置UIScrollView的起始偏移距离（将第一张图片跳过）
    self.scrollView.contentOffset = CGPointMake(kScreenWidth, 0);
    
    /// 图片总数
    self.pageControl.numberOfPages = self.imageNameList.count;
    self.pageControl.currentPage = 0;
}
 
#pragma mark - UIScrollViewDelegate
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    /// 当UIScrollView滑动到第一位停止时，将UIScrollView的偏移位置改变
    if (scrollView.contentOffset.x == 0) {
        scrollView.contentOffset = CGPointMake(self.imageNameList.count * kScreenWidth, 0);
        self.pageControl.currentPage = self.imageNameList.count;
    /// 当UIScrollView滑动到最后一位停止时，将UIScrollView的偏移位置改变
    } else if (scrollView.contentOffset.x == (self.imageNameList.count + 1)* kScreenWidth) {
        scrollView.contentOffset = CGPointMake(kScreenWidth, 0);
        self.pageControl.currentPage = 0;
    } else {
        self.pageControl.currentPage = scrollView.contentOffset.x / kScreenWidth - 1;
    }
}
 
#pragma mark - Get方法
- (UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 200)];
        _scrollView.pagingEnabled = YES;
        _scrollView.clipsToBounds = NO;
        _scrollView.scrollEnabled = YES;
        _scrollView.bounces = NO;
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.showsVerticalScrollIndicator = NO;
        _scrollView.delegate = self;
        
        [self.view addSubview:_scrollView];
    }
    return _scrollView;
}
 
-(UIPageControl *)pageControl {
    if (!_pageControl) {
        _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 500, kScreenWidth, 50)];
        
        _pageControl.userInteractionEnabled = NO;
        _pageControl.pageIndicatorTintColor = [UIColor blackColor];
        _pageControl.currentPageIndicatorTintColor = [UIColor grayColor];
        [self.view addSubview:_pageControl];
    }
    return _pageControl;
}


-(void) pressBtnLeft {
    NSLog(@"pressBtnLeft");
    int page = _scrollView.contentOffset.x / self.view.frame.size.width;
    _scrollView.contentOffset = CGPointMake(self.view.frame.size.width * (page - 1), 0);
    if (page == 0) {
        _scrollView.contentOffset = CGPointMake(self.view.frame.size.width * 5, 0);
        page = 5;
    }
}
-(void) pressBtnRight {
    NSLog(@"pressBtnRight");
    int page = _scrollView.contentOffset.x / self.view.frame.size.width;
      _scrollView.contentOffset = CGPointMake(self.view.frame.size.width * (page + 1), 0);
      if (page == 7){
      _scrollView.contentOffset = CGPointMake(self.view.frame.size.width * 1, 0);
      }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
