// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Bill.h instead.

#import <CoreData/CoreData.h>


@class Expense;
@class Income;
@class Transaction;






@interface BillID : NSManagedObjectID {}
@end

@interface _Bill : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (BillID*)objectID;




@property (nonatomic, retain) NSDate *closeDate;


//- (BOOL)validateCloseDate:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSDate *createDate;


//- (BOOL)validateCreateDate:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *name;


//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *note;


//- (BOOL)validateNote:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) Expense* expenses;

//- (BOOL)validateExpenses:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) Income* incomes;

//- (BOOL)validateIncomes:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) Transaction* transactions;

//- (BOOL)validateTransactions:(id*)value_ error:(NSError**)error_;




@end

@interface _Bill (CoreDataGeneratedAccessors)

@end

@interface _Bill (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveCloseDate;
- (void)setPrimitiveCloseDate:(NSDate*)value;




- (NSDate*)primitiveCreateDate;
- (void)setPrimitiveCreateDate:(NSDate*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSString*)primitiveNote;
- (void)setPrimitiveNote:(NSString*)value;





- (Expense*)primitiveExpenses;
- (void)setPrimitiveExpenses:(Expense*)value;



- (Income*)primitiveIncomes;
- (void)setPrimitiveIncomes:(Income*)value;



- (Transaction*)primitiveTransactions;
- (void)setPrimitiveTransactions:(Transaction*)value;


@end
