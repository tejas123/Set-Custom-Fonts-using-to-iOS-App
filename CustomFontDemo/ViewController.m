//
//  ViewController.m
//  CustomFontDemo
//
//  Created by TheAppGuruz-New-6 on 12/05/14.
//  Copyright (c) 2014 TheAppGuruz-New-6. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSMutableArray *font;
}
@synthesize lblDemo;
- (void)viewDidLoad
{
    [super viewDidLoad];
    font=[[NSMutableArray alloc]initWithObjects:@"Campanile",@"Capella",@"City Contrasts",@"Comicate",@"Sixty",@"Milit", nil];

	// Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [font count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    [cell setBackgroundColor:[UIColor clearColor]];
    NSString *fontName = [font objectAtIndex:[indexPath row]];
    
    [cell.textLabel setText:fontName];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Select Fonts";
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
       [lblDemo setFont:[UIFont fontWithName:[font objectAtIndex:indexPath.row] size:20]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
