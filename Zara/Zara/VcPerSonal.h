//
//  VcPerSonal.h
//  Zara
//
//  Created by 李育腾 on 2022/6/6.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VcPerSonal : UIViewController<UITableViewDelegate, UITableViewDataSource> {
    UITableView* _tableView;
    
    // 声明数据源来显示数组
    NSMutableArray* _arrayData;
}

@end

NS_ASSUME_NONNULL_END
