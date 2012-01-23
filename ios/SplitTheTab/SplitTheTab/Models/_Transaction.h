// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Transaction.h instead.

#import <CoreData/CoreData.h>


@class Bill;






@interface TransactionID : NSManagedObjectID {}
@end

@interface _Transaction : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (TransactionID*)objectID;




@property (nonatomic, retain) NSDecimalNumber *amount;


//- (BOOL)validateAmount:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *note;


//- (BOOL)validateNote:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSDate *transactionDate;


//- (BOOL)validateTransactionDate:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *what;


//- (BOOL)validateWhat:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) Bill* bill;

//- (BOOL)validateBill:(id*)value_ error:(NSError**)error_;




@end

@interface _Transaction (CoreDataGeneratedAccessors)

@end

@interface _Transaction (CoreDataGeneratedPrimitiveAccessors)


- (NSDecimalNumber*)primitiveAmount;
- (void)setPrimitiveAmount:(NSDecimalNumber*)value;




- (NSString*)primitiveNote;
- (void)setPrimitiveNote:(NSString*)value;




- (NSDate*)primitiveTransactionDate;
- (void)setPrimitiveTransactionDate:(NSDate*)value;




- (NSString*)primitiveWhat;
- (void)setPrimitiveWhat:(NSString*)value;





- (Bill*)primitiveBill;
- (void)setPrimitiveBill:(Bill*)value;


@end
