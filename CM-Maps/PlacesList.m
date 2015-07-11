//
//  PlacesList.m
//  CM-Maps
//
//  Created by chava on 7/7/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//


#import "PlacesList.h"
#import "placesCell.h"
#import "NewPlaces.h"
#import "Start.h"

@interface PlacesList ()

@end

@implementation PlacesList

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

/**********************************************************************************************/
#pragma mark - Table Methods
/**********************************************************************************************/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Initialize cell
    placesCell *cell = (placesCell *)[tableView dequeueReusableCellWithIdentifier:@"placesCell"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"placesCell" bundle:nil] forCellReuseIdentifier:@"placesCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"placesCell"];
    }
    //Fill cell with info from arrays
    cell.placeLblCell.text   = @"hola";
    cell.areaLblCell.text = @"hola2";
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (IBAction)goMapPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    //Start *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Start"];
    //[self presentViewController:viewController animated:YES completion:nil];
}

- (IBAction)addPlacePressed:(id)sender {
    NewPlaces *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"NewPlaces"];
    [self presentViewController:viewController animated:YES completion:nil];
}
@end
