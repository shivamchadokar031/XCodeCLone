//
//  inspectorview.swift
//  Xcodeclone
//
//  Created by Shivam on 09/12/24.
//

import SwiftUI

struct inspectorview: View {
    var body: some View {
        VStack {
            Text("Inspector Panel")
                .font(.headline)
                .padding()
            Divider()
            List {
                Text("General")
                Text("Identity")
                Text("Signing & Capabilities")
                Text("Versioning")
            }
            .frame(minWidth: 250)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
    }
}

#Preview {
    inspectorview()
}
