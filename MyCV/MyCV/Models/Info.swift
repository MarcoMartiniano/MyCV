//
//  Info.swift
//  Lebenslauf
//
//  Created by Marco Antonio Martiniano on 06.06.26.
//

import Foundation

struct Info: Identifiable {
    let id: UUID = UUID()
    let title: String
    let subtitle: String
    let info: String?
    let location: String?

    init(
        title: String,
        subtitle: String = "",
        info: String? = nil,
        location: String? = nil
    ) {
        self.title = title
        self.subtitle = subtitle
        self.info = info
        self.location = location
    }
}
