//
//  ViewController.m
//  Converter
//
//  Created by Rana on 7/8/16.
//  Copyright © 2016 Rakib. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//weak or strong for memory management."IBOutlet" is for telling the compiler that to connect.it is not a type.it is riliable for the little circle left side of the property."UITextField" is the type.it is textfield type
@property (weak, nonatomic) IBOutlet UITextField *milesField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

//button action should put here in the implementation section.cause it is not a property.if we made it global by putting in the .h file it also creates in .m file in the implementation section
- (IBAction)convertPressed {
    
    //float textvalue = self.milesField.text.floatValue; or
    
    //here use self cause milesField is a property.
    float textvalue = [self.milesField.text floatValue];
    textvalue *=5280.0; //for calculating have to use primitive value
    NSString *milesValue = [NSString stringWithFormat:@"%f",textvalue];
    self.resultLabel.text = milesValue;
    

}

@end
