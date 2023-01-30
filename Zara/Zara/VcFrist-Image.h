//
//  VcFrist-Image.h
//  Zara
//
//  Created by 李育腾 on 2022/6/6.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VcFrist_Image : UIViewController <UIScrollViewDelegate> {
//    UIScrollView* _scrollView;
}
@property(nonatomic, strong) UIScrollView* scrollView;
@property(nonatomic, strong) NSArray <NSString *> *imageNameList;
@property(nonatomic, strong) UIPageControl *pageControl;
@end

NS_ASSUME_NONNULL_END
