//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Capitalization: Codable, Equatable {

    /** Name of the pet
 */
    public var attname: String?

    public var capitalCamel: String?

    public var capitalSnake: String?

    public var sCAETHFlowPoints: String?

    public var smallCamel: String?

    public var smallSnake: String?

    public init(attname: String? = nil, capitalCamel: String? = nil, capitalSnake: String? = nil, sCAETHFlowPoints: String? = nil, smallCamel: String? = nil, smallSnake: String? = nil) {
        self.attname = attname
        self.capitalCamel = capitalCamel
        self.capitalSnake = capitalSnake
        self.sCAETHFlowPoints = sCAETHFlowPoints
        self.smallCamel = smallCamel
        self.smallSnake = smallSnake
    }

    private enum CodingKeys: String, CodingKey {
        case attname = "ATT_NAME"
        case capitalCamel = "CapitalCamel"
        case capitalSnake = "Capital_Snake"
        case sCAETHFlowPoints = "SCA_ETH_Flow_Points"
        case smallCamel
        case smallSnake = "small_Snake"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        attname = try container.decodeIfPresent(.attname)
        capitalCamel = try container.decodeIfPresent(.capitalCamel)
        capitalSnake = try container.decodeIfPresent(.capitalSnake)
        sCAETHFlowPoints = try container.decodeIfPresent(.sCAETHFlowPoints)
        smallCamel = try container.decodeIfPresent(.smallCamel)
        smallSnake = try container.decodeIfPresent(.smallSnake)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(attname, forKey: .attname)
        try container.encode(capitalCamel, forKey: .capitalCamel)
        try container.encode(capitalSnake, forKey: .capitalSnake)
        try container.encode(sCAETHFlowPoints, forKey: .sCAETHFlowPoints)
        try container.encode(smallCamel, forKey: .smallCamel)
        try container.encode(smallSnake, forKey: .smallSnake)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Capitalization else { return false }
      guard self.attname == object.attname else { return false }
      guard self.capitalCamel == object.capitalCamel else { return false }
      guard self.capitalSnake == object.capitalSnake else { return false }
      guard self.sCAETHFlowPoints == object.sCAETHFlowPoints else { return false }
      guard self.smallCamel == object.smallCamel else { return false }
      guard self.smallSnake == object.smallSnake else { return false }
      return true
    }

    public static func == (lhs: Capitalization, rhs: Capitalization) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}