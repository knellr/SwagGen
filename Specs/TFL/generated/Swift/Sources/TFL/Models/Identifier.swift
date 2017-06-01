//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class Identifier: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var crowding: Crowding?

    public var fullName: String?

    public var id: String?

    public var name: String?

    public var type: String?

    public var uri: String?

    public init(crowding: Crowding? = nil, fullName: String? = nil, id: String? = nil, name: String? = nil, type: String? = nil, uri: String? = nil) {
        self.crowding = crowding
        self.fullName = fullName
        self.id = id
        self.name = name
        self.type = type
        self.uri = uri
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        crowding = jsonDictionary.json(atKeyPath: "crowding")
        fullName = jsonDictionary.json(atKeyPath: "fullName")
        id = jsonDictionary.json(atKeyPath: "id")
        name = jsonDictionary.json(atKeyPath: "name")
        type = jsonDictionary.json(atKeyPath: "type")
        uri = jsonDictionary.json(atKeyPath: "uri")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let crowding = crowding?.encode() {
            dictionary["crowding"] = crowding
        }
        if let fullName = fullName {
            dictionary["fullName"] = fullName
        }
        if let id = id {
            dictionary["id"] = id
        }
        if let name = name {
            dictionary["name"] = name
        }
        if let type = type {
            dictionary["type"] = type
        }
        if let uri = uri {
            dictionary["uri"] = uri
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}