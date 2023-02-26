//
//  wmApp.swift
//  wm
//
//  Created by blorp on 2022-12-03.
//

import SwiftUI

@main
struct wmApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        //WindowGroup {
        //    ContentView()
        //}
        Settings {
            EmptyView()
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    static private(set) var instance: AppDelegate!
    lazy var statusBarItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    let menu = ApplicationMenu()
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        AppDelegate.instance = self
        statusBarItem.button?.image = NSImage(
            systemSymbolName: "globe",
            accessibilityDescription: "Menu bar image of globe")
        statusBarItem.button?.imagePosition = .imageLeading
        statusBarItem.menu = menu.createMenu()
    }
}
