//
//  newsimpletableViewController.m
//  NewSimpleTable
//
//  Created by Benjie dela Vega on 2/11/15.
//  Copyright (c) 2015 Benjie dela Vega. All rights reserved.
//
#import "newsimpletableViewController.h"
#import "newsimpleTableViewCell.h"

@interface newsimpletableViewController ()
{
    newsimpleTableViewCell * locatorCell;
    NSArray * arr;
    NSString *i;
}

@end
@implementation newsimpletableViewController

-(void)viewDidLoad{
    arr = @[@"Benjie", @"Benjie Banana", @"BJ", @"Steffi", @"Joriel",@"Riza",@"Sir Yappie",@"Kuya Julian",@"Kuya Patrick",@"Kuya Aljohn"];
}

-(void)customActionPressed :(id)sender
{
    //Dito yung lalabas pag na-press ang button.
    UIButton *btn = (UIButton  *) sender;
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Aray!"
    message:[NSString stringWithFormat: @"Napindot mo ang %@", /*pathToCell.row + 1]*/ [arr objectAtIndex:btn.tag]]
                                                                                /*Yan ang ginamit ^ para pag tinap yung button, lalabas alert*/
                                                                                /*instead of arr[0]*/
    delegate:self cancelButtonTitle:@"Isa Pa!"
    otherButtonTitles:nil];
    [alertView show];
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // number ng sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // bilang ng rows o kaya cells
    return 10;
}
// palitan hitsura ng table view cells.

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"cell";
    locatorCell = (newsimpleTableViewCell *) [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (locatorCell == nil) {
    locatorCell = [[newsimpleTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    //Yung sa pag ayos nung incrementation ng cell.
    //locatorCell.textLabel.text = [NSString stringWithFormat:@"Piliin ang #%i", indexPath.row + 1];
    locatorCell.textLabel.text = [NSString stringWithFormat:@"%@", arr [(long)indexPath.row]];
    
    //pag gawa ng button at pagdagdag sa cells
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self
    action:@selector(customActionPressed:)
    forControlEvents:UIControlEventTouchDown];
    [button setTitle:@"Press me po!" forState:UIControlStateNormal];
    button.frame = CGRectMake(150.0f, 5.0f, 150.0f, 30.0f);
    button.tag = indexPath.row;
    [locatorCell addSubview:button];
    return locatorCell;
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //paglabas ng alert na sinasabing na-tap yung cell.
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Aray!"
    message:[NSString stringWithFormat: @"Napili si %@", arr[(long) indexPath.row]]
    delegate:self cancelButtonTitle:@"Isa pa!"
    otherButtonTitles:nil];
    [alertView show];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

@end