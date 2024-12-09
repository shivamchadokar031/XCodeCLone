//
//  statusbarview.swift
//  Xcodeclone
//
//  Created by Shivam on 09/12/24.
//

import SwiftUI

struct StatusBar: View {
    var body: some View {
        HStack {
            Text("Build Succeeded")
                .font(.caption)
                .foregroundColor(.green)
            Spacer()
            Text("Main.swift")
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
    }
}
#Preview {
    StatusBar()
}
