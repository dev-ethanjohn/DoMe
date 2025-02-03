//
//  SideMenuItem.swift
//  DoMe
//
//  Created by Ethan John Paguntalan on 2/2/25.
//

import Foundation


struct SideMenuItem: Identifiable, Hashable {
    let id : UUID = UUID()
    let settingTitle : String
    let systemImageName : String
    
    static let userSettingsMenuItems: [SideMenuItem] = [
        SideMenuItem(settingTitle: "Notification Settings", systemImageName: "bell"),
        SideMenuItem(settingTitle: "Account Settings", systemImageName: "person"),
        SideMenuItem(settingTitle: "Privacy Settings", systemImageName: "lock")
    ]
    
    static let feedbackMenuItems: [SideMenuItem] = [
        SideMenuItem(settingTitle: "Submit Issue", systemImageName: "exclamationmark.bubble"),
        SideMenuItem(settingTitle: "Share Idea", systemImageName: "lightbulb"),
        SideMenuItem(settingTitle: "Rate Us", systemImageName: "star")
    ]
    
    static let infoMenuItems: [SideMenuItem] = [
        SideMenuItem(settingTitle: "Privacy", systemImageName: "lock.shield"),
        SideMenuItem(settingTitle: "App Roadmap", systemImageName: "map"),
        SideMenuItem(settingTitle: "Help Center", systemImageName: "questionmark.circle"),
        SideMenuItem(settingTitle: "About DoMe", systemImageName: "info.circle")
    ]
}
