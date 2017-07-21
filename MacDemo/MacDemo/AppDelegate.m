//
//  AppDelegate.m
//  MacDemo
//
//  Created by Riber on 2017/7/21.
//  Copyright © 2017年 Riber. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag {
    
    
    NSLog(@"%@", sender.windows);
    if (flag == NO) {
        NSWindow *window = sender.windows.firstObject;
        if (window) {
            [window makeKeyAndOrderFront:nil];
        }
    }
    
    return YES;
}

@end
