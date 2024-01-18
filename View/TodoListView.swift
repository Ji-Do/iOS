//
//  TodoListView.swift
//  Ji-Do
//
//  Created by 송영훈 on 1/18/24.
//

import SwiftUI

struct TodoListView: View {
    // MARK: - PROPERTIES
    @State private var items = ["항목 1", "항목 2"]
    
    // MARK: - BODY
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                Text(item)
            }
            .onDelete(perform: deleteItems)
        }
        .navigationTitle("관리함")
        .navigationBarItems(trailing: Button("추가", action: {
            addItem()
        }))
    }
    
    // MARK: - FUNCTION
    func addItem() {
        items.append("항목 \(items.count + 1)")
    }
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }

}

#Preview {
    TodoListView()
}
