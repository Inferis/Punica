// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Category.h instead.

#import <CoreData/CoreData.h>






@interface CategoryID : NSManagedObjectID {}
@end

@interface _Category : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (CategoryID*)objectID;




@property (nonatomic, retain) NSString *name;


//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSDecimalNumber *ratio;


//- (BOOL)validateRatio:(id*)value_ error:(NSError**)error_;





@end

@interface _Category (CoreDataGeneratedAccessors)

@end

@interface _Category (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSDecimalNumber*)primitiveRatio;
- (void)setPrimitiveRatio:(NSDecimalNumber*)value;




@end
