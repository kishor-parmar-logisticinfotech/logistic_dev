#import "LogisticDevPlugin.h"
#if __has_include(<logistic_dev/logistic_dev-Swift.h>)
#import <logistic_dev/logistic_dev-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "logistic_dev-Swift.h"
#endif

@implementation LogisticDevPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLogisticDevPlugin registerWithRegistrar:registrar];
}
@end
