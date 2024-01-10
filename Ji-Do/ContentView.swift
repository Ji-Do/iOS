//
//  ContentView.swift
//  Ji-Do
//
//  Created by 송영훈 on 1/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("The First Tab")
                .tabItem {
                    Image(systemName: "tray")
                    Text("Inbox")
                }
                .badge(10)  // TODO: list count 사용해서 동기
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    ContentView()
}
