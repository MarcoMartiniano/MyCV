//
//  AppFonts.swift
//  Lebenslauf
//
//  Created by Marco Antonio Martiniano on 06.06.26.
//

import SwiftUI

enum AppFontStyle {
    case titleLargeBold
    case titleBold
    case titleSemiBold
    case bodySemiBold
    case bodyRegular
    case bodyLight
    case bodyItalic
    case caption
    case captionSemiBold
}

extension Font {
    static func typography(_ style: AppFontStyle) -> Font {
        switch style {
        case .titleLargeBold:
            return .custom("Poppins-Bold", size: 18)
        case .titleBold:
            return .custom("Poppins-Bold", size: 16)
        case .titleSemiBold:
            return .custom("Poppins-SemiBold", size: 16)
        case .bodySemiBold:
            return .custom("Poppins-SemiBold", size: 14)
        case .bodyRegular:
            return .custom("Poppins-Regular", size: 14)
        case .bodyLight:
            return .custom("Poppins-Light", size: 14)
        case .bodyItalic:
            return .custom("Poppins-Italic", size: 14)
        case .caption:
            return .custom("Poppins-Regular", size: 12)
        case .captionSemiBold:
            return .custom("Poppins-SemiBold", size: 12)
        }
    }
}
