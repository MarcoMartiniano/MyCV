//
//  HeaderView.swift
//  Lebenslauf
//
//  Created by Marco Antonio Martiniano on 06.06.26.
//

import SwiftUI

struct HeaderView: View {
    let profile = Profile(
        name: name,
        jobTitle: jobTitle,
        birthDate: birthDate,
        nationality: nationality,
        jobExperience: jobExperience,
        direction: direction,
    )
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Spacer().frame(height: 60)
                headerInfo
                headerStack
                headerFoot
            }
            .frame(maxWidth: .infinity)
            .background(Color(AppColors.darkBlue))
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            
            HeaderMyPhotoView()
                .offset(y: -60)
        }
    }
}

struct HeaderMyPhotoView: View {
    var body: some View {
        Image("myphoto")
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color(AppColors.darkBlue), lineWidth: 1)
            )
    }
}

extension HeaderView {
    private var headerInfo: some View {
        VStack(spacing: 2) {
            Text(profile.name)
                .font(.typography(.titleLargeBold))
            Text(profile.jobTitle)
                .font(.typography(.titleSemiBold))
        }
        .padding(.top, 8)
    }

    private var headerStack: some View {
        let icons = [
            AppIcons.github,
            AppIcons.apple,
            AppIcons.android,
            AppIcons.firebase
        ]

        return HStack(spacing: 20) {
            ForEach(icons.indices, id: \.self) { index in
                HeaderStackItemView(image: icons[index])
            }
        }
        .padding(.bottom, 10)
    }

    private var headerFoot: some View {
        VStack(spacing: 2) {
            HStack {
                Text("Geb. \(profile.birthDate)")
                Text("·")
                Text(profile.nationality)
                Text("·")
                Text("\(profile.jobExperience) Exp.")
            }
            .font(.typography(.bodyLight))
            
            Text(profile.direction)
                .font(.typography(.captionSemiBold))
                
        }.padding(.bottom, 12)
    }
}

struct HeaderStackItemView: View {
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .frame(width: 24, height: 24)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderView()
}
