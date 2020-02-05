struct References: Codable {
    let revision: String
    let tid: String
    let referenceLists: [ReferenceList]
    let referencesByID: [String: Reference]
    enum CodingKeys: String, CodingKey {
        case revision
        case tid
        case referenceLists = "reference_lists"
        case referencesByID = "references_by_id"
    }
}

struct Reference: Codable {
    struct BackLink: Codable {
        let href: String
        let text: String
    }
    struct Content: Codable {
        let html: String
        let type: String?
    }
    let backLinks: [BackLink]
    let content: Content
    enum CodingKeys: String, CodingKey {
        case backLinks = "back_links"
        case content
    }
}

struct ReferenceList: Codable {
    struct Heading: Codable {
        let id: String
        let html: String
    }
    let id: String
    let heading: Heading
    let order: [String]
    enum CodingKeys: String, CodingKey {
        case id
        case order
        case heading = "section_heading"
    }
}
