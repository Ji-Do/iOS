//
//  AddTodoView.swift
//  Ji-Do
//
//  Created by 송영훈 on 1/14/24.
//

import SwiftUI

struct AddTodoView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    @State private var name: String = ""
    @State private var priority: String = "Normal"
    
    let priorities = ["High", "Normal", "Low"]
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    // MARK: - TODO NAME
                    TextField("Todo", text: $name)
                    
                    // MARK: - TODO PRIORITY
                    Picker("Priorities", selection: $priority) {
                        ForEach(priorities, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    // MARK: - SAVE BUTTON
                    Button(action: {
                        print("Save a new todo item")
                    }, label: {
                        Text("Save")
                    })
                } //: FORM
                
                Spacer()
            } //: VSTACK
            .navigationBarTitle("Todo", displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark")
            }
            )
        } //: NAVIGATION
    } //: BODY
}

#Preview {
    AddTodoView()
}
