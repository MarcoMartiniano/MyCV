//
//  ContentView.swift
//  MyCV
//
//  Created by Marco Antonio Martiniano on 06.06.26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            
            HeaderView()
                .padding(.top, 45)
            
            ScrollView {
                
                ContactView()
                    .padding(.vertical, 16)
                
                VStack(spacing: 24) {
                    ItemListView(listTitle: sections[0],itemList: jobList)
                    ItemListView(listTitle: sections[1],itemList: studyList)
                    ItemListView(listTitle: sections[2],itemList: languageList)
                }
                
            }
        }
        .padding(.horizontal)
        .padding(.top)
    }
}

#Preview {
    ContentView()
}
