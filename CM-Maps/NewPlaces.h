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
@property (strong, nonatomic) IBOutlet UITextField *placeText;

@property (strong, nonatomic) IBOutlet UITextField *areaText;

@property (strong, nonatomic) IBOutlet UITextField *latText;

@property (strong, nonatomic) IBOutlet UITextField *longText;

- (IBAction)addPlacePressed:(id)sender;

- (IBAction)backPressed:(id)sender;


@end
