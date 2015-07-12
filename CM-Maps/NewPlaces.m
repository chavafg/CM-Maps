//
//  NewPlaces.m
//  CM-Maps
//
//  Created by chava on 7/7/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "NewPlaces.h"
#import "Declarations.h"
#import "Start.h"

@interface NewPlaces ()

@end

@implementation NewPlaces

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

- (IBAction)addPlacePressed:(id)sender {
    
    placesInList = [[NSMutableDictionary alloc] initWithContentsOfFile: path];
   
    //maPlacesLat     = [savedPlaces objectForKey:@"placeLatitude"];
    //NSLog(@"placesLat = %@", maPlacesLat);
    //maPlacesLng     = [savedPlaces objectForKey:@"placeLongitude"];
    //NSLog(@"placesLat = %@", maPlacesLng);
    //maPlacesTitle   = [savedPlaces objectForKey:@"placeTitle"];
    //NSLog(@"placesLat = %@", maPlacesLng);
    //maPlacesSnippet = [savedPlaces objectForKey:@"placeSnippet"];
    //NSLog(@"placesLat = %@", maPlacesLng);
    
    placesInList = [[NSMutableDictionary alloc] initWithContentsOfFile: path];
    
    //here add elements to data file and write data to file
    //int value = 5;
    //NSString *placeText = [self.placeText.text];
    //[savedPlaces setObject:[NSNumber numberWithInt: value] forKey:@"value"];
    
    
    [maPlacesTitle addObject:self.placeText.text];
    [placesInList setObject:maPlacesTitle forKey:@"placeTitle"];
    
    [maPlacesLng addObject:self.longText.text];
    [placesInList setObject:maPlacesSnippet forKey:@"placeLongitude"];
    
    [maPlacesLat addObject:self.latText.text];
    [placesInList setObject:maPlacesLat forKey:@"placeLatitude"];
    
    [maPlacesSnippet addObject:self.areaText.text];
    [placesInList setObject:maPlacesLng forKey:@"placeSnippet"];

    [placesInList writeToFile: path atomically:YES];
    NSLog(@"savedPlaces = %@", placesInList);
    printf("agarre el boton");
    [self dismissViewControllerAnimated:YES completion:nil];
    Start *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Start"];
    [self presentViewController:viewController animated:YES completion:nil];
    
}

- (IBAction)backPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
