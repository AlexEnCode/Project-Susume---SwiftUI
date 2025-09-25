

import SwiftUI


struct Manga: Identifiable {
    let id: UUID
    let coverImageName: String
    let backgroundImageName: String
    let title: String
    let author: String
    let genre: GenreType
    let shortSummary: String
    let synopsis: String
    let publicationYear: Int
    let numberOfVolumes: Int
    let isCompleted: Bool
    let externalRating: Double

    var userRating: Int?
    var userComment: String?
    var isRead: Bool              
    var isToRead: Bool
    var notToRead: Bool
    var userComments: [UserComment]
    let tags: [GenreTag]
}

enum GenreType: String, Codable,CaseIterable {
    case shonen
    case shojo
    case seinen
    case josei
    case kodomo
    case autre
}

enum GenreTag: String, Codable, CaseIterable {
    case action
    case aventure
    case comedie
    case drame
    case fantasy
    case horreur
    case romance
    case scienceFiction = "science-fiction"
    case trancheDeVie = "tranche de vie"
    case mystere
    case sport
    case surnaturel
    case historique
    case thriller
    case histoire
    case autre
}

struct UserComment: Identifiable {
    let id: UUID
    let username: String
    let comment: String
    let otherUserNote: Int
    let date: Date
    let avatar : String
}
