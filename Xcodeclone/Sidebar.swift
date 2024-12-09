//
//  Sidebar.swift
//  Xcodeclone
//
//  Created by Shivam on 09/12/24.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        VStack {
            Text("Project Navigator")
                .font(.headline)
                .padding()
            Divider()
            List {
                Text("Main.swift")
                Text("ContentView.swift")
                Text("Assets.xcassets")
                Text("Info.plist")
                Text("AppDelegate.swift")
            }
            .frame(minWidth: 200)
            .padding()
        }
        .background(Color.gray.opacity(0.1))
    }
}


#Preview {
    Sidebar()
}
