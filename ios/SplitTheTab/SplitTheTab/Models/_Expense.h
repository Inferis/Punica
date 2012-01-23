// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Expense.h instead.

#import <CoreData/CoreData.h>
#import "Transaction.h"







@interface ExpenseID : NSManagedObjectID {}
@end

@interface _Expense : Transaction {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ExpenseID*)objectID;




@property (nonatomic, retain) NSDecimalNumber *locationLatitude;


//- (BOOL)validateLocationLatitude:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSDecimalNumber *locationLongitude;


//- (BOOL)validateLocationLongitude:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *locationName;


//- (BOOL)validateLocationName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *photo;


//- (BOOL)validatePhoto:(id*)value_ error:(NSError**)error_;





@end

@interface _Expense (CoreDataGeneratedAccessors)

@end

@interface _Expense (CoreDataGeneratedPrimitiveAccessors)


- (NSDecimalNumber*)primitiveLocationLatitude;
- (void)setPrimitiveLocationLatitude:(NSDecimalNumber*)value;




- (NSDecimalNumber*)primitiveLocationLongitude;
- (void)setPrimitiveLocationLongitude:(NSDecimalNumber*)value;




- (NSString*)primitiveLocationName;
- (void)setPrimitiveLocationName:(NSString*)value;




- (NSString*)primitivePhoto;
- (void)setPrimitivePhoto:(NSString*)value;




@end
