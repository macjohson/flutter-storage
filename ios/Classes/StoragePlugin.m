#import "StoragePlugin.h"
#if __has_include(<storage/storage-Swift.h>)
#import <storage/storage-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "storage-Swift.h"
#endif

@implementation StoragePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftStoragePlugin registerWithRegistrar:registrar];
}
@end
