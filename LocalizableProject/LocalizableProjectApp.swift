//
//  LocalizableProjectApp.swift
//  LocalizableProject
//
//  Created by Macservis on 20/06/22.
//

import SwiftUI

@main
struct LocalizableProjectApp: App {
    
    @AppStorage("lang") var language: String?
    
    var body: some Scene {
        WindowGroup {
            IntroView()
                .environment(\.locale, .init(identifier: language ?? "en"))
        }
    }
}
