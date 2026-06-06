//
//  CallButtonView.swift
//  Lebenslauf
//
//  Created by Marco Antonio Martiniano on 06.06.26.
//

import SwiftUI

struct CallButtonView: View {
    @Environment(\.openURL) private var openURL
    
    var body: some View {
        VStack(spacing: 6) {
            Text("Jetzt Anrufen")
                .font(.typography(.bodySemiBold))
                .foregroundColor(Color(AppColors.darkBlue))
            
            Button {
                let cleaned = phoneNumber.replacingOccurrences(of: " ", with: "")
                if let url = URL(string: "tel://\(cleaned)") {
                    openURL(url)
                }
            } label: {
                Image(systemName: AppIcons.phone)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 36, height: 36)
                        .padding()
                        .background(AppColors.green)
                        .cornerRadius(12)
                        .foregroundColor(Color(AppColors.darkBlue))
                }
        }
    }
}

#Preview {
    CallButtonView()
}
