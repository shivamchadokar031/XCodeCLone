//
//  XcodecloneApp.swift
//  Xcodeclone
//
//  Created by Shivam on 07/12/24.
//

import SwiftUI

@main
struct XcodeReplicaApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .frame(minWidth: 1000, minHeight: 600)
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        Button(action: {}) {
                            Image(systemName: "play.circle")
                        }
                    }
                    ToolbarItem(placement: .automatic) {
                        Button(action: {}) {
                            Image(systemName: "stop.circle")
                        }
                    }
                }
        }
        .commands {
            CommandGroup(replacing: .newItem) {
                Button("New Project") {
                    print("New project action")
                }
            }
            CommandMenu("Run") {
                Button("Build & Run") {
                    print("Build and run action")
                }
            }
        }
    }
}

struct MainView: View {
    var body: some View {
        NavigationView {
            Sidebar()
            
            EditorView()
            
            inspectorview()
        }
    }
}
#Preview {
    MainView()
}
