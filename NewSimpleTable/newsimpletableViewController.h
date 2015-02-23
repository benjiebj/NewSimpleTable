//
//  newsimpletableViewController.h
//  NewSimpleTable
//
//  Created by Benjie dela Vega on 2/11/15.
//  Copyright (c) 2015 Benjie dela Vega. All rights reserved.
//

#import <UIKit/UIKit.h>

//default para lumabas yung tableview
@interface newsimpletableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    
    IBOutlet UITableView *myTableView;
    
}

@end
