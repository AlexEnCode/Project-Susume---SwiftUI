import SwiftUI



let mangas: [Manga] = [

    // 1
    Manga(
        id: UUID(),
        coverImageName: "onepiececover",
        title: "One Piece",
        author: "Eiichiro Oda",
        genre: .shonen,
        shortSummary: "Luffy part à l'aventure pour devenir roi des pirates.",
        synopsis: "Monkey D. Luffy, capitaine au chapeau de paille, recrute un équipage incroyable pour trouver le légendaire trésor One Piece et défier les plus grands dangers des mers.",
        publicationYear: 1997,
        numberOfVolumes: 106,
        isCompleted: false,
        externalRating: 4.1,
        userRating: 4.5,
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PirateFan", comment: "Toujours épique, jamais déçu.", date: Date(timeIntervalSinceNow: -86400 * 3)),
            UserComment(id: UUID(), username: "Marin", comment: "L'univers est si vaste, les personnages attachants.", date: Date(timeIntervalSinceNow: -86400 * 10)),
            UserComment(id: UUID(), username: "GrandLineLover", comment: "Je me demande ce qu’est vraiment le One Piece.", date: Date(timeIntervalSinceNow: -86400 * 30))
        ],
        tags: [.action, .aventure, .fantasy, .surnaturel, .comedie]
    ),
    
    // 2
    Manga(
        id: UUID(),
        coverImageName: "narutocover",
        title: "Naruto",
        author: "Masashi Kishimoto",
        genre: .shonen,
        shortSummary: "Un ninja rêve d’être reconnu par son village.",
        synopsis: "Naruto Uzumaki, un jeune ninja porteur du démon renard, cherche à obtenir le respect des habitants de Konoha et à devenir Hokage, tout en surmontant des ennemis puissants et ses propres doutes.",
        publicationYear: 1999,
        numberOfVolumes: 72,
        isCompleted: true,
        externalRating: 3.7,
        userRating: 4.0,
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "ShinobiFan", comment: "Arc Pain bouleversant.", date: Date(timeIntervalSinceNow: -86400 * 15)),
            UserComment(id: UUID(), username: "TeamKurama", comment: "La fin est mitigée selon moi, mais le voyage était superbe.", date: Date(timeIntervalSinceNow: -86400 * 40))
        ],
        tags: [.action, .aventure, .drame, .fantasy]
    ),
    
    // 3
    Manga(
        id: UUID(),
        coverImageName: "attackontitancover",
        title: "Attack on Titan",
        author: "Hajime Isayama",
        genre: .shonen,
        shortSummary: "L’humanité lutte contre des titans dévoreurs.",
        synopsis: "Dans un monde où l’humanité est enfermée derrière d’immenses murs pour se protéger des Titans, Eren Jaeger jure de les éliminer après avoir assisté à la destruction de sa ville, découvrant peu à peu les sombres secrets de leur existence.",
        publicationYear: 2009,
        numberOfVolumes: 34,
        isCompleted: true,
        externalRating: 4.0,
        userRating: 4.2,
        isRead: false,
        isToRead: true,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "SurveyCorps", comment: "Les retournements de situation sont fous.", date: Date(timeIntervalSinceNow: -86400 * 5)),
            UserComment(id: UUID(), username: "TitanSlayer", comment: "Le mystère autour des murs m’a captivé.", date: Date(timeIntervalSinceNow: -86400 * 20)),
            UserComment(id: UUID(), username: "ErenFan", comment: "Certains arcs sont lents, mais globalement excellent.", date: Date(timeIntervalSinceNow: -86400 * 60))
        ],
        tags: [.action, .drame, .fantasy, .thriller]
    ),
    
    // 4
    Manga(
        id: UUID(),
        coverImageName: "deathnotecover",
        title: "Death Note",
        author: "Tsugumi Ohba & Takeshi Obata",
        genre: .shonen,
        shortSummary: "Un lycéen obtient un carnet qui tue les gens.",
        synopsis: "Light Yagami trouve un Death Note, carnet aux pouvoirs mortels, et décide de purifier le monde des criminels. Mais le détective L se lance à sa poursuite, donnant lieu à une guerre psychologique intense.",
        publicationYear: 2003,
        numberOfVolumes: 12,
        isCompleted: true,
        externalRating: 4.9,
        userRating: 4.1,
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "Kira", comment: "La tension psychologique est palpable.", date: Date(timeIntervalSinceNow: -86400 * 12)),
            UserComment(id: UUID(), username: "LDetective", comment: "Le duel mental entre Light et L est brillant.", date: Date(timeIntervalSinceNow: -86400 * 25))
        ],
        tags: [.drame, .mystere, .thriller]
    ),
    
    // 5
    Manga(
        id: UUID(),
        coverImageName: "fullmetalalchemistcover",
        title: "Fullmetal Alchemist",
        author: "Hiromu Arakawa",
        genre: .shonen,
        shortSummary: "Deux frères cherchent une pierre philosophale.",
        synopsis: "Après un rituel alchimique raté, Edward et Alphonse Elric cherchent la pierre philosophale pour retrouver ce qu’ils ont perdu. Leurs quêtes les amènent à affronter corruption, guerre, enjeux moraux et secrets anciens.",
        publicationYear: 2001,
        numberOfVolumes: 27,
        isCompleted: true,
        externalRating: 4.2,
        userRating: 4.3,
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "Alchemist", comment: "Chaque tome est un chef-d’œuvre.", date: Date(timeIntervalSinceNow: -86400 * 8)),
            UserComment(id: UUID(), username: "Scarbrother", comment: "Alphonse me touche toujours.", date: Date(timeIntervalSinceNow: -86400 * 30)),
            UserComment(id: UUID(), username: "MustangFan", comment: "Les thèmes moraux sont super bien traités.", date: Date(timeIntervalSinceNow: -86400 * 50))
        ],
        tags: [.action, .aventure, .fantasy, .drame]
    ),
    
    // 6
    Manga(
        id: UUID(),
        coverImageName: "bleachcover",
        title: "Bleach",
        author: "Tite Kubo",
        genre: .shonen,
        shortSummary: "Un lycéen devient substitut de Dieu de la Mort.",
        synopsis: "Ichigo Kurosaki acquiert les pouvoirs de Shinigami et doit protéger les humains des Hollows, tout en naviguant dans les conflits entre âmes, esprits, et grandes puissances spirituelles.",
        publicationYear: 2001,
        numberOfVolumes: 74,
        isCompleted: true,
        externalRating: 4.0,
        userRating: 4.5,
        isRead: false,
        isToRead: true,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "SoulReaper", comment: "Arc Arrancar reste mémorable.", date: Date(timeIntervalSinceNow: -86400 * 20)),
            UserComment(id: UUID(), username: "IchigoFan", comment: "Puis la fin ? Décevante pour certains.", date: Date(timeIntervalSinceNow: -86400 * 100)),
            UserComment(id: UUID(), username: "HollowsHunted", comment: "Les combats sont super stylés.", date: Date(timeIntervalSinceNow: -86400 * 60))
        ],
        tags: [.action, .fantasy, .surnaturel]
    ),
    
    // 7
    Manga(
        id: UUID(),
        coverImageName: "myheroacadamiacover",
        title: "My Hero Academia",
        author: "Kohei Horikoshi",
        genre: .shonen,
        shortSummary: "Un monde où presque tous ont des super-pouvoirs.",
        synopsis: "Izuku Midoriya, né sans pouvoirs dans un monde où ils sont la norme, rêve de devenir un héros. Il intègre une prestigieuse école de héros, affronte des vilains, et doit définir ce que signifie être un véritable héros.",
        publicationYear: 2014,
        numberOfVolumes: 40,
        isCompleted: false,
        externalRating: 4.5,
        userRating: 4.7,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "PlusUltra", comment: "Inspirant, visuellement incroyable.", date: Date(timeIntervalSinceNow: -86400 * 2)),
            UserComment(id: UUID(), username: "Deku", comment: "J'adore les pouvoirs et les combats.", date: Date(timeIntervalSinceNow: -86400 * 25)),
            UserComment(id: UUID(), username: "VillainLover", comment: "Les méchants ont enfin du développement.", date: Date(timeIntervalSinceNow: -86400 * 45)),
            UserComment(id: UUID(), username: "UAStudent", comment: "Parfois ça ralentit, mais ça vaut le coup.", date: Date(timeIntervalSinceNow: -86400 * 80))
        ],
        tags: [.action, .aventure, .fantasy, .drame]
    ),
    
    // 8
    Manga(
        id: UUID(),
        coverImageName: "hxhcover",
        title: "Hunter x Hunter",
        author: "Yoshihiro Togashi",
        genre: .shonen,
        shortSummary: "Un garçon recherche son père chasseur.",
        synopsis: "Gon Freecss découvre que son père est un Hunter (chasseur d’élite) et décide de emprunter son chemin. En cours de route, il se lie d’amitié avec Kirua, Leorio, Kurapika, et doit affronter des épreuves physiques, psychologiques, et des ennemis mystérieux.",
        publicationYear: 1998,
        numberOfVolumes: 36,
        isCompleted: false,
        externalRating: 4.0,
        userRating: 4.4,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "GreedIsland", comment: "Kurapika est l’un des persos les plus profonds.", date: Date(timeIntervalSinceNow: -86400 * 30)),
            UserComment(id: UUID(), username: "GonKid", comment: "Toujours surpris par les arcs.", date: Date(timeIntervalSinceNow: -86400 * 60)),
            UserComment(id: UUID(), username: "KilluaFan", comment: "La pause me manque…", date: Date(timeIntervalSinceNow: -86400 * 300))
        ],
        tags: [.action, .aventure, .drame, .fantasy]
    ),
    
    // 9
    Manga(
        id: UUID(),
        coverImageName: "demonslayercover",
        title: "Demon Slayer: Kimetsu no Yaiba",
        author: "Koyoharu Gotouge",
        genre: .shonen,
        shortSummary: "Un frère cherche à sauver sa sœur transformée.",
        synopsis: "Tanjiro Kamado, après la mort de sa famille et la transformation de sa sœur en démon, devient pourfendeur de démons pour trouver un moyen de la ramener à la normale, tout en affrontant des puissants adversaires et démons ancestraux.",
        publicationYear: 2016,
        numberOfVolumes: 23,
        isCompleted: true,
        externalRating: 4.8,
        userRating: 4.2,
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "WaterBreather", comment: "Les dessins sont superbes.", date: Date(timeIntervalSinceNow: -86400 * 7)),
            UserComment(id: UUID(), username: "NezukoFan", comment: "Les scènes de combat sont intenses.", date: Date(timeIntervalSinceNow: -86400 * 20)),
            UserComment(id: UUID(), username: "Muzan", comment: "La progression des personnages est forte.", date: Date(timeIntervalSinceNow: -86400 * 60)),
            UserComment(id: UUID(), username: "Giyu", comment: "Porter une marque émotionnelle.", date: Date(timeIntervalSinceNow: -86400 * 90))
        ],
        tags: [.action, .fantasy, .drame, .aventure]
    ),

    // 10
    Manga(
        id: UUID(),
        coverImageName: "jojoscover",
        title: "JoJo's Bizarre Adventure",
        author: "Hirohiko Araki",
        genre: .shonen,
        shortSummary: "Famille Joestar combat des forces surnaturelles.",
        synopsis: "La saga suit plusieurs générations de la famille Joestar, chacune devant faire face à des adversaires surnaturels, dotés de pouvoirs étranges (les Stand), dans des univers très différents à chaque partie.",
        publicationYear: 1987,
        numberOfVolumes: 131,
        isCompleted: false,
        externalRating: 4.6,
        userRating: 4.9,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "StandUser", comment: "Les Stand sont si créatifs.", date: Date(timeIntervalSinceNow: -86400 * 22)),
            UserComment(id: UUID(), username: "ArakiFan", comment: "Chaque partie est unique.", date: Date(timeIntervalSinceNow: -86400 * 100)),
            UserComment(id: UUID(), username: "Dio", comment: "Les références historiques sont cool.", date: Date(timeIntervalSinceNow: -86400 * 300))
        ],
        tags: [.action, .aventure, .fantasy, .surnaturel, .drame]
    ),


    // 12
    Manga(
        id: UUID(),
        coverImageName: "dragonballcover",
        title: "Dragon Ball",
        author: "Akira Toriyama",
        genre: .shonen,
        shortSummary: "Tournoi d’arts martiaux pour sauver l’univers.",
        synopsis: "Son Goku, enfant doté d’une force surhumaine, défend la Terre, participe à des tournois, affronte des ennemis puissants, tout en découvrant ses origines et ses propres limites.",
        publicationYear: 1984,
        numberOfVolumes: 42,
        isCompleted: true,
        externalRating: 4.4,
        userRating: 4.7,
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "Saiyan", comment: "Iconique pour les fans de combat.", date: Date(timeIntervalSinceNow: -86400 * 30)),
            UserComment(id: UUID(), username: "KameHouse", comment: "Le sens de l’humour est dingue.", date: Date(timeIntervalSinceNow: -86400 * 100)),
            UserComment(id: UUID(), username: "VegetaFan", comment: "Les sagas épiques sont mémorables.", date: Date(timeIntervalSinceNow: -86400 * 200))
        ],
        tags: [.action, .aventure, .fantasy, .comedie]
    ),

    // 13
    Manga(
        id: UUID(),
        coverImageName: "hxhcover",
        title: "Tokyo Ghoul",
        author: "Sui Ishida",
        genre: .seinen,
        shortSummary: "Un étudiant devient mi-ghoul, mi-humain.",
        synopsis: "Ken Kaneki, étudiant timide, se retrouve transformé en ghoul après une greffe d’organe. Devenu mi-humain mi-monstre, il doit naviguer entre deux mondes, gérer la faim, la cruauté humaine, et découvrir ce qu’est vraiment l’humanité.",
        publicationYear: 2011,
        numberOfVolumes: 14,
        isCompleted: true,
        externalRating: 4.2,
        userRating: 4.6,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "GhoulEyes", comment: "Les transformations sont poignantes.", date: Date(timeIntervalSinceNow: -86400 * 7)),
            UserComment(id: UUID(), username: "Anteiku", comment: "Le conflit intérieur de Kaneki est fort.", date: Date(timeIntervalSinceNow: -86400 * 50)),
            UserComment(id: UUID(), username: "OneEyed", comment: "Un univers sombre bien construit.", date: Date(timeIntervalSinceNow: -86400 * 90))
        ],
        tags: [.drame, .horreur, .fantasy]
    ),

    // 14
    Manga(
        id: UUID(),
        coverImageName: "jujutsukaisencover",
        title: "Jujutsu Kaisen",
        author: "Gege Akutami",
        genre: .shonen,
        shortSummary: "Des exorcistes combattent des malédictions puissantes.",
        synopsis: "Yuji Itadori intègre un monde caché d’exorcisme après avoir avalé un doigt maudit. Il affronte des malédictions, rejoint l’école d’exorcistes, tout en découvrant des séries de secrets et de sacrifices.",
        publicationYear: 2018,
        numberOfVolumes: 24,
        isCompleted: false,
        externalRating: 4.6,
        userRating: 4.8,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "CursedUser", comment: "Le combat contre Mahito m’a marqué.", date: Date(timeIntervalSinceNow: -86400 * 3)),
            UserComment(id: UUID(), username: "GojoFan", comment: "L’humour fonctionne bien en contraste.", date: Date(timeIntervalSinceNow: -86400 * 25)),
            UserComment(id: UUID(), username: "Yuji", comment: "J’aimerais plus de développement sur les malédictions.", date: Date(timeIntervalSinceNow: -86400 * 60))
        ],
        tags: [.action, .fantasy, .horreur, .aventure]
    ),

    // 15
    Manga(
        id: UUID(),
        coverImageName: "fairytailcover",
        title: "Fairy Tail",
        author: "Hiro Mashima",
        genre: .shonen,
        shortSummary: "Guild magique d’aventuriers affronte des menaces.",
        synopsis: "Dans le royaume de Fiore, la guilde Fairy Tail réunit des mages puissants et excentriques, unis par l’amitié. Ils vivent des missions, des combats, des complots, et explorent les mystères de la magie.",
        publicationYear: 2006,
        numberOfVolumes: 63,
        isCompleted: true,
        externalRating: 4.1,
        userRating: 4.4,
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "DragonSlayer", comment: "Guildes, défis, magie : ambiance top.", date: Date(timeIntervalSinceNow: -86400 * 20)),
            UserComment(id: UUID(), username: "Natsu", comment: "Lucy & Happy sont adorables.", date: Date(timeIntervalSinceNow: -86400 * 100)),
            UserComment(id: UUID(), username: "ErzaBlade", comment: "Certains arcs sont répétitifs.", date: Date(timeIntervalSinceNow: -86400 * 200))
        ],
        tags: [.action, .fantasy, .aventure, .comedie]
    ),

    // 16
    Manga(
        id: UUID(),
        coverImageName: "berserkcover",
        title: "Berserk",
        author: "Kentaro Miura",
        genre: .seinen,
        shortSummary: "Un guerrier traqué dans un monde médiéval sombre.",
        synopsis: "Guts, mercenaire porteur d’une épée gigantesque, lutte contre des forces démoniaques dans un monde brutal. Entre vengeance, destin, folie et tragédie, l’histoire explore les ténèbres humaines et le surnaturel.",
        publicationYear: 1989,
        numberOfVolumes: 41, // approximatif
        isCompleted: false,
        externalRating: 4.4,
        userRating: 4.6,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "BrandOfSacrifice", comment: "Art magistral.", date: Date(timeIntervalSinceNow: -86400 * 45)),
            UserComment(id: UUID(), username: "SkullKnight", comment: "Le trauma est lourd mais bien géré.", date: Date(timeIntervalSinceNow: -86400 * 80)),
            UserComment(id: UUID(), username: "Falconia", comment: "Chaque page peut choquer.", date: Date(timeIntervalSinceNow: -86400 * 120))
        ],
        tags: [.action, .drame, .histoire, .fantasy, .horreur]
    ),

    // 17
    Manga(
        id: UUID(),
        coverImageName: "vagabondcover",
        title: "Vagabond",
        author: "Takehiko Inoue",
        genre: .seinen,
        shortSummary: "L’histoire de Musashi, samouraï légendaire.",
        synopsis: "Adapté librement de la vie de Miyamoto Musashi, Vagabond retrace son parcours, ses combats, sa quête philosophique et artistique, dans un Japon ancien rempli d’honneur, pertes, et découverte de soi.",
        publicationYear: 1998,
        numberOfVolumes: 14,
        isCompleted: true,
        externalRating: 4.0,
        userRating: 4.4,
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "Ronin", comment: "Esthétique sublime.", date: Date(timeIntervalSinceNow: -86400 * 30)),
            UserComment(id: UUID(), username: "InoueStyle", comment: "Poétique et violent.", date: Date(timeIntervalSinceNow: -86400 * 100))
        ],
        tags: [.drame, .histoire, .aventure]
    ),

    // 18
    Manga(
        id: UUID(),
        coverImageName: "dragonquestdaicover",
        title: "Dragon Quest: The Adventure of Dai",
        author: "Riku Sanjo & Koji Inada",
        genre: .shonen,
        shortSummary: "Jeune héros combat forces du mal pour sauver royaume.",
        synopsis: "Dai, élevé sans parents, rêve de devenir un héros. Il rejoint une équipe pour protéger le royaume face au retour d’une armée maléfique, découvre ses pouvoirs et affronte de nombreux ennemis.",
        publicationYear: 1989,
        numberOfVolumes: 37,
        isCompleted: true,
        externalRating: 4.0,
        userRating: 4.3,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "HeroDai", comment: "L’esprit héroïque est rétro mais efficace.", date: Date(timeIntervalSinceNow: -86400 * 50)),
            UserComment(id: UUID(), username: "Pop", comment: "Musique, magie, aventure : j’adore.", date: Date(timeIntervalSinceNow: -86400 * 120))
        ],
        tags: [.action, .fantasy, .aventure]
    ),

    // 19
    Manga(
        id: UUID(),
        coverImageName: "inuyashacover",
        title: "Inuyasha",
        author: "Rumiko Takahashi",
        genre: .shonen,
        shortSummary: "Démon-cha Inu se lie à lycéenne moderne.",
        synopsis: "Kagome, lycéenne du Japon moderne, est transportée dans le Sengoku suite à un puits mystérieux. Elle y rencontre Inuyasha, un demi-démon, et ensemble ils cherchent les fragments d’une pierre magique, tout en faisant face à démons, traitrises et romance.",
        publicationYear: 1996,
        numberOfVolumes: 56,
        isCompleted: true,
        externalRating: 4.4,
        userRating: 4.6,
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "Sesshomaru", comment: "Les battles avec Naraku sont mémorables.", date: Date(timeIntervalSinceNow: -86400 * 30)),
            UserComment(id: UUID(), username: "Shippo", comment: "La romance apporte beaucoup.", date: Date(timeIntervalSinceNow: -86400 * 100)),
            UserComment(id: UUID(), username: "KagomeLover", comment: "Le mélange de mythologie et aventure est bien fait.", date: Date(timeIntervalSinceNow: -86400 * 200))
        ],
        tags: [.aventure, .fantasy, .romance, .surnaturel]
    ),

    // 20
    Manga(
        id: UUID(),
        coverImageName: "tokyorevengerscover",
        title: "Tokyo Revengers",
        author: "Ken Wakui",
        genre: .shonen,
        shortSummary: "Voyage dans le temps pour sauver des vies.",
        synopsis: "Takemichi revient dans le passé pour changer le destin de son ex et de son groupe. Il infiltre des gangs, affronte rivalités, trahisons, et tente de corriger les erreurs pour empêcher tragédies dans le futur.",
        publicationYear: 2017,
        numberOfVolumes: 31,
        isCompleted: false,
        externalRating: 4.1,
        userRating: 4.2,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "Delorean", comment: "Concept du temps bien exploité.", date: Date(timeIntervalSinceNow: -86400 * 15)),
            UserComment(id: UUID(), username: "MikeyFan", comment: "Les combats de gangs sont intenses.", date: Date(timeIntervalSinceNow: -86400 * 45)),
            UserComment(id: UUID(), username: "Takemichi", comment: "L’intrigue m’a gardé en haleine.", date: Date(timeIntervalSinceNow: -86400 * 80))
        ],
        tags: [.action, .drame, .surnaturel]
    ),

    // 21
    Manga(
        id: UUID(),
        coverImageName: "madeinabysscover",
        title: "Made in Abyss",
        author: "Akihito Tsukushi",
        genre: .seinen,
        shortSummary: "Un abysse géant rempli de dangers mystérieux.",
        synopsis: "Riko rêve d'explorer l’Abysse, une fosse profonde pleine de reliques et créatures dangereuses. Accompagnée de Reg, un robot mystérieux, elle descend couche après couche, découvrant horreurs et beautés, mais au prix de grands sacrifices.",
        publicationYear: 2012,
        numberOfVolumes: 12,
        isCompleted: false,
        externalRating: 4.7,
        userRating: 4.0,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "AbyssWalker", comment: "Atmosphère oppressante magnifique.", date: Date(timeIntervalSinceNow: -86400 * 20)),
            UserComment(id: UUID(), username: "Reg", comment: "Le design est perturbant mais beau.", date: Date(timeIntervalSinceNow: -86400 * 70))
        ],
        tags: [.fantasy, .aventure, .horreur, .drame]
    ),

    // 22
    Manga(
        id: UUID(),
        coverImageName: "onepunchmancover",
        title: "One‑Punch Man",
        author: "ONE & Yusuke Murata",
        genre: .shonen,
        shortSummary: "Un héros trop fort: ennui et chaos quotidien.",
        synopsis: "Saitama est un héros capable de vaincre n’importe quel adversaire d’un seul coup. Fatigué du manque de défi, il vague entre ennui, situations absurdes, et combats épiques, tout en aidant ceux dans le besoin quand il le peut.",
        publicationYear: 2009,
        numberOfVolumes: 28,
        isCompleted: false,
        externalRating: 4.3,
        userRating: 4.5,
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "Saitama", comment: "J’adore quand ça part en comédie absurde.", date: Date(timeIntervalSinceNow: -86400 * 7)),
            UserComment(id: UUID(), username: "Genos", comment: "Les dessins sont incroyables.", date: Date(timeIntervalSinceNow: -86400 * 50)),
            UserComment(id: UUID(), username: "CapedBaldy", comment: "Parfois ça devient répétitif.", date: Date(timeIntervalSinceNow: -86400 * 120))
        ],
        tags: [.action, .comedie, .aventure]
    ),


    // 24
    Manga(
        id: UUID(),
        coverImageName: "tokyoghoulcover",
        title: "Tokyo Ghoul:re",
        author: "Sui Ishida",
        genre: .seinen,
        shortSummary: "Le conflit entre humains et goules continue.",
        synopsis: "Après les événements de Tokyo Ghoul, Kaneki lutte pour trouver sa place, dans un monde où les goules et les humains sont en guerre, tout en découvrant de nouvelles factions et conflits intérieurs.",
        publicationYear: 2014,
        numberOfVolumes: 16,
        isCompleted: true,
        externalRating: 4.8,
        userRating: 4.0,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "AntiqueKing", comment: "Les anciennes tensions sont bien reprises.", date: Date(timeIntervalSinceNow: -86400 * 10)),
            UserComment(id: UUID(), username: "GrayGhoul", comment: "J’ai préféré Tokyo Ghoul original.", date: Date(timeIntervalSinceNow: -86400 * 40))
        ],
        tags: [.drame, .surnaturel, .fantasy]
    ),


    // 26
    

    // 27
    Manga(
        id: UUID(),
        coverImageName: "mobpsychocover",
        title: "Mob Psycho 100",
        author: "ONE",
        genre: .seinen,
        shortSummary: "Un psychique veut juste vivre normalement.",
        synopsis: "Mob, un garçon doté de pouvoirs psychiques énormes, cherche à mener une vie ordinaire malgré les demandes absurdes de ses proches, les dangers surnaturels, et les dilemmes moraux quant à l’usage de ses pouvoirs.",
        publicationYear: 2012,
        numberOfVolumes: 16,
        isCompleted: false,
        externalRating: 4.5,
        userRating: 4.9,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "100Percent", comment: "L’équilibre entre humour et émotion est parfait.", date: Date(timeIntervalSinceNow: -86400 * 20)),
            UserComment(id: UUID(), username: "Reigen", comment: "Les monstres sont bizarres mais fascinants.", date: Date(timeIntervalSinceNow: -86400 * 60)),
            UserComment(id: UUID(), username: "DimpleFan", comment: "J’aime la façon dont Mob évolue.", date: Date(timeIntervalSinceNow: -86400 * 80))
        ],
        tags: [.action, .fantasy, .drame, .comedie, .surnaturel]
    ),

    // 28
    Manga(
        id: UUID(),
        coverImageName: "vinlandsagacover",
        title: "Vinland Saga",
        author: "Makoto Yukimura",
        genre: .seinen,
        shortSummary: "Vikings, vengeance, terres sauvages et destin.",
        synopsis: "Thorfinn, fils d’un guerrier viking, cherche vengeance contre celui qui a tué son père. Son voyage le conduit à travers guerres, mer, trahisons, et questionnements sur le sens de la vie et la guerre.",
        publicationYear: 2005,
        numberOfVolumes: 27,
        isCompleted: false,
        externalRating: 4.0,
        userRating: 4.3,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "VikingHeart", comment: "Historique et brutal.", date: Date(timeIntervalSinceNow: -86400 * 40)),
            UserComment(id: UUID(), username: "Thors", comment: "Le développement des personnages est profond.", date: Date(timeIntervalSinceNow: -86400 * 80))
        ],
        tags: [.drame, .histoire, .aventure]
    ),

    // 29
    Manga(
        id: UUID(),
        coverImageName: "monstercover",
        title: "Monster",
        author: "Naoki Urasawa",
        genre: .seinen,
        shortSummary: "Un médecin traque un tueur psychopathe.",
        synopsis: "Le Dr Kenzo Tenma sauve un garçon au lieu du maire. Plus tard, ce garçon devenu un assassin meurt ou tue beaucoup, et Tenma se lance dans un voyage pour arrêter les horreurs qu’il a déclenché, tout en questionnant morale, culpabilité, identité.",
        publicationYear: 1994,
        numberOfVolumes: 18,
        isCompleted: true,
        externalRating: 4.3,
        userRating: 4.5,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "Tenma", comment: "Chaque tome change ma vision du bien/mal.", date: Date(timeIntervalSinceNow: -86400 * 60)),
            UserComment(id: UUID(), username: "AnnaLieben", comment: "Suspense insoutenable.", date: Date(timeIntervalSinceNow: -86400 * 120)),
            UserComment(id: UUID(), username: "Dieter", comment: "Le final est tellement… poignant.", date: Date(timeIntervalSinceNow: -86400 * 200))
        ],
        tags: [.thriller, .mystere, .drame]
    ),

    // 30
    Manga(
        id: UUID(),
        coverImageName: "theroseofversaillescover",
        title: "The Rose of Versailles",
        author: "Ikeda Riyoko",
        genre: .shojo,
        shortSummary: "Intrigues à la cour de Versailles avant la Révolution.",
        synopsis: "Oscar François de Jarjayes, élevée en tant qu’homme, sert comme commandant de la Garde Royale sous Louis XVI. Elle navigue entre politique, amour et devoir, dans une France en pleine mutation révolutionnaire.",
        publicationYear: 1972,
        numberOfVolumes: 10,
        isCompleted: true,
        externalRating: 4.7,
        userRating: 4.9,
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "MarieAntoinette", comment: "Le portrait de Versailles est sublime.", date: Date(timeIntervalSinceNow: -86400 * 50)),
            UserComment(id: UUID(), username: "OscarFan", comment: "Oscar est un personnage complexe.", date: Date(timeIntervalSinceNow: -86400 * 100))
        ],
        tags: [.romance, .drame, .histoire]
    ),

    // 31
    Manga(
        id: UUID(),
        coverImageName: "slamcover",
        title: "Slam Dunk",
        author: "Takehiko Inoue",
        genre: .shonen,
        shortSummary: "Basket-ball, compétition, rêve de lycée.",
        synopsis: "Hanamichi Sakuragi, un lycéen bagarreur, rejoint l’équipe de basket pour impressionner une fille, mais il découvre un amour profond pour le jeu, l’esprit d’équipe, et l’effort.",
        publicationYear: 1990,
        numberOfVolumes: 31,
        isCompleted: true,
        externalRating: 4.9,
        userRating: 4.0,
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "Rukawa", comment: "Le trait est très bon, les matches sont prenants.", date: Date(timeIntervalSinceNow: -86400 * 30)),
            UserComment(id: UUID(), username: "Sakuragi", comment: "S’auto-découvrir via le sport.", date: Date(timeIntervalSinceNow: -86400 * 100))
        ],
        tags: [.sport, .aventure, .drame]
    ),

    // 32
    Manga(
        id: UUID(),
        coverImageName: "kingdomcover",
        title: "Kingdom",
        author: "Yasuhisa Hara",
        genre: .seinen,
        shortSummary: "Guerres, stratégie, unification de la Chine ancienne.",
        synopsis: "Dans la période des Royaumes combattants en Chine, le jeune orphelin Xin rêve de devenir grand général. Entre batailles gigantesques, alliances, trahisons, et stratégie militaire, le destin d’un empire se joue.",
        publicationYear: 2006,
        numberOfVolumes: 69,
        isCompleted: false,
        externalRating: 4.5,
        userRating: 4.7,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "Xin", comment: "Stratégie militaire bien documentée.", date: Date(timeIntervalSinceNow: -86400 * 60)),
            UserComment(id: UUID(), username: "Kaine", comment: "Les batailles sont épiques.", date: Date(timeIntervalSinceNow: -86400 * 120)),
            UserComment(id: UUID(), username: "Queen", comment: "L’intrigue politique est subtile.", date: Date(timeIntervalSinceNow: -86400 * 200))
        ],
        tags: [.histoire, .action, .drame]
    ),

    // 34
    Manga(
        id: UUID(),
        coverImageName: "fistofthenorthstarcover",
        title: "Les couteaux de Ken",
        author: "Buronson & Tetsuo Hara",
        genre: .seinen,
        shortSummary: "Hokuto, art martial destructeur en monde post‑apocalyptique.",
        synopsis: "Après la destruction de la civilisation par un cataclysme nucléaire, Kenshiro, maître du Hokuto Shinken, parcourt les terres désolées pour protéger les innocents, venger ceux qu’il aime, et affronter les invasions d’opportunistes et de tyrans.",
        publicationYear: 1983,
        numberOfVolumes: 27,
        isCompleted: true,
        externalRating: 4.7,
        userRating: 4.0,
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "Ken", comment: "Combat brutal, ambiance dure.", date: Date(timeIntervalSinceNow: -86400 * 60)),
            UserComment(id: UUID(), username: "Yuria", comment: "Romance tragique mais poignante.", date: Date(timeIntervalSinceNow: -86400 * 200))
        ],
        tags: [.action, .aventure, .drame]
    ),

    // 35
    Manga(
        id: UUID(),
        coverImageName: "blackclovercover",
        title: "Black Clover",
        author: "Yuki Tabata",
        genre: .shonen,
        shortSummary: "Deux orphelins rêvent devenir roi mage.",
        synopsis: "Asta, né sans magie dans un monde où elle est universelle, et son ami Yuno, prodige, rivalisent pour réaliser leur rêve : devenir le Roi Mage, tout en combattant des néronœuds, sorciers maléfiques et défis impossibles.",
        publicationYear: 2015,
        numberOfVolumes: 34,
        isCompleted: false,
        externalRating: 4.9,
        userRating: 4.1,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "AstaFan", comment: "Déterminé jusqu’au bout.", date: Date(timeIntervalSinceNow: -86400 * 5)),
            UserComment(id: UUID(), username: "Yuno", comment: "Rivalité bien exploitée.", date: Date(timeIntervalSinceNow: -86400 * 30)),
            UserComment(id: UUID(), username: "MagicKing", comment: "Magie, humour, mais parfois cliché.", date: Date(timeIntervalSinceNow: -86400 * 100))
        ],
        tags: [.action, .fantasy, .aventure, .comedie]
    ),
    
    // 31 (Shojo)
    Manga(
        id: UUID(),
        coverImageName: "aoharuridecover",
        title: "Ao Haru Ride",
        author: "Io Sakisaka",
        genre: .shojo,
        shortSummary: "Rêve de lycée, amour d’enfance, deuxième chance romantique.",
        synopsis: "Futaba recrée une nouvelle image au lycée après ses expériences du collège. Quand son amour d’enfance revient, il a changé – et Fantaba doit décider si elle reste fidèle à qui elle est ou changer pour lui.",
        publicationYear: 2011,
        numberOfVolumes: 13,
        isCompleted: true,
        externalRating: 4.1,
        userRating: 4.4,
        isRead: false,
        isToRead: true,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "RomanceLover", comment: "Toujours de beaux dessins.", date: Date(timeIntervalSinceNow: -86400 * 40)),
            UserComment(id: UUID(), username: "FutabaFan", comment: "Le retour de Kou m’a ému.", date: Date(timeIntervalSinceNow: -86400 * 100)),
            UserComment(id: UUID(), username: "NouveauShojo", comment: "Parfois cliché, mais touchant.", date: Date(timeIntervalSinceNow: -86400 * 200))
        ],
        tags: [.romance, .drame, .trancheDeVie]
    ),

    // 32 (Shojo)
    Manga(
        id: UUID(),
        coverImageName: "sailormooncover",
        title: "Sailor Moon",
        author: "Naoko Takeuchi",
        genre: .shojo,
        shortSummary: "Collège, magie, guerrières protectrices de la Terre.",
        synopsis: "Usagi Tsukino découvre qu’elle est Sailor Moon, la guerrière de l’amour et de la justice. Avec les autres Sailor, elle combat les forces du mal tout en gérant sa vie de lycéenne pleine de maladresses et d’amitié.",
        publicationYear: 1991,
        numberOfVolumes: 52,
        isCompleted: true,
        externalRating: 4.5,
        userRating: 4.0,
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "MoonChild", comment: "Classique intemporel.", date: Date(timeIntervalSinceNow: -86400 * 150)),
            UserComment(id: UUID(), username: "UsagiFan", comment: "L’amitié est au cœur de tout.", date: Date(timeIntervalSinceNow: -86400 * 300)),
            UserComment(id: UUID(), username: "SilverCrystal", comment: "Magie + romance, mix parfait.", date: Date(timeIntervalSinceNow: -86400 * 90))
        ],
        tags: [.fantasy, .romance, .aventure]
    ),

    // 33 (Shojo)
    Manga(
        id: UUID(),
        coverImageName: "horiyamacover",
        title: "Horimiya",
        author: "HERO & Daisuke Hagiwara",
        genre: .shojo,
        shortSummary: "Deux lycéens opposés s’apprivoisent en secret.",
        synopsis: "Hori, populaire mais harcelée à la maison, et Miyamura, timide mais avec un style alternatif, découvrent leurs véritables personnalités en dehors du lycée. Leur amitié évolue, révélant des blessures, confidences, et romance douce.",
        publicationYear: 2011,
        numberOfVolumes: 16,
        isCompleted: true,
        externalRating: 4.3,
        userRating: 4.7,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "SliceLifeFan", comment: "Émotions réalistes, pas de fake.", date: Date(timeIntervalSinceNow: -86400 * 50)),
            UserComment(id: UUID(), username: "Kyouko", comment: "J’adore les personnages secondaires.", date: Date(timeIntervalSinceNow: -86400 * 200)),
            UserComment(id: UUID(), username: "Miyamura", comment: "Le contraste entre intérieur et extérieur est bien fait.", date: Date(timeIntervalSinceNow: -86400 * 80))
        ],
        tags: [.romance, .drame, .trancheDeVie]
    ),


    // 35 (Shojo)
    Manga(
        id: UUID(),
        coverImageName: "orangecover",
        title: "Orange",
        author: "Ichigo Takano",
        genre: .shojo,
        shortSummary: "Une lettre du futur pour changer le passé.",
        synopsis: "Naho reçoit une lettre d’elle-même dans le futur, demandant à elle-même de faire des choix pour empêcher le décès d’un ami. Elle navigue regrets, amitié, amour, et la peur du futur en tentant de réparer ses erreurs.",
        publicationYear: 2012,
        numberOfVolumes: 13,
        isCompleted: true,
        externalRating: 4.0,
        userRating: 4.3,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "TimeTraveler", comment: "Le concept est poignant.", date: Date(timeIntervalSinceNow: -86400 * 60)),
            UserComment(id: UUID(), username: "NahoFan", comment: "Je n’ai pas pu lâcher avant la fin.", date: Date(timeIntervalSinceNow: -86400 * 120)),
            UserComment(id: UUID(), username: "Suprise", comment: "Les pleurs étaient au rendez‑vous.", date: Date(timeIntervalSinceNow: -86400 * 30))
        ],
        tags: [.romance, .drame, .trancheDeVie]
    ),

    // 36 (Josei)
    Manga(
        id: UUID(),
        coverImageName: "paradisekisscover",
        title: "Paradise Kiss",
        author: "Ai Yazawa",
        genre: .josei,
        shortSummary: "Mode, amour complexe, choix de vie adulte.",
        synopsis: "Yukari Hayasaka abandonne ses études pour devenir mannequin après avoir été repérée par un groupe de designers. Elle découvre le monde de la mode, l’amour, et le prix des sacrifices personnels, tout en faisant face à ses doutes sur l’identité et la légitimité de ses rêves.",
        publicationYear: 1999,
        numberOfVolumes: 5,
        isCompleted: true,
        externalRating: 4.4,
        userRating: 4.7,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "Fashionista", comment: "Ambiance mode très stylée.", date: Date(timeIntervalSinceNow: -86400 * 200)),
            UserComment(id: UUID(), username: "Yukari", comment: "Le regard adulte sur les rêves, ça fait du bien.", date: Date(timeIntervalSinceNow: -86400 * 100)),
            UserComment(id: UUID(), username: "ZaZa", comment: "Pas juste romance, beaucoup de profondeur.", date: Date(timeIntervalSinceNow: -86400 * 150))
        ],
        tags: [.romance, .drame, .trancheDeVie]
    ),

    // 37 (Josei)
    Manga(
        id: UUID(),
        coverImageName: "nanacover",
        title: "Nana",
        author: "Ai Yazawa",
        genre: .josei,
        shortSummary: "Amitié, musique, amour tumultueux entre deux Nana.",
        synopsis: "Deux jeunes femmes nommées Nana se rencontrent à Tokyo : l’une chante dans un groupe punk, l’autre suit son petit ami en ville. Elles partagent la même passion, les mêmes peurs, les mêmes rêves, mais aussi des épreuves liées à l’amour, au succès, à l’amitié et aux choix difficiles adultes.",
        publicationYear: 2000,
        numberOfVolumes: 21,
        isCompleted: true,
        externalRating: 4.5,
        userRating: 4.8,
        isRead: true,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "TokyoRock", comment: "La bande son mentale est géniale.", date: Date(timeIntervalSinceNow: -86400 * 300)),
            UserComment(id: UUID(), username: "NanaLover", comment: "Le contraste de leurs vies respectives est poignant.", date: Date(timeIntervalSinceNow: -86400 * 180)),
            UserComment(id: UUID(), username: "JPopFan", comment: "Musique et émotion très bien équilibrés.", date: Date(timeIntervalSinceNow: -86400 * 90))
        ],
        tags: [.romance, .drame, .trancheDeVie]
    ),

    // 38 (Josei)
    Manga(
        id: UUID(),
        coverImageName: "wotakoicover",
        title: "Wotakoi: Love Is Hard for Otaku",
        author: "Fujita",
        genre: .josei,
        shortSummary: "Deux amis otaku deviennent amoureux adultes.",
        synopsis: "Narumi, otaku timide, et Hirotaka, collègue dans une boîte, essaient de jongler entre leurs passions geek, leur travail, leurs insécurités, et leur relation qui démarre tard. Beaucoup d’humour, réalisme, et douceur dans leur quotidien.",
        publicationYear: 2015,
        numberOfVolumes: 11,
        isCompleted: true,
        externalRating: 4.0,
        userRating: 4.2,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "GeekyRomance", comment: "Très réaliste, j’adore les références otaku.", date: Date(timeIntervalSinceNow: -86400 * 50)),
            UserComment(id: UUID(), username: "NarumiFan", comment: "L’harmonie entre travail, amis, vie perso est bien faite.", date: Date(timeIntervalSinceNow: -86400 * 100)),
            UserComment(id: UUID(), username: "Hirotaka", comment: "C’est doux, pas dramatique à outrance.", date: Date(timeIntervalSinceNow: -86400 * 120))
        ],
        tags: [.romance, .trancheDeVie, .drame, .comedie]
    ),


    // 40 (Josei)
    Manga(
        id: UUID(),
        coverImageName: "houseofthesuncover",
        title: "House of the Sun",
        author: "Taamo (Taamo / 樋口橘)​",
        genre: .josei,
        shortSummary: "Retrouver sa mère, reconstruire les liens familiaux adultes.",
        synopsis: "Mao Motomiya revient vivre chez son père après que sa mère l’a abandonnée. Elle se confronte au passé familial, aux non-dits, et à ses propres sentiments blessés, tout en essayant de construire une vie autonome et stable.",
        publicationYear: 2010,
        numberOfVolumes: 13,
        isCompleted: true,
        externalRating: 4.1,
        userRating: 4.3,
        isRead: false,
        isToRead: false,
        notToRead: false,
        userComments: [
            UserComment(id: UUID(), username: "TaamoFan", comment: "Beaucoup d’émotion & de profondeur.", date: Date(timeIntervalSinceNow: -86400 * 120)),
            UserComment(id: UUID(), username: "FamilyTies", comment: "Les liens abîmés et réparés expliqués avec tendresse.", date: Date(timeIntervalSinceNow: -86400 * 200)),
            UserComment(id: UUID(), username: "IndieReader", comment: "Pas de magie, juste la vie adulte, ça change.", date: Date(timeIntervalSinceNow: -86400 * 80))
        ],
        tags: [.drame, .trancheDeVie, .romance]
    ),

]
