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
        direction: direction
    )

    private let icons = [
        AppIcons.github,
        AppIcons.apple,
        AppIcons.android,
        AppIcons.firebase
    ]

    var body: some View {
        VStack(spacing: 0) {

            HeaderMyPhotoView()
                .zIndex(1)

            VStack(spacing: 12) {

                VStack {
                    Text(profile.name)
                        .font(.typography(.titleLargeBold))

                    Text(profile.jobTitle)
                        .font(.typography(.titleSemiBold))
                }

                HStack(spacing: 20) {
                    ForEach(icons, id: \.self) { icon in
                        HeaderStackItemView(image: icon)
                    }
                }

                VStack(spacing: 4) {

                    HStack(spacing: 8) {
                        Text("Geb. \(profile.birthDate)")
                        Text("•")
                        Text(profile.nationality)
                        Text("•")
                        Text("\(profile.jobExperience) Exp.")
                    }
                    .font(.typography(.bodyLight))

                    Text(profile.direction)
                        .font(.typography(.captionSemiBold))
                }
            }
            .foregroundStyle(.white)
            .padding(.top, 80)
            .padding(.bottom)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(AppColors.darkBlue))
            )
            .padding(.top, -70)
        }
    }
}

struct HeaderMyPhotoView: View {

    var body: some View {
        Image("myphoto")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(.white, lineWidth: 4)
            }
            .shadow(
                color: .black.opacity(0.25),
                radius: 10,
                x: 0,
                y: 5
            )
    }
}

struct HeaderStackItemView: View {

    let image: String

    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .frame(width: 24, height: 24)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderView()
        .padding()
}
