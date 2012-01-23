// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FamilyCategory.h instead.

#import <CoreData/CoreData.h>
#import "Category.h"

@class Family;


@interface FamilyCategoryID : NSManagedObjectID {}
@end

@interface _FamilyCategory : Category {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (FamilyCategoryID*)objectID;





@property (nonatomic, retain) Family* family;

//- (BOOL)validateFamily:(id*)value_ error:(NSError**)error_;




@end

@interface _FamilyCategory (CoreDataGeneratedAccessors)

@end

@interface _FamilyCategory (CoreDataGeneratedPrimitiveAccessors)



- (Family*)primitiveFamily;
- (void)setPrimitiveFamily:(Family*)value;


@end
