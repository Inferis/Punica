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

	

@dynamic incomes;

	

@dynamic transactions;

	





@end
