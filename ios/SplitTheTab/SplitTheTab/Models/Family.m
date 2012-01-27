#import "Family.h"
#import "FamilyCategory.h"

@implementation Family

- (NSUInteger) totalMembers {
    NSUInteger result = 0;
    
    for (FamilyCategory* cat in self.categories) {
        result += cat.memberCountValue;
    }
    return result;
}

@end
