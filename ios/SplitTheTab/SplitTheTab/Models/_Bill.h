// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Bill.h instead.

#import <CoreData/CoreData.h>


@class Expense;
@class Family;
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





@property (nonatomic, retain) NSSet* expenses;

- (NSMutableSet*)expensesSet;




@property (nonatomic, retain) NSSet* families;

- (NSMutableSet*)familiesSet;




@property (nonatomic, retain) NSSet* incomes;

- (NSMutableSet*)incomesSet;




@property (nonatomic, retain) NSSet* transactions;

- (NSMutableSet*)transactionsSet;




@end

@interface _Bill (CoreDataGeneratedAccessors)

- (void)addExpenses:(NSSet*)value_;
- (void)removeExpenses:(NSSet*)value_;
- (void)addExpensesObject:(Expense*)value_;
- (void)removeExpensesObject:(Expense*)value_;

- (void)addFamilies:(NSSet*)value_;
- (void)removeFamilies:(NSSet*)value_;
- (void)addFamiliesObject:(Family*)value_;
- (void)removeFamiliesObject:(Family*)value_;

- (void)addIncomes:(NSSet*)value_;
- (void)removeIncomes:(NSSet*)value_;
- (void)addIncomesObject:(Income*)value_;
- (void)removeIncomesObject:(Income*)value_;

- (void)addTransactions:(NSSet*)value_;
- (void)removeTransactions:(NSSet*)value_;
- (void)addTransactionsObject:(Transaction*)value_;
- (void)removeTransactionsObject:(Transaction*)value_;

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





- (NSMutableSet*)primitiveExpenses;
- (void)setPrimitiveExpenses:(NSMutableSet*)value;



- (NSMutableSet*)primitiveFamilies;
- (void)setPrimitiveFamilies:(NSMutableSet*)value;



- (NSMutableSet*)primitiveIncomes;
- (void)setPrimitiveIncomes:(NSMutableSet*)value;



- (NSMutableSet*)primitiveTransactions;
- (void)setPrimitiveTransactions:(NSMutableSet*)value;


@end
