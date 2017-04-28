//
//  AppDelegate.swift
//  Lock
//
//  Copyright (c) 2015 phelgo. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let task = Process()
        task.launchPath = "/System/Library/CoreServices/Menu Extras/User.menu/Contents/Resources/CGSession";
        task.arguments = ["-suspend"];
        task.launch()
        NSApplication.shared().terminate(self)
    }
}
