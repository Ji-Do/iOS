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
                        NavigationLink(destination: Text("List 1")) {
                            Label(
                                title: { Text("List 1") },
                                icon: { Image(systemName: "list.bullet") }
                            )
                        }
                        NavigationLink(destination: Text("List 2")) {
                            Label(
                                title: { Text("List 2") },
                                icon: { Image(systemName: "list.bullet") }
                            )
                        }
                        NavigationLink(destination: Text("List 3")) {
                            Label(
                                title: { Text("List 3") },
                                icon: { Image(systemName: "list.bullet") }
                            )
                        }
                        NavigationLink(destination: Text("List 4")) {
                            Label(
                                title: { Text("List 4") },
                                icon: { Image(systemName: "list.bullet") }
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
