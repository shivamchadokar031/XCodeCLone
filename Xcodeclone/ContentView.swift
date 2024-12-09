import SwiftUI

struct ContentView: View {
    @State private var isSidebarVisible: Bool = true
    
    var body: some View {
        VStack {
            HStack {
                
                if isSidebarVisible {
                                Sidebar()
                            }
                
                Button(action: { print("New File") }) {
                    Text("New")
                }
                Spacer()
                Button(action: { print("Build Project") }) {
                    Text("Build")
                }
                Spacer()
                Button(action: { print("Run") }) {
                    Text("Run")
                }
                Spacer()
                Button(action: { print("Stop") }) {
                    Text("Stop")
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            toolbar {
                        ToolbarItem(placement: .navigation) {
                            Button(action: {
                                isSidebarVisible.toggle() // Toggle sidebar visibility
                            }) {
                                Image(systemName: isSidebarVisible ? "rectangle.leadinghalf.inset.filled" : "rectangle")
                                    .foregroundColor(.primary)
                            }
                        }
                    }
         
            
            // Main content (editor view)
            EditorView()
        }
    }
}
#Preview {
    ContentView()
}
