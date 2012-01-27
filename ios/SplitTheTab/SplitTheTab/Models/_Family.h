// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Family.h instead.

#import <CoreData/CoreData.h>


@class Bill;
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





@property (nonatomic, retain) Bill* bill;

//- (BOOL)validateBill:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSSet* categories;

- (NSMutableSet*)categoriesSet;




@end

@interface _Family (CoreDataGeneratedAccessors)

- (void)addCategories:(NSSet*)value_;
- (void)removeCategories:(NSSet*)value_;
- (void)addCategoriesObject:(FamilyCategory*)value_;
- (void)removeCategoriesObject:(FamilyCategory*)value_;

@end

@interface _Family (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;





- (Bill*)primitiveBill;
- (void)setPrimitiveBill:(Bill*)value;



- (NSMutableSet*)primitiveCategories;
- (void)setPrimitiveCategories:(NSMutableSet*)value;


@end
