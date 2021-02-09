#import "CountryCodePlugin.h"
#if __has_include(<country_code/country_code-Swift.h>)
#import <country_code/country_code-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "country_code-Swift.h"
#endif

@implementation CountryCodePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCountryCodePlugin registerWithRegistrar:registrar];
}
@end
