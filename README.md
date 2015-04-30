 
 Helper class to make plist operations easier. 
 
 Create Plist:

<pre> Plist *list =[[Plist alloc] initWithPlistName:@"myPlist"];</pre>

Read From Plist with Key: 

<pre> Plist *list =[[Plist alloc] initWithPlistName:@"myPlist"];
        NSDictionary *dctTemp = [list read:@"tempDct"];
</pre>

Write to Plist with Key: 

<pre>

   NSMutableArray *arrMute = [[NSMutableArray alloc]init];
    [arrMute addObject:[NSNumber numberWithFloat:1.5]];
     [arrMute addObject:[NSNumber numberWithInt:2]];
    [arrMute addObject:@"dump String"];
   
    NSArray *tempArr = @[@"Istanbul" , @"Ankara" , @"Izmir" , @"Eskisehir"];
    
    [arrMute addObject:tempArr];
    
    
    NSDictionary *dct  = @{@"theVal" : arrMute , @"ddString" : @"I am a string value" , @"Number" : [NSNumber numberWithFloat:12.3233323213]};
    
   
    
    Plist *list =[[Plist alloc] initWithPlistName:@"myPlist"];
    [list write:dct Key:@"tempDct"];

</pre>
