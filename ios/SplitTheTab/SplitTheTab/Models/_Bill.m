// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Bill.m instead.

#import "_Bill.h"

@implementation BillID
@end

@implementation _Bill

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Bill" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Bill";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Bill" inManagedObjectContext:moc_];
}

- (BillID*)objectID {
	return (BillID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic closeDate;






@dynamic createDate;






@dynamic name;






@dynamic note;






@dynamic expenses;

	
- (NSMutableSet*)expensesSet {
	[self willAccessValueForKey:@"expenses"];
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"expenses"];
	[self didAccessValueForKey:@"expenses"];
	return result;
}
	

@dynamic families;

	
- (NSMutableSet*)familiesSet {
	[self willAccessValueForKey:@"families"];
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"families"];
	[self didAccessValueForKey:@"families"];
	return result;
}
	

@dynamic incomes;

	
- (NSMutableSet*)incomesSet {
	[self willAccessValueForKey:@"incomes"];
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"incomes"];
	[self didAccessValueForKey:@"incomes"];
	return result;
}
	

@dynamic transactions;

	
- (NSMutableSet*)transactionsSet {
	[self willAccessValueForKey:@"transactions"];
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"transactions"];
	[self didAccessValueForKey:@"transactions"];
	return result;
}
	





@end
