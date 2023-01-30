//
//  UIViewMyself.h
//  Zara
//
//  Created by 李育腾 on 2022/7/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewMyself : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    UITableView* _tableView;
    NSMutableArray* tableArray;
    
}

@end

NS_ASSUME_NONNULL_END
