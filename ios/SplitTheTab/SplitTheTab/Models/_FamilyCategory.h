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




@property (nonatomic, retain) NSNumber *memberCount;


@property int memberCountValue;
- (int)memberCountValue;
- (void)setMemberCountValue:(int)value_;

//- (BOOL)validateMemberCount:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) Family* family;

//- (BOOL)validateFamily:(id*)value_ error:(NSError**)error_;




@end

@interface _FamilyCategory (CoreDataGeneratedAccessors)

@end

@interface _FamilyCategory (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveMemberCount;
- (void)setPrimitiveMemberCount:(NSNumber*)value;

- (int)primitiveMemberCountValue;
- (void)setPrimitiveMemberCountValue:(int)value_;





- (Family*)primitiveFamily;
- (void)setPrimitiveFamily:(Family*)value;


@end
