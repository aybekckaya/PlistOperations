 
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



All Methods : 

<pre> 

/**
    Creates Plist in documents folder if it has not created yet. 
    @param : plistName (name of plist without extension "plist")
 */
-(id)initWithPlistName:(NSString *)plistName;

/**
  @return plistName without path components.
 */
-(NSString *)plistNameOfInstance;

/**
    writes the contents of val with specified key
 */
-(void)write:(id) val Key:(NSString *)key;

/**
    remove the object which has specified key
 */
-(void)removeObjectWithKey:(NSString *)key;

/**
    clears the contents of Plist
 */
-(void)removeAllObjects;

/**
   reads the  contents of plist with given key
 */
-(id)read:(NSString *)key;


/**
    reads all contents in Plist
 */
-(id)readAll;


-(NSArray *)allKeys;

-(BOOL)keyExists:(NSString *)key;


/**
   static method : return plist objects in documents folder
 */
+(NSArray *)allLists;

+(void)deletePlist:(NSString *)plistName;

+(void)deleteAllPlists;




</pre>

