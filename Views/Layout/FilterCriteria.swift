//
//  FilterCriteria.swift
//  Suzume
//
//  Created by apprenant93 on 18/09/2025.
//

struct FilterCriteria {
    var selectedGenres: Set<GenreType> = []
    var selectedTags: Set<GenreTag> = []
    var maxVolumes: Double = 150  // je sais pas ?
    var isCompleted: Bool? = nil  // nil = tous, true = fini, false = non fini
}

