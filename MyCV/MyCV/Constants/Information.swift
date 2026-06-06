//
//  Information.swift
//  Lebenslauf
//
//  Created by Marco Antonio Martiniano on 06.06.26.
//

import Foundation

let name = "Marco Antonio Martiniano"
let jobTitle = "App-Entwickler"
let birthDate = "30.06.1988"
let nationality = "Italien/Brasilien"
let jobExperience = "2,5 Jahre"
let direction = "Spittlertorgraben 21, 90429 - Nürnberg - Bayern"
let phoneNumber = "+49 179 1110810"
let github = "/MarcoMartiniano"
let linkedin = "/in/marco-antonio-martiniano/"
let email = "marrco.programacao@gmail.com"


var jobList: [Info] {
    [
        Info(
            title: "Android Automotive Entwickler",
            subtitle: "E.Solutions",
            info: "03.23 – 10.23",
            location: "Ingolstadt, Bayern"
        ),
        Info(
            title: "Android Mobile Entwickler",
            subtitle: "Ioasys",
            info: "10.21 – 02.23",
            location: "Brasilien (Remote)"
        )
    ]
}

var studyList: [Info] {
    [
        Info(
            title: "IOS-Entwicklung mit Swift/SwiftUI",
            subtitle: "Syntax Institut",
            info: "02.26 - 06.26",
            location: "Remote, Deutschland"
        ),
        Info(
            title: "Android Technik-Ausbildung",
            subtitle: "PC Carrier",
            info: "2014 - 2015",
            location: "Barcelona, ​​Spanien"
        ),
        Info(
            title: "Bachelor in Maschinenbau",
            subtitle: "Universidade Estado de S. Paulo",
            info: "2008 – 2015",
            location: "Bauru, Brasilien"
        )
    ]
}

var languageList: [Info] {
    [
        Info(
            title: "Deutsch",
            info: "B2 Beruf - TELC"
        ),
        Info(
            title: "Englisch",
            info: "fließend"
        ),
        Info(
            title: "Portugiesisch",
            info: "Muttersprache"
        ),
        Info(
            title: "Spanisch",
            info: "fortgeschritten"
        )
    ]
}

let sections = [
    "Berufserfahrung",
    "Bildung",
    "Sprachen"
]
