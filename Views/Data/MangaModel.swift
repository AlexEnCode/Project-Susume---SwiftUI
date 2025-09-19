

import SwiftUI


struct Manga: Identifiable {
    
    let id: UUID
    let coverImageName: String           // image de couverture
    let title: String                    // titre de l'oeuvre
    let author: String                   // auteur
    let genre: GenreType                 // genre principal
    let shortSummary: String             // court résumé (10/15 mots)
    let synopsis: String                 // résumé plus long
    let publicationYear: Int             // année de parution
    let numberOfVolumes: Int             // nombre de tomes
    let isCompleted: Bool                // terminée ou non
    let externalRating: Double           // note trouvée en ligne
    let userRating: Double?              // note donnée par l'utilisateur
    let isRead: Bool                     // statut lu ou pas
    let isToRead: Bool                   // statut à lire
    let notToRead: Bool                  // statut ne veut pas lire
    let userComments: [UserComment]      // commentaires des utilisateurs
    let tags: [GenreTag]                 // genres et sous-genres
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
    let date: Date
}
