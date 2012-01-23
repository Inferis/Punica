// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ExpensePhoto.m instead.

#import "_ExpensePhoto.h"

@implementation ExpensePhotoID
@end

@implementation _ExpensePhoto

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ExpensePhoto" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ExpensePhoto";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ExpensePhoto" inManagedObjectContext:moc_];
}

- (ExpensePhotoID*)objectID {
	return (ExpensePhotoID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}








@end
