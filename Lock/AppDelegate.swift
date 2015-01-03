//
//  AppDelegate.swift
//  Lock
//
//  Copyright (c) 2015 phelgo. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        var task = NSTask()
        task.launchPath = "/System/Library/CoreServices/Menu Extras/User.menu/Contents/Resources/CGSession";
        task.arguments = ["-suspend"];
        task.launch()
        NSApplication.sharedApplication().terminate(self)
    }
}
