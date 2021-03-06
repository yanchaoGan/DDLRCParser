//
//  DDRootViewController.m
//  LRCParserDemo
//
//  Created by Normal on 16/2/25.
//  Copyright © 2016年 wwwbbat. All rights reserved.
//

#import "DDRootViewController.h"
#import "DDDetailViewController.h"

@interface DDRootViewController ()
@end

@implementation DDRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"TestLRC1" ofType:@""];
        [self performSegueWithIdentifier:@"SegueIdentifier" sender:path];
    }else{
        NSString *path = [[NSBundle mainBundle] pathForResource:@"TestLRC2" ofType:@""];
        [self performSegueWithIdentifier:@"SegueIdentifier" sender:path];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"SegueIdentifier"]) {
        DDDetailViewController *vc = segue.destinationViewController;
        vc.lrcPath = sender;
    }
}

@end
