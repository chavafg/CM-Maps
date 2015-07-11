//
//  NewPlaces.h
//  CM-Maps
//
//  Created by chava on 7/7/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewPlaces : UIViewController


@property (strong, nonatomic) IBOutlet UITextField *placeTextAdd;
@property (strong, nonatomic) IBOutlet UITextField *areaTextAdd;
@property (strong, nonatomic) IBOutlet UITextField *latTextAdd;

@property (strong, nonatomic) IBOutlet UITextField *longTextAdd;



- (IBAction)addPlacePressed:(id)sender;


@end
