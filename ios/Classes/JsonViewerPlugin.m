#import "JsonViewerPlugin.h"
#import <json_viewer/json_viewer-Swift.h>

@implementation JsonViewerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftJsonViewerPlugin registerWithRegistrar:registrar];
}
@end
