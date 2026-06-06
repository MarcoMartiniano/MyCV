//
//  ItemListView.swift
//  Lebenslauf
//
//  Created by Marco Antonio Martiniano on 06.06.26.
//

import SwiftUI

struct ItemListView: View {
    var listTitle: String
    var itemList: [Info] = []
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(listTitle)
                .font(.typography(.titleSemiBold))
            
            VStack {
                ForEach(itemList) { item in
                    ItemView(item: item)
                }
            }
        }
    }
}

#Preview {
    ItemListView(
        listTitle: "Berufserfahrung",
        itemList: jobList
    )
}
