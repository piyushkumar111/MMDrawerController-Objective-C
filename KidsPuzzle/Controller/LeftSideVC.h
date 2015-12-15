//
//  LeftSideVC.h
//  KidsPuzzle
//
//  Created by Piyush Kachariya on 10/18/15.
//  Copyright © 2015 Kachariya&co. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftSideVC : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,retain) IBOutlet UITableView *tblOptions;

@end
