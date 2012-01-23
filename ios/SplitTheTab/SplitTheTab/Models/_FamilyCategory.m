// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FamilyCategory.m instead.

#import "_FamilyCategory.h"

@implementation FamilyCategoryID
@end

@implementation _FamilyCategory

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"FamilyCategory" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"FamilyCategory";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"FamilyCategory" inManagedObjectContext:moc_];
}

- (FamilyCategoryID*)objectID {
	return (FamilyCategoryID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic family;

	





@end
