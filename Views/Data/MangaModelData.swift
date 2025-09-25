import SwiftUI



let mangas: [Manga] = [
    
    // 1
    Manga(
        id: UUID(),
        coverImageName: "onepiececover",
        backgroundImageName: "onepieceimage",
        title: "One Piece",
        author: "Eiichiro Oda",
        genre: .shonen,
        shortSummary: "Luffy part à l'aventure pour devenir roi des pirates.",
        synopsis: "Monkey D. Luffy, capitaine au chapeau de paille, recrute un équipage incroyable pour trouver le légendaire trésor One Piece et défier les plus grands dangers des mers. Monkey D. Luffy, capitaine au chapeau de paille, recrute un équipage incroyable pour trouver le légendaire trésor One Piece et défier les plus grands dangers des mers.",
        publicationYear: 1997,
        numberOfVolumes: 106,
        isCompleted: false,
        externalRating: 4.1,
        userRating: 5,
        userComment: "Luffy a mangé le fruit de Nika #spoil",
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PirateFan", comment: "Toujours épique, jamais déçu.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 3), avatar: "a"),
            UserComment(id: UUID(), username: "Marin", comment: "L'univers est si vaste, les personnages attachants.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 10), avatar: "b"),
            UserComment(id: UUID(), username: "GrandLineLover", comment: "Je me demande ce qu’est vraiment le One Piece.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 30), avatar: "c")
        ],
        tags: [.action, .aventure, .fantasy, .surnaturel, .comedie]
    ),
    
    // 2
    Manga(
        id: UUID(),
        coverImageName: "narutocover",
        backgroundImageName:"narutoimage",
        title: "Naruto",
        author: "Masashi Kishimoto",
        genre: .shonen,
        shortSummary: "Un ninja rêve d’être reconnu par son village.",
        synopsis: "Naruto Uzumaki, un jeune ninja porteur du démon renard, cherche à obtenir le respect des habitants de Konoha et à devenir Hokage, tout en surmontant des ennemis puissants et ses propres doutes.",
        publicationYear: 1999,
        numberOfVolumes: 72,
        isCompleted: true,
        externalRating: 3.7,
        userRating: 5,
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "ShinobiFan", comment: "Arc Pain bouleversant.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 15), avatar: "d"),
            UserComment(id: UUID(), username: "TeamKurama", comment: "La fin est mitigée selon moi, mais le voyage était superbe.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 40), avatar: "e")
        ],
        tags: [.action, .aventure, .drame, .fantasy]
    ),
    
    // 3
    Manga(
        id: UUID(),
        coverImageName: "attackontitancover",
        backgroundImageName: "attackontitansimage",
        title: "Attack on Titan",
        author: "Hajime Isayama",
        genre: .shonen,
        shortSummary: "L’humanité lutte contre des titans dévoreurs.",
        synopsis: "Dans un monde où l’humanité est enfermée derrière d’immenses murs pour se protéger des Titans, Eren Jaeger jure de les éliminer après avoir assisté à la destruction de sa ville, découvrant peu à peu les sombres secrets de leur existence.",
        publicationYear: 2009,
        numberOfVolumes: 34,
        isCompleted: true,
        externalRating: 4.0,
        isRead: false,
        isToRead: true,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "SurveyCorps", comment: "Les retournements de situation sont fous.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 5), avatar: "f"),
            UserComment(id: UUID(), username: "TitanSlayer", comment: "Le mystère autour des murs m’a captivé.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 20), avatar: "a"),
            UserComment(id: UUID(), username: "ErenFan", comment: "Certains arcs sont lents, mais globalement excellent.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 60), avatar: "b")
        ],
        tags: [.action, .drame, .fantasy, .thriller]
    ),
    
    // 4
    Manga(
        id: UUID(),
        coverImageName: "deathnotecover",
        backgroundImageName: "deathnoteimage",
        title: "Death Note",
        author: "Tsugumi Ohba & Takeshi Obata",
        genre: .shonen,
        shortSummary: "Un lycéen obtient un carnet qui tue les gens.",
        synopsis: "Light Yagami trouve un Death Note, carnet aux pouvoirs mortels, et décide de purifier le monde des criminels. Mais le détective L se lance à sa poursuite, donnant lieu à une guerre psychologique intense.",
        publicationYear: 2003,
        numberOfVolumes: 12,
        isCompleted: true,
        externalRating: 4.9,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "Kira", comment: "La tension psychologique est palpable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 12), avatar: "c"),
            UserComment(id: UUID(), username: "LDetective", comment: "Le duel mental entre Light et L est brillant.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "d")
        ],
        tags: [.drame, .mystere, .thriller]
    ),
    
    // 5
    Manga(
        id: UUID(),
        coverImageName: "fullmetalalchemistcover",
        backgroundImageName: "fullmetalimage",
        title: "Fullmetal Alchemist",
        author: "Hiromu Arakawa",
        genre: .shonen,
        shortSummary: "Deux frères cherchent une pierre philosophale.",
        synopsis: "Après un rituel alchimique raté, Edward et Alphonse Elric cherchent la pierre philosophale pour retrouver ce qu’ils ont perdu. Leurs quêtes les amènent à affronter corruption, guerre, enjeux moraux et secrets anciens.",
        publicationYear: 2001,
        numberOfVolumes: 27,
        isCompleted: true,
        externalRating: 4.2,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "Alchemist", comment: "Chaque tome est un chef-d’œuvre.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 8), avatar: "b"),
            UserComment(id: UUID(), username: "Scarbrother", comment: "Alphonse me touche toujours.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 30), avatar: "f"),
            UserComment(id: UUID(), username: "MustangFan", comment: "Les thèmes moraux sont super bien traités.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 50), avatar: "e")
        ],
        tags: [.action, .aventure, .fantasy, .drame]
    ),
    
    // 6
    Manga(
        id: UUID(),
        coverImageName: "bleachcover",
        backgroundImageName: "bleachimage",
        title: "Bleach",
        author: "Tite Kubo",
        genre: .shonen,
        shortSummary: "Un lycéen devient substitut de Dieu de la Mort.",
        synopsis: "Ichigo Kurosaki acquiert les pouvoirs de Shinigami et doit protéger les humains des Hollows, tout en naviguant dans les conflits entre âmes, esprits, et grandes puissances spirituelles.",
        publicationYear: 2001,
        numberOfVolumes: 74,
        isCompleted: true,
        externalRating: 4.0,
        isRead: false,
        isToRead: true,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "SoulReaper", comment: "Arc Arrancar reste mémorable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 20), avatar: "a"),
            UserComment(id: UUID(), username: "IchigoFan", comment: "Puis la fin ? Décevante pour certains.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 100), avatar: "b"),
            UserComment(id: UUID(), username: "HollowsHunted", comment: "Les combats sont super stylés.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 60), avatar: "c")
        ],
        tags: [.action, .fantasy, .surnaturel]
    ),
    
    // 7
    Manga(
        id: UUID(),
        coverImageName: "myheroacadamiacover",
        backgroundImageName: "myheroimage",
        title: "My Hero Academia",
        author: "Kohei Horikoshi",
        genre: .shonen,
        shortSummary: "Un monde où presque tous ont des super-pouvoirs.",
        synopsis: "Izuku Midoriya, né sans pouvoirs dans un monde où ils sont la norme, rêve de devenir un héros. Il intègre une prestigieuse école de héros, affronte des vilains, et doit définir ce que signifie être un véritable héros.",
        publicationYear: 2014,
        numberOfVolumes: 40,
        isCompleted: false,
        externalRating: 4.5,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "d"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "e"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "f"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "a")
        ],
        tags: [.action, .aventure, .fantasy, .drame]
    ),
  
    // 16
    Manga(
        id: UUID(),
        coverImageName: "berserkcover",
        backgroundImageName: "berserkimage",
        title: "Berserk",
        author: "Kentaro Miura",
        genre: .seinen,
        shortSummary: "Un guerrier traqué dans un monde médiéval sombre.",
        synopsis: "Guts, mercenaire porteur d’une épée gigantesque, lutte contre des forces démoniaques dans un monde brutal. Entre vengeance, destin, folie et tragédie, l’histoire explore les ténèbres humaines et le surnaturel.",
        publicationYear: 1989,
        numberOfVolumes: 41, // approximatif
        isCompleted: false,
        externalRating: 4.4,
        userRating: 4,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "b"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "c"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "d"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "e")
        ],
        tags: [.action, .drame, .histoire, .fantasy, .horreur]
    ),
    
    // 17
    Manga(
        id: UUID(),
        coverImageName: "vagabondcover",
        backgroundImageName: "vahabondimage",
        title: "Vagabond",
        author: "Takehiko Inoue",
        genre: .seinen,
        shortSummary: "L’histoire de Musashi, samouraï légendaire.",
        synopsis: "Adapté librement de la vie de Miyamoto Musashi, Vagabond retrace son parcours, ses combats, sa quête philosophique et artistique, dans un Japon ancien rempli d’honneur, pertes, et découverte de soi.",
        publicationYear: 1998,
        numberOfVolumes: 14,
        isCompleted: true,
        externalRating: 4.0,
        userRating: 5,

        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "a"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "b"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "c"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "d")
        ],
        tags: [.drame, .histoire, .aventure]
    ),
    
    // 18
    Manga(
        id: UUID(),
        coverImageName: "dragonquestdaicover",
        backgroundImageName: "dragonquestimage",
        title: "Dragon Quest: The Adventure of Dai",
        author: "Riku Sanjo & Koji Inada",
        genre: .shonen,
        shortSummary: "Jeune héros combat forces du mal pour sauver royaume.",
        synopsis: "Dai, élevé sans parents, rêve de devenir un héros. Il rejoint une équipe pour protéger le royaume face au retour d’une armée maléfique, découvre ses pouvoirs et affronte de nombreux ennemis.",
        publicationYear: 1989,
        numberOfVolumes: 37,
        isCompleted: true,
        externalRating: 4.0,
        userRating: 4,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "e"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "f"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "a"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "b")
        ],
        tags: [.action, .fantasy, .aventure]
    ),
    
    // 19
    Manga(
        id: UUID(),
        coverImageName: "inuyashacover",
        backgroundImageName: "Inuyashaimage",
        title: "Inuyasha",
        author: "Rumiko Takahashi",
        genre: .shonen,
        shortSummary: "Démon-cha Inu se lie à lycéenne moderne.",
        synopsis: "Kagome, lycéenne du Japon moderne, est transportée dans le Sengoku suite à un puits mystérieux. Elle y rencontre Inuyasha, un demi-démon, et ensemble ils cherchent les fragments d’une pierre magique, tout en faisant face à démons, traitrises et romance.",
        publicationYear: 1996,
        numberOfVolumes: 56,
        isCompleted: true,
        externalRating: 4.4,
        userRating: 4,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "c"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "d"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "e"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "f")
        ],
        tags: [.aventure, .fantasy, .romance, .surnaturel]
    ),
    
    // 20
    Manga(
        id: UUID(),
        coverImageName: "tokyorevengerscover",
        backgroundImageName: "tokyorevengersimage",
        title: "Tokyo Revengers",
        author: "Ken Wakui",
        genre: .shonen,
        shortSummary: "Voyage dans le temps pour sauver des vies.",
        synopsis: "Takemichi revient dans le passé pour changer le destin de son ex et de son groupe. Il infiltre des gangs, affronte rivalités, trahisons, et tente de corriger les erreurs pour empêcher tragédies dans le futur.",
        publicationYear: 2017,
        numberOfVolumes: 31,
        isCompleted: false,
        externalRating: 4.1,
        userRating: 4,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "a"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "b"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "c"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "d")
        ],
        tags: [.action, .drame, .surnaturel]
    ),
    
    // 21
    Manga(
        id: UUID(),
        coverImageName: "madeinabysscover",
        backgroundImageName: "madeinabyssimage",
        title: "Made in Abyss",
        author: "Akihito Tsukushi",
        genre: .seinen,
        shortSummary: "Un abysse géant rempli de dangers mystérieux.",
        synopsis: "Riko rêve d'explorer l’Abysse, une fosse profonde pleine de reliques et créatures dangereuses. Accompagnée de Reg, un robot mystérieux, elle descend couche après couche, découvrant horreurs et beautés, mais au prix de grands sacrifices.",
        publicationYear: 2012,
        numberOfVolumes: 12,
        isCompleted: false,
        externalRating: 4.7,
        userRating: 4,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "e"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "f"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "a"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "b")
        ],
        tags: [.fantasy, .aventure, .horreur, .drame]
    ),
    
    // 22
    Manga(
        id: UUID(),
        coverImageName: "onepunchmancover",
        backgroundImageName: "onepunchmanimage",
        title: "One‑Punch Man",
        author: "ONE & Yusuke Murata",
        genre: .shonen,
        shortSummary: "Un héros trop fort: ennui et chaos quotidien.",
        synopsis: "Saitama est un héros capable de vaincre n’importe quel adversaire d’un seul coup. Fatigué du manque de défi, il vague entre ennui, situations absurdes, et combats épiques, tout en aidant ceux dans le besoin quand il le peut.",
        publicationYear: 2009,
        numberOfVolumes: 28,
        isCompleted: false,
        externalRating: 4.3,
        userRating: 4,
        userComment: "Y ne ba pa tout lé méchan en 1 cou. Nul",
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "c"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "d"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "e"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "f")
        ],
        tags: [.action, .comedie, .aventure]
    ),
    
    
    // 24
    Manga(
        id: UUID(),
        coverImageName: "tokyoghoulcover",
        backgroundImageName: "tokyoghoulimage",
        title: "Tokyo Ghoul",
        author: "Sui Ishida",
        genre: .seinen,
        shortSummary: "Le conflit entre humains et goules continue.",
        synopsis: "Après les événements de Tokyo Ghoul, Kaneki lutte pour trouver sa place, dans un monde où les goules et les humains sont en guerre, tout en découvrant de nouvelles factions et conflits intérieurs.",
        publicationYear: 2014,
        numberOfVolumes: 16,
        isCompleted: true,
        externalRating: 4.8,
        userRating: 4,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "f"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "a"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "b"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "c")
        ],
        tags: [.drame, .surnaturel, .fantasy]
    ),
    
    
    // 26
    
    
    // 27
    Manga(
        id: UUID(),
        coverImageName: "mobpsychocover",
        backgroundImageName: "mobpsychoimage",
        title: "Mob Psycho 100",
        author: "ONE",
        genre: .seinen,
        shortSummary: "Un psychique veut juste vivre normalement.",
        synopsis: "Mob, un garçon doté de pouvoirs psychiques énormes, cherche à mener une vie ordinaire malgré les demandes absurdes de ses proches, les dangers surnaturels, et les dilemmes moraux quant à l’usage de ses pouvoirs.",
        publicationYear: 2012,
        numberOfVolumes: 16,
        isCompleted: false,
        externalRating: 4.5,
        userRating: 4,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "d"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "e"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "f"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "a")
        ],
        tags: [.action, .fantasy, .drame, .comedie, .surnaturel]
    ),
    
    // 28
    Manga(
        id: UUID(),
        coverImageName: "vinlandsagacover",
        backgroundImageName: "vinlandsagaimage",
        title: "Vinland Saga",
        author: "Makoto Yukimura",
        genre: .seinen,
        shortSummary: "Vikings, vengeance, terres sauvages et destin.",
        synopsis: "Thorfinn, fils d’un guerrier viking, cherche vengeance contre celui qui a tué son père. Son voyage le conduit à travers guerres, mer, trahisons, et questionnements sur le sens de la vie et la guerre.",
        publicationYear: 2005,
        numberOfVolumes: 27,
        isCompleted: false,
        externalRating: 4.0,
        userRating: 4,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "b"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "c"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "d"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "e")
        ],
        tags: [.drame, .histoire, .aventure]
    ),
    
    // 29
    Manga(
        id: UUID(),
        coverImageName: "monstercover",
        backgroundImageName: "monsterimage",
        title: "Monster",
        author: "Naoki Urasawa",
        genre: .seinen,
        shortSummary: "Un médecin traque un tueur psychopathe.",
        synopsis: "Le Dr Kenzo Tenma sauve un garçon au lieu du maire. Plus tard, ce garçon devenu un assassin meurt ou tue beaucoup, et Tenma se lance dans un voyage pour arrêter les horreurs qu’il a déclenché, tout en questionnant morale, culpabilité, identité.",
        publicationYear: 1994,
        numberOfVolumes: 18,
        isCompleted: true,
        externalRating: 4.3,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "f"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "a"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "b"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "c")
        ],
        tags: [.thriller, .mystere, .drame]
    ),
    
    // 30
    Manga(
        id: UUID(),
        coverImageName: "theroseofversaillescover",
        backgroundImageName: "theroseofversaillesimage",
        title: "The Rose of Versailles",
        author: "Ikeda Riyoko",
        genre: .shojo,
        shortSummary: "Intrigues à la cour de Versailles avant la Révolution.",
        synopsis: "Oscar François de Jarjayes, élevée en tant qu’homme, sert comme commandant de la Garde Royale sous Louis XVI. Elle navigue entre politique, amour et devoir, dans une France en pleine mutation révolutionnaire.",
        publicationYear: 1972,
        numberOfVolumes: 10,
        isCompleted: true,
        externalRating: 4.7,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "d"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "e"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "f"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "a")
        ],
        tags: [.romance, .drame, .histoire]
    ),
    
    // 31
    Manga(
        id: UUID(),
        coverImageName: "slamcover",
        backgroundImageName: "slamdunkimage",
        title: "Slam Dunk",
        author: "Takehiko Inoue",
        genre: .shonen,
        shortSummary: "Basket-ball, compétition, rêve de lycée.",
        synopsis: "Hanamichi Sakuragi, un lycéen bagarreur, rejoint l’équipe de basket pour impressionner une fille, mais il découvre un amour profond pour le jeu, l’esprit d’équipe, et l’effort.",
        publicationYear: 1990,
        numberOfVolumes: 31,
        isCompleted: true,
        externalRating: 4.9,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "b"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "a"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "c"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "d")
        ],
        tags: [.sport, .aventure, .drame]
    ),
    
    // 32
    Manga(
        id: UUID(),
        coverImageName: "kingdomcover",
        backgroundImageName: "kingdomimage",
        title: "Kingdom",
        author: "Yasuhisa Hara",
        genre: .seinen,
        shortSummary: "Guerres, stratégie, unification de la Chine ancienne.",
        synopsis: "Dans la période des Royaumes combattants en Chine, le jeune orphelin Xin rêve de devenir grand général. Entre batailles gigantesques, alliances, trahisons, et stratégie militaire, le destin d’un empire se joue.",
        publicationYear: 2006,
        numberOfVolumes: 69,
        isCompleted: false,
        externalRating: 4.5,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "e"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "f"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "a"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "c")
        ],
        tags: [.histoire, .action, .drame]
    ),
    
    // 34
    Manga(
        id: UUID(),
        coverImageName: "fistofthenorthstarcover",
        backgroundImageName: "kenlesurvivant",
        title: "Ken le survivant",
        author: "Buronson & Tetsuo Hara",
        genre: .seinen,
        shortSummary: "Hokuto, art martial destructeur en monde post‑apocalyptique.",
        synopsis: "Après la destruction de la civilisation par un cataclysme nucléaire, Kenshiro, maître du Hokuto Shinken, parcourt les terres désolées pour protéger les innocents, venger ceux qu’il aime, et affronter les invasions d’opportunistes et de tyrans.",
        publicationYear: 1983,
        numberOfVolumes: 27,
        isCompleted: true,
        externalRating: 4.7,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "a"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "b"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "c"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "d")
        ],
        tags: [.action, .aventure, .drame]
    ),
    
    // 35
    Manga(
        id: UUID(),
        coverImageName: "blackclovercover",
        backgroundImageName: "blackcloverimage",
        title: "Black Clover",
        author: "Yuki Tabata",
        genre: .shonen,
        shortSummary: "Deux orphelins rêvent devenir roi mage.",
        synopsis: "Asta, né sans magie dans un monde où elle est universelle, et son ami Yuno, prodige, rivalisent pour réaliser leur rêve : devenir le Roi Mage, tout en combattant des néronœuds, sorciers maléfiques et défis impossibles.",
        publicationYear: 2015,
        numberOfVolumes: 34,
        isCompleted: false,
        externalRating: 4.9,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "e"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "f"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "f"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "e")
        ],
        tags: [.action, .fantasy, .aventure, .comedie]
    ),
    
    // 31 (Shojo)
    Manga(
        id: UUID(),
        coverImageName: "aoharuridecover",
        backgroundImageName: "aoharuimage",
        title: "Ao Haru Ride",
        author: "Io Sakisaka",
        genre: .shojo,
        shortSummary: "Rêve de lycée, amour d’enfance, deuxième chance romantique.",
        synopsis: "Futaba recrée une nouvelle image au lycée après ses expériences du collège. Quand son amour d’enfance revient, il a changé – et Fantaba doit décider si elle reste fidèle à qui elle est ou changer pour lui.",
        publicationYear: 2011,
        numberOfVolumes: 13,
        isCompleted: true,
        externalRating: 4.1,
        isRead: false,
        isToRead: true,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "d"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "a"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "b"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "c")
        ],
        tags: [.romance, .drame, .trancheDeVie]
    ),
    
    // 32 (Shojo)
    Manga(
        id: UUID(),
        coverImageName: "sailormooncover",
        backgroundImageName: "sailormoonimage",
        title: "Sailor Moon",
        author: "Naoko Takeuchi",
        genre: .shojo,
        shortSummary: "Collège, magie, guerrières protectrices de la Terre.",
        synopsis: "Usagi Tsukino découvre qu’elle est Sailor Moon, la guerrière de l’amour et de la justice. Avec les autres Sailor, elle combat les forces du mal tout en gérant sa vie de lycéenne pleine de maladresses et d’amitié.",
        publicationYear: 1991,
        numberOfVolumes: 52,
        isCompleted: true,
        externalRating: 4.5,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "a"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "b"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "c"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "d")
        ],
        tags: [.fantasy, .romance, .aventure]
    ),
    
    // 33 (Shojo)
    Manga(
        id: UUID(),
        coverImageName: "horiyamacover",
        backgroundImageName: "horimiyaimage",
        title: "Horimiya",
        author: "HERO & Daisuke Hagiwara",
        genre: .shojo,
        shortSummary: "Deux lycéens opposés s’apprivoisent en secret.",
        synopsis: "Hori, populaire mais harcelée à la maison, et Miyamura, timide mais avec un style alternatif, découvrent leurs véritables personnalités en dehors du lycée. Leur amitié évolue, révélant des blessures, confidences, et romance douce.",
        publicationYear: 2011,
        numberOfVolumes: 16,
        isCompleted: true,
        externalRating: 4.3,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "e"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "d"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "f"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "a")
        ],
        tags: [.romance, .drame, .trancheDeVie]
    ),
    
    
    // 35 (Shojo)
    Manga(
        id: UUID(),
        coverImageName: "orangecover",
        backgroundImageName: "orangeimage",
        title: "Orange",
        author: "Ichigo Takano",
        genre: .shojo,
        shortSummary: "Une lettre du futur pour changer le passé.",
        synopsis: "Naho reçoit une lettre d’elle-même dans le futur, demandant à elle-même de faire des choix pour empêcher le décès d’un ami. Elle navigue regrets, amitié, amour, et la peur du futur en tentant de réparer ses erreurs.",
        publicationYear: 2012,
        numberOfVolumes: 13,
        isCompleted: true,
        externalRating: 4.0,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "a"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "b"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "c"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "d")
        ],
        tags: [.romance, .drame, .trancheDeVie]
    ),
    
    // 36 (Josei)
    Manga(
        id: UUID(),
        coverImageName: "paradisekisscover",
        backgroundImageName: "paradisekissimage",
        title: "Paradise Kiss",
        author: "Ai Yazawa",
        genre: .josei,
        shortSummary: "Mode, amour complexe, choix de vie adulte.",
        synopsis: "Yukari Hayasaka abandonne ses études pour devenir mannequin après avoir été repérée par un groupe de designers. Elle découvre le monde de la mode, l’amour, et le prix des sacrifices personnels, tout en faisant face à ses doutes sur l’identité et la légitimité de ses rêves.",
        publicationYear: 1999,
        numberOfVolumes: 5,
        isCompleted: true,
        externalRating: 4.4,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "a"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "b"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "c"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "d")
        ],
        tags: [.romance, .drame, .trancheDeVie]
    ),
    
    // 37 (Josei)
    Manga(
        id: UUID(),
        coverImageName: "nanacover",
        backgroundImageName: "nanaimage",
        title: "Nana",
        author: "Ai Yazawa",
        genre: .josei,
        shortSummary: "Amitié, musique, amour tumultueux entre deux Nana.",
        synopsis: "Deux jeunes femmes nommées Nana se rencontrent à Tokyo : l’une chante dans un groupe punk, l’autre suit son petit ami en ville. Elles partagent la même passion, les mêmes peurs, les mêmes rêves, mais aussi des épreuves liées à l’amour, au succès, à l’amitié et aux choix difficiles adultes.",
        publicationYear: 2000,
        numberOfVolumes: 21,
        isCompleted: true,
        externalRating: 4.5,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "a"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "b"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "c"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "d")
        ],
        tags: [.romance, .drame, .trancheDeVie]
    ),
    
    // 38 (Josei)
    Manga(
        id: UUID(),
        coverImageName: "wotakoicover",
        backgroundImageName: "watakoiimage",
        title: "Wotakoi: Love Is Hard for Otaku",
        author: "Fujita",
        genre: .josei,
        shortSummary: "Deux amis otaku deviennent amoureux adultes.",
        synopsis: "Narumi, otaku timide, et Hirotaka, collègue dans une boîte, essaient de jongler entre leurs passions geek, leur travail, leurs insécurités, et leur relation qui démarre tard. Beaucoup d’humour, réalisme, et douceur dans leur quotidien.",
        publicationYear: 2015,
        numberOfVolumes: 11,
        isCompleted: true,
        externalRating: 4.0,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "a"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "b"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "c"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "d")
        ],
        tags: [.romance, .trancheDeVie, .drame, .comedie]
    ),
    
    
    // 40 (Josei)
    Manga(
        id: UUID(),
        coverImageName: "houseofthesuncover",
        backgroundImageName: "houseofsunimage",
        title: "House of the Sun",
        author: "Taamo (Taamo / 樋口橘)​",
        genre: .josei,
        shortSummary: "Retrouver sa mère, reconstruire les liens familiaux adultes.",
        synopsis: "Mao Motomiya revient vivre chez son père après que sa mère l’a abandonnée. Elle se confronte au passé familial, aux non-dits, et à ses propres sentiments blessés, tout en essayant de construire une vie autonome et stable.",
        publicationYear: 2010,
        numberOfVolumes: 13,
        isCompleted: true,
        externalRating: 4.1,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", otherUserNote: 5, date: Date(timeIntervalSinceNow: -86400 * 2), avatar: "a"),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", otherUserNote: 4, date: Date(timeIntervalSinceNow: -86400 * 25), avatar: "b"),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 45), avatar: "c"),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", otherUserNote: 3, date: Date(timeIntervalSinceNow: -86400 * 80), avatar: "d")
        ],
        tags: [.drame, .trancheDeVie, .romance]
    ),
    
]

