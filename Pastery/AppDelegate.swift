//
//  AppDelegate.swift
//  Pastery
//
//  Created by Poyi Chen on 7/22/14.
//  Copyright (c) 2014 Poyi. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet var window: NSWindow
    
    var statusItem: NSStatusItem
    var menuItem: NSMenu?
    
    // Initialize the statusItem
    init()
    {
        self.statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(CGFloat(NSSquareStatusItemLength))
    }


    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
        
        self.statusItem.title = nil
        
        // Define the icon image
        var icon = NSImage(named: "Icon1")
        icon.size = NSSize(width: 16, height: 16)
        icon.setTemplate(true)
        
        // Set status image
        self.statusItem.image = icon
        statusItem.highlightMode = true
        
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }


}

