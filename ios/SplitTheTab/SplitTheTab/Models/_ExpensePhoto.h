// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ExpensePhoto.h instead.

#import <CoreData/CoreData.h>


@class Expense;




@interface ExpensePhotoID : NSManagedObjectID {}
@end

@interface _ExpensePhoto : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ExpensePhotoID*)objectID;




@property (nonatomic, retain) NSDate *dateTaken;


//- (BOOL)validateDateTaken:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *image;


//- (BOOL)validateImage:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) Expense* expense;

//- (BOOL)validateExpense:(id*)value_ error:(NSError**)error_;




@end

@interface _ExpensePhoto (CoreDataGeneratedAccessors)

@end

@interface _ExpensePhoto (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveDateTaken;
- (void)setPrimitiveDateTaken:(NSDate*)value;




- (NSString*)primitiveImage;
- (void)setPrimitiveImage:(NSString*)value;





- (Expense*)primitiveExpense;
- (void)setPrimitiveExpense:(Expense*)value;


@end
