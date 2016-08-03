//
//  ViewController.h
//  playground
//
//  Created by Jupiter Li on 3/08/2016.
//  Copyright © 2016 Jupiter Li. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "JSONParser.h"

@interface ViewController : UIViewController

- (IBAction) JSONParser_parse:(id)sender;
- (IBAction) JSONParser_getInt:(id)sender;
- (IBAction) JSONParser_getString:(id)sender;

@end

