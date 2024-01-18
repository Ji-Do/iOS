//
//  InboxView.swift
//  Ji-Do
//
//  Created by 송영훈 on 1/14/24.
//

import SwiftUI

struct InboxView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section {
                        NavigationLink(destination: TodoListView()) {
                            Label(
                                title: { Text("관리함") },
                                icon: { Image(systemName: "tray.fill") }
                            )
                        }
                    } header: {
                        // TODO: Search box
                    }
                } //: LIST
                Spacer()
                HStack {
                    Text("Hello")
                    Spacer()
                    Text("Hello two")
                }
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                
            }
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
#Preview {
    InboxView()
}
