// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Family.h instead.

#import <CoreData/CoreData.h>


@class FamilyCategory;



@interface FamilyID : NSManagedObjectID {}
@end

@interface _Family : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (FamilyID*)objectID;




@property (nonatomic, retain) NSString *name;


//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) FamilyCategory* categories;

//- (BOOL)validateCategories:(id*)value_ error:(NSError**)error_;




@end

@interface _Family (CoreDataGeneratedAccessors)

@end

@interface _Family (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;





- (FamilyCategory*)primitiveCategories;
- (void)setPrimitiveCategories:(FamilyCategory*)value;


@end
