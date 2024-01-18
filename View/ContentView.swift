//
//  ContentView.swift
//  Ji-Do
//
//  Created by 송영훈 on 1/10/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var showingAddTodoView: Bool = false
    
    
    // MARK: - BODY
    var body: some View {
        // body는 하나의 view만 반환함
        TabView {
            InboxView()
                .tabItem {
                    Image(systemName: "tray")
                    Text("Inbox")
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                .toolbarBackground(.visible, for: .tabBar)
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("profile")
                }
        }
    } //: BODY
    
} //: CONTENT VIEW

// MARK: - PREVIEW
#Preview {
    ContentView()
}
