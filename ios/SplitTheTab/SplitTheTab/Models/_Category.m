// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Category.m instead.

#import "_Category.h"

@implementation CategoryID
@end

@implementation _Category

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Category" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Category";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Category" inManagedObjectContext:moc_];
}

- (CategoryID*)objectID {
	return (CategoryID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic name;






@dynamic ratio;










@end
