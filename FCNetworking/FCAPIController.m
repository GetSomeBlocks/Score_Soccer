#import "FCAPIController.h"
#import "Singleton.h"
#import "FCBaseChatRequestManager.h"

#import "FCAuthFacebookManager.h"

@interface FCAPIController()
@property (nonatomic, strong) FCChatDataStoreManager *chatDataStoreManager;
@property (nonatomic, strong) FCBaseChatRequestManager *chatRequestManager;
@end


@implementation FCAPIController
SINGLETON_GCD(FCAPIController);

- (FCAuthFacebookManager *)authFacebookManager {
    if (!_authFacebookManager) {
        _authFacebookManager = [FCAuthFacebookManager new];
    }
    return _authFacebookManager;
}

- (FCRequestFacebookManager *)requestFacebookManager {
    if (!_requestFacebookManager) {
        _requestFacebookManager = [FCRequestFacebookManager new];
    }
    return _requestFacebookManager;
}

- (FCChatDataStoreManager *)chatDataStoreManager {
    if (!_chatDataStoreManager) {
        _chatDataStoreManager = [FCChatDataStoreManager new];
    }
    return _chatDataStoreManager;
}


- (FCBaseChatRequestManager *)chatRequestManager {
    if (!_chatRequestManager) {
        _chatRequestManager = [FCBaseChatRequestManager new];
    }
    return _chatRequestManager;
}

@end
