//
//  ContactView.swift
//  Lebenslauf
//
//  Created by Marco Antonio Martiniano on 06.06.26.
//

import SwiftUI

struct ContactView: View {
    let contact = Contact(
        phoneNumber: phoneNumber,
        github: github,
        linkedin: linkedin,
        email: email
    )
    
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading) {
                ContactItemView(
                    image: Image(systemName: AppIcons.phone),
                    label: contact.phoneNumber,
                    iconColor: Color(AppColors.green)
                )
                ContactItemView(
                    image: Image(AppIcons.github),
                    label: contact.github
                )
                ContactItemView(
                    image: Image(AppIcons.linkedin),
                    label: contact.linkedin
                )
                ContactItemView(
                    image: Image(systemName: AppIcons.email),
                    label: contact.email
                )
            }
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0, y: 4)
            
            Spacer()
            CallButtonView()
        }
    }
}

struct ContactItemView: View {
    var image: Image
    var label: String
    var iconColor: Color = .primary
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            image
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundColor(iconColor)
            Text(label)
                .font(.typography(.caption))
                .fontWeight(.regular)
        }
    }
}

#Preview {
    ContactView()
}
