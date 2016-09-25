/*
 * AppearancePreferencesViewController.h
 *
 * Created by Sajid Anwar.
 *
 * Subject to terms and conditions in LICENSE.md.
 *
 */

#import <Cocoa/Cocoa.h>
#import <MASPreferences/MASPreferencesViewController.h>

@interface AppearancePreferencesViewController : NSViewController<MASPreferencesViewController>

@property NSArray *sortDescriptors;

@property (assign) IBOutlet NSButton *BlurPrefs;
@property (assign) IBOutlet NSTextField *BlurTextPrefs;
@property (assign) IBOutlet NSButton *StyleChoosePrefs;
@property (assign) IBOutlet NSTextField *StyleChooseTextPrefs;

@end
