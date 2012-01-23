// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Family.m instead.

#import "_Family.h"

@implementation FamilyID
@end

@implementation _Family

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Family" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Family";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Family" inManagedObjectContext:moc_];
}

- (FamilyID*)objectID {
	return (FamilyID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic name;






@dynamic categories;

	





@end
