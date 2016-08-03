//
//  ViewController.m
//  playground
//
//  Created by Jupiter Li on 3/08/2016.
//  Copyright © 2016 Jupiter Li. All rights reserved.
//

#import "ViewController.h"

@interface ViewController() {
    NSString *json_str;
}

@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    json_str = @"{\"int\":10, \"string\":\"abc\", \"array\":[{\"int\":15},{\"int\":25}]}";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) JSONParser_parse:(id)sender {
    JSONParser *parser = [[JSONParser alloc] initWithJSONStr:json_str];
}

- (IBAction) JSONParser_getInt:(id)sender {
    JSONParser *parser = [[JSONParser alloc] initWithJSONStr:json_str];
    
    NSLog(@"int value is %d", [parser getIntegerValueOfKey:@"int"]);
}
- (IBAction) JSONParser_getString:(id)sender {
    JSONParser *parser = [[JSONParser alloc] initWithJSONStr:json_str];
    
    NSLog(@"string value is %@", [parser getStringValueOfKey:@"string"]);
}
- (IBAction) JSONParser_getArray:(id)sender {
    JSONParser *parser = [[JSONParser alloc] initWithJSONStr:json_str];

    NSArray *array = [parser getArrayValueOfKey:@"array"];
}

@end
