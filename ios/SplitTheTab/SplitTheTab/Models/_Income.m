// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Income.m instead.

#import "_Income.h"

@implementation IncomeID
@end

@implementation _Income

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Income" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Income";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Income" inManagedObjectContext:moc_];
}

- (IncomeID*)objectID {
	return (IncomeID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}








@end
