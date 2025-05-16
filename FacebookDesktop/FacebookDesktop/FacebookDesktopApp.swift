//
//  FacebookDesktopApp.swift
//  FacebookDesktop
//
//  Created by Adrian Suryo Abiyoga on 26/02/25.
//

import SwiftUI

@main
struct FacebookDesktopApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        // Hiding Window Title
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}
// Hiding Textfield Ring...

extension NSTextField{
    
    open override var focusRingType: NSFocusRingType{
        get{.none}
        set{}
    }
}
