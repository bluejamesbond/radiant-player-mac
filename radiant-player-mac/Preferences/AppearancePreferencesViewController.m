/*
 * AppearancePreferencesViewController.m
 *
 * Created by Sajid Anwar.
 *
 * Subject to terms and conditions in LICENSE.md.
 *
 */

#import "AppearancePreferencesViewController.h"

@implementation AppearancePreferencesViewController

@synthesize sortDescriptors;
@synthesize BlurPrefs;
@synthesize BlurTextPrefs;
@synthesize StyleChoosePrefs;
@synthesize StyleChooseTextPrefs;

- (void)awakeFromNib
{
    self.sortDescriptors = @[ [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES] ];
    
    if (floor(NSAppKitVersionNumber) <= NSAppKitVersionNumber10_9 || floor(NSAppKitVersionNumber) <= NSAppKitVersionNumber10_10_Max) {
        /* Since the blur option is on the bottom we need to redraw the view so it acts like it was never there */
        [self.view setFrameSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height - 40)];
        
        /* Hide the blur option and its text */
        [BlurPrefs setHidden:TRUE];
        [BlurTextPrefs setHidden:TRUE];
        
        /* Position the select box for styles */
        [StyleChoosePrefs setFrameOrigin:NSMakePoint(StyleChoosePrefs.frame.origin.x, StyleChoosePrefs.frame.origin.y - 5)];
        [StyleChooseTextPrefs setFrameOrigin:NSMakePoint(StyleChooseTextPrefs.frame.origin.x, StyleChooseTextPrefs.frame.origin.y - 5)];
    }
}

- (NSString *)identifier
{
    return @"AppearancePreferences";
}

- (NSImage *)toolbarItemImage
{
    return [NSImage imageNamed:NSImageNameColorPanel];
}

- (NSString *)toolbarItemLabel
{
    return @"Appearance";
}

@end
