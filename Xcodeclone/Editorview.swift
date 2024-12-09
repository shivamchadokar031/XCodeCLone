//
//  Editorview.swift
//  Xcodeclone
//
//  Created by Shivam on 09/12/24.
//

import SwiftUI

struct EditorView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        VStack {
            // Tabs for file navigation in the editor
            TabView(selection: $selectedTab) {
                Text("Main.swift content goes here")
                    .tag(0)
                    .tabItem {
                        Text("Main.swift")
                    }
                
                Text("ContentView.swift content goes here")
                    .tag(1)
                    .tabItem {
                        Text("ContentView.swift")
                    }
                
                Text("AppDelegate.swift content goes here")
                    .tag(2)
                    .tabItem {
                        Text("AppDelegate.swift")
                    }
            }
            .padding()
        }
        .background(Color.white)
    }
}

#Preview {
    EditorView()
}
