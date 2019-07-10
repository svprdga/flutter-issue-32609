#import "FlutterIssue32609Plugin.h"
#import <flutter_issue_32609/flutter_issue_32609-Swift.h>

@implementation FlutterIssue32609Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterIssue32609Plugin registerWithRegistrar:registrar];
}
@end
