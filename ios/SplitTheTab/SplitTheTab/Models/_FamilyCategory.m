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
	
	if ([key isEqualToString:@"memberCountValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"memberCount"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}

	return keyPaths;
}




@dynamic memberCount;



- (int)memberCountValue {
	NSNumber *result = [self memberCount];
	return [result intValue];
}

- (void)setMemberCountValue:(int)value_ {
	[self setMemberCount:[NSNumber numberWithInt:value_]];
}

- (int)primitiveMemberCountValue {
	NSNumber *result = [self primitiveMemberCount];
	return [result intValue];
}

- (void)setPrimitiveMemberCountValue:(int)value_ {
	[self setPrimitiveMemberCount:[NSNumber numberWithInt:value_]];
}





@dynamic family;

	





@end
