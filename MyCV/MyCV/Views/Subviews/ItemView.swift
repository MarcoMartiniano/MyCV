//
//  ItemViewView.swift
//  Lebenslauf
//
//  Created by Marco Antonio Martiniano on 06.06.26.
//

import SwiftUI

struct ItemView: View {
    let item: Info
    var body: some View {
        VStack(spacing: 12) {
            HStack(alignment: .center) {
                Text(item.title)
                    .font(.typography(.titleBold))
                Spacer()
                Text(item.info ?? "")
                    .font(.typography(.bodyItalic))
            }

            if let location = item.location {
                HStack {
                    Text(item.subtitle)
                        .font(.typography(.bodyRegular))
                    Spacer()
                    Text(location)
                        .font(.typography(.caption))
                }
            }
        }
        .padding()
        .background(Color(AppColors.darkBlue).opacity(0.85))
        .foregroundStyle(Color.white)
        .cornerRadius(16)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    VStack{
        ItemView(
            item: jobList[0]
        )
        ItemView(
            item: studyList[0]
        )
        ItemView(
            item: languageList[0]
        )
    }.padding()
}
