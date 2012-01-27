// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Expense.m instead.

#import "_Expense.h"

@implementation ExpenseID
@end

@implementation _Expense

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Expense" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Expense";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Expense" inManagedObjectContext:moc_];
}

- (ExpenseID*)objectID {
	return (ExpenseID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic locationLatitude;






@dynamic locationLongitude;






@dynamic locationName;






@dynamic photos;

	





@end
