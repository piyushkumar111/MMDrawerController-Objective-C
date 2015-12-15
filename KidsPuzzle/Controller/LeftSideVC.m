//
//  LeftSideVC.m
//  KidsPuzzle
//
//  Created by Piyush Kachariya on 10/18/15.
//  Copyright © 2015 Kachariya&co. All rights reserved.
//

#import "LeftSideVC.h"

@interface LeftSideVC ()
{
    NSArray *aryListOptions;
}
@end

@implementation LeftSideVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    aryListOptions = [NSArray arrayWithObjects: @"Home",@"Score", @"Age lesser then 1", @"Age 1 to 3",@"Age 4 to 6",@"Age 7 to 8",@"Random",nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if ([aryListOptions count] == 0 )
    {
        return 1;
    }
    return [aryListOptions count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [_tblOptions dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.textLabel.textColor = [UIColor lightGrayColor];
    [cell setBackgroundColor:[UIColor clearColor]];
    
    UILabel *textLabel = (UILabel*)[cell viewWithTag:2];
    textLabel.text = [aryListOptions objectAtIndex:indexPath.row];
    
    UIImageView *imgLogo = (UIImageView*)[cell viewWithTag:1];
    if (indexPath.row == 0)
    {
        imgLogo.image = [UIImage imageNamed:@"iconSearch"];
    }
    else if (indexPath.row == 1)
    {
        imgLogo.image = [UIImage imageNamed:@"ProfileImage"];
    }
    else if (indexPath.row == 2)
    {
        imgLogo.image = [UIImage imageNamed:@"iconTreat"];
    }
    else if (indexPath.row == 3)
    {
        imgLogo.image = [UIImage imageNamed:@"iconPin"];
    }
    else if (indexPath.row == 4)
    {
        imgLogo.image = [UIImage imageNamed:@"iconFriends"];
    }
    else if (indexPath.row == 5)
    {
        imgLogo.image = [UIImage imageNamed:@"iconPlaces"];
    }
    else if (indexPath.row == 7)
    {
        imgLogo.image = [UIImage imageNamed:@"iconAccount"];
    }
    else if (indexPath.row == 8)
    {
        imgLogo.image = [UIImage imageNamed:@"iconSignOut"];
    }
    return cell;
}


@end
