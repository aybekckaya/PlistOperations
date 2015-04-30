//
//  ViewController.m
//  PlistOperations
//
//  Created by aybek can kaya on 4/30/15.
//  Copyright (c) 2015 aybek can kaya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [self test];
    
    
    
}


-(void)test
{
    // Create Object
    
    NSMutableArray *arrMute = [[NSMutableArray alloc]init];
    [arrMute addObject:[NSNumber numberWithFloat:1.5]];
     [arrMute addObject:[NSNumber numberWithInt:2]];
    [arrMute addObject:@"dump String"];
   
    NSArray *tempArr = @[@"Istanbul" , @"Ankara" , @"Izmir" , @"Eskisehir"];
    
    [arrMute addObject:tempArr];
    
    
    NSDictionary *dct  = @{@"theVal" : arrMute , @"ddString" : @"I am a string value" , @"Number" : [NSNumber numberWithFloat:12.3233323213]};
    
    NSLog(@"dct:%@ " , dct);
    
    Plist *list =[[Plist alloc] initWithPlistName:@"asd"];
    [list write:dct Key:@"tempDct"];
    
    NSString *strVal = @"I am a lonely string value";
    [list write:strVal Key:@"lonelyString"];
    
    
    NSNumber *number  = [NSNumber numberWithInt:3];
    [list write:number Key:@"lonelyNumber"];
    
    
    
    // READ
    id allVals = [list readAll];
    NSDictionary *dctTemp = [list read:@"tempDct"];
    
    
    
    // Remove Object
    [list removeObjectWithKey:@"lonelyNumber"];
    
    [list removeAllObjects];
    
    
    // static Methods
    NSArray *listAll = [Plist allLists];
    
    //remove
    [Plist deletePlist:@"asd"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
