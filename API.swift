//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateSettingsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, userId: String, bio: String, incLocation: Bool, dateFmt: Int) {
    graphQLMap = ["id": id, "userId": userId, "bio": bio, "incLocation": incLocation, "dateFmt": dateFmt]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var bio: String {
    get {
      return graphQLMap["bio"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bio")
    }
  }

  public var incLocation: Bool {
    get {
      return graphQLMap["incLocation"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "incLocation")
    }
  }

  public var dateFmt: Int {
    get {
      return graphQLMap["dateFmt"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dateFmt")
    }
  }
}

public struct ModelSettingsConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(userId: ModelStringInput? = nil, bio: ModelStringInput? = nil, incLocation: ModelBooleanInput? = nil, dateFmt: ModelIntInput? = nil, and: [ModelSettingsConditionInput?]? = nil, or: [ModelSettingsConditionInput?]? = nil, not: ModelSettingsConditionInput? = nil) {
    graphQLMap = ["userId": userId, "bio": bio, "incLocation": incLocation, "dateFmt": dateFmt, "and": and, "or": or, "not": not]
  }

  public var userId: ModelStringInput? {
    get {
      return graphQLMap["userId"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var bio: ModelStringInput? {
    get {
      return graphQLMap["bio"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bio")
    }
  }

  public var incLocation: ModelBooleanInput? {
    get {
      return graphQLMap["incLocation"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "incLocation")
    }
  }

  public var dateFmt: ModelIntInput? {
    get {
      return graphQLMap["dateFmt"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dateFmt")
    }
  }

  public var and: [ModelSettingsConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSettingsConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSettingsConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSettingsConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelSettingsConditionInput? {
    get {
      return graphQLMap["not"] as! ModelSettingsConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct ModelBooleanInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Bool? = nil, eq: Bool? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Bool? {
    get {
      return graphQLMap["ne"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Bool? {
    get {
      return graphQLMap["eq"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct ModelIntInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct UpdateSettingsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, userId: String? = nil, bio: String? = nil, incLocation: Bool? = nil, dateFmt: Int? = nil) {
    graphQLMap = ["id": id, "userId": userId, "bio": bio, "incLocation": incLocation, "dateFmt": dateFmt]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String? {
    get {
      return graphQLMap["userId"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var bio: String? {
    get {
      return graphQLMap["bio"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bio")
    }
  }

  public var incLocation: Bool? {
    get {
      return graphQLMap["incLocation"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "incLocation")
    }
  }

  public var dateFmt: Int? {
    get {
      return graphQLMap["dateFmt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dateFmt")
    }
  }
}

public struct DeleteSettingsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreatePostInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, userId: String, userName: String, thought: String, lat: Double, lng: Double, createdAt: Double) {
    graphQLMap = ["id": id, "userId": userId, "userName": userName, "thought": thought, "lat": lat, "lng": lng, "createdAt": createdAt]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var userName: String {
    get {
      return graphQLMap["userName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userName")
    }
  }

  public var thought: String {
    get {
      return graphQLMap["thought"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "thought")
    }
  }

  public var lat: Double {
    get {
      return graphQLMap["lat"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lat")
    }
  }

  public var lng: Double {
    get {
      return graphQLMap["lng"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lng")
    }
  }

  public var createdAt: Double {
    get {
      return graphQLMap["createdAt"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }
}

public struct UpdatePostInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, userId: String, userName: String? = nil, thought: String? = nil, lat: Double? = nil, lng: Double? = nil, createdAt: Double? = nil) {
    graphQLMap = ["id": id, "userId": userId, "userName": userName, "thought": thought, "lat": lat, "lng": lng, "createdAt": createdAt]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var userName: String? {
    get {
      return graphQLMap["userName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userName")
    }
  }

  public var thought: String? {
    get {
      return graphQLMap["thought"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "thought")
    }
  }

  public var lat: Double? {
    get {
      return graphQLMap["lat"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lat")
    }
  }

  public var lng: Double? {
    get {
      return graphQLMap["lng"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lng")
    }
  }

  public var createdAt: Double? {
    get {
      return graphQLMap["createdAt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }
}

public struct DeletePostInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, userId: String) {
    graphQLMap = ["id": id, "userId": userId]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }
}

public struct ModelSettingsFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, userId: ModelStringInput? = nil, bio: ModelStringInput? = nil, incLocation: ModelBooleanInput? = nil, dateFmt: ModelIntInput? = nil, and: [ModelSettingsFilterInput?]? = nil, or: [ModelSettingsFilterInput?]? = nil, not: ModelSettingsFilterInput? = nil) {
    graphQLMap = ["id": id, "userId": userId, "bio": bio, "incLocation": incLocation, "dateFmt": dateFmt, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: ModelStringInput? {
    get {
      return graphQLMap["userId"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var bio: ModelStringInput? {
    get {
      return graphQLMap["bio"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bio")
    }
  }

  public var incLocation: ModelBooleanInput? {
    get {
      return graphQLMap["incLocation"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "incLocation")
    }
  }

  public var dateFmt: ModelIntInput? {
    get {
      return graphQLMap["dateFmt"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dateFmt")
    }
  }

  public var and: [ModelSettingsFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSettingsFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSettingsFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSettingsFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelSettingsFilterInput? {
    get {
      return graphQLMap["not"] as! ModelSettingsFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct TablePostFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: TableIDFilterInput? = nil, userId: TableStringFilterInput? = nil, userName: TableStringFilterInput? = nil, thought: TableStringFilterInput? = nil, lat: TableFloatFilterInput? = nil, lng: TableFloatFilterInput? = nil, createdAt: TableFloatFilterInput? = nil) {
    graphQLMap = ["id": id, "userId": userId, "userName": userName, "thought": thought, "lat": lat, "lng": lng, "createdAt": createdAt]
  }

  public var id: TableIDFilterInput? {
    get {
      return graphQLMap["id"] as! TableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: TableStringFilterInput? {
    get {
      return graphQLMap["userId"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var userName: TableStringFilterInput? {
    get {
      return graphQLMap["userName"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userName")
    }
  }

  public var thought: TableStringFilterInput? {
    get {
      return graphQLMap["thought"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "thought")
    }
  }

  public var lat: TableFloatFilterInput? {
    get {
      return graphQLMap["lat"] as! TableFloatFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lat")
    }
  }

  public var lng: TableFloatFilterInput? {
    get {
      return graphQLMap["lng"] as! TableFloatFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lng")
    }
  }

  public var createdAt: TableFloatFilterInput? {
    get {
      return graphQLMap["createdAt"] as! TableFloatFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }
}

public struct TableIDFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct TableStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct TableFloatFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Double? = nil, eq: Double? = nil, le: Double? = nil, lt: Double? = nil, ge: Double? = nil, gt: Double? = nil, contains: Double? = nil, notContains: Double? = nil, between: [Double?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between]
  }

  public var ne: Double? {
    get {
      return graphQLMap["ne"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Double? {
    get {
      return graphQLMap["eq"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Double? {
    get {
      return graphQLMap["le"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Double? {
    get {
      return graphQLMap["lt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Double? {
    get {
      return graphQLMap["ge"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Double? {
    get {
      return graphQLMap["gt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: Double? {
    get {
      return graphQLMap["contains"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: Double? {
    get {
      return graphQLMap["notContains"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [Double?]? {
    get {
      return graphQLMap["between"] as! [Double?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public final class CreateSettingsMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateSettings($input: CreateSettingsInput!, $condition: ModelSettingsConditionInput) {\n  createSettings(input: $input, condition: $condition) {\n    __typename\n    id\n    userId\n    bio\n    incLocation\n    dateFmt\n  }\n}"

  public var input: CreateSettingsInput
  public var condition: ModelSettingsConditionInput?

  public init(input: CreateSettingsInput, condition: ModelSettingsConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createSettings", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateSetting.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createSettings: CreateSetting? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createSettings": createSettings.flatMap { $0.snapshot }])
    }

    public var createSettings: CreateSetting? {
      get {
        return (snapshot["createSettings"] as? Snapshot).flatMap { CreateSetting(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createSettings")
      }
    }

    public struct CreateSetting: GraphQLSelectionSet {
      public static let possibleTypes = ["Settings"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("bio", type: .nonNull(.scalar(String.self))),
        GraphQLField("incLocation", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("dateFmt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, bio: String, incLocation: Bool, dateFmt: Int) {
        self.init(snapshot: ["__typename": "Settings", "id": id, "userId": userId, "bio": bio, "incLocation": incLocation, "dateFmt": dateFmt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var bio: String {
        get {
          return snapshot["bio"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "bio")
        }
      }

      public var incLocation: Bool {
        get {
          return snapshot["incLocation"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "incLocation")
        }
      }

      public var dateFmt: Int {
        get {
          return snapshot["dateFmt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "dateFmt")
        }
      }
    }
  }
}

public final class UpdateSettingsMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateSettings($input: UpdateSettingsInput!, $condition: ModelSettingsConditionInput) {\n  updateSettings(input: $input, condition: $condition) {\n    __typename\n    id\n    userId\n    bio\n    incLocation\n    dateFmt\n  }\n}"

  public var input: UpdateSettingsInput
  public var condition: ModelSettingsConditionInput?

  public init(input: UpdateSettingsInput, condition: ModelSettingsConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateSettings", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateSetting.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateSettings: UpdateSetting? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateSettings": updateSettings.flatMap { $0.snapshot }])
    }

    public var updateSettings: UpdateSetting? {
      get {
        return (snapshot["updateSettings"] as? Snapshot).flatMap { UpdateSetting(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateSettings")
      }
    }

    public struct UpdateSetting: GraphQLSelectionSet {
      public static let possibleTypes = ["Settings"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("bio", type: .nonNull(.scalar(String.self))),
        GraphQLField("incLocation", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("dateFmt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, bio: String, incLocation: Bool, dateFmt: Int) {
        self.init(snapshot: ["__typename": "Settings", "id": id, "userId": userId, "bio": bio, "incLocation": incLocation, "dateFmt": dateFmt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var bio: String {
        get {
          return snapshot["bio"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "bio")
        }
      }

      public var incLocation: Bool {
        get {
          return snapshot["incLocation"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "incLocation")
        }
      }

      public var dateFmt: Int {
        get {
          return snapshot["dateFmt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "dateFmt")
        }
      }
    }
  }
}

public final class DeleteSettingsMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteSettings($input: DeleteSettingsInput!, $condition: ModelSettingsConditionInput) {\n  deleteSettings(input: $input, condition: $condition) {\n    __typename\n    id\n    userId\n    bio\n    incLocation\n    dateFmt\n  }\n}"

  public var input: DeleteSettingsInput
  public var condition: ModelSettingsConditionInput?

  public init(input: DeleteSettingsInput, condition: ModelSettingsConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteSettings", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteSetting.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteSettings: DeleteSetting? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteSettings": deleteSettings.flatMap { $0.snapshot }])
    }

    public var deleteSettings: DeleteSetting? {
      get {
        return (snapshot["deleteSettings"] as? Snapshot).flatMap { DeleteSetting(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteSettings")
      }
    }

    public struct DeleteSetting: GraphQLSelectionSet {
      public static let possibleTypes = ["Settings"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("bio", type: .nonNull(.scalar(String.self))),
        GraphQLField("incLocation", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("dateFmt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, bio: String, incLocation: Bool, dateFmt: Int) {
        self.init(snapshot: ["__typename": "Settings", "id": id, "userId": userId, "bio": bio, "incLocation": incLocation, "dateFmt": dateFmt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var bio: String {
        get {
          return snapshot["bio"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "bio")
        }
      }

      public var incLocation: Bool {
        get {
          return snapshot["incLocation"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "incLocation")
        }
      }

      public var dateFmt: Int {
        get {
          return snapshot["dateFmt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "dateFmt")
        }
      }
    }
  }
}

public final class CreatePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreatePost($input: CreatePostInput!) {\n  createPost(input: $input) {\n    __typename\n    id\n    userId\n    userName\n    thought\n    lat\n    lng\n    createdAt\n  }\n}"

  public var input: CreatePostInput

  public init(input: CreatePostInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createPost", arguments: ["input": GraphQLVariable("input")], type: .object(CreatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createPost: CreatePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createPost": createPost.flatMap { $0.snapshot }])
    }

    public var createPost: CreatePost? {
      get {
        return (snapshot["createPost"] as? Snapshot).flatMap { CreatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createPost")
      }
    }

    public struct CreatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userName", type: .nonNull(.scalar(String.self))),
        GraphQLField("thought", type: .nonNull(.scalar(String.self))),
        GraphQLField("lat", type: .nonNull(.scalar(Double.self))),
        GraphQLField("lng", type: .nonNull(.scalar(Double.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, userName: String, thought: String, lat: Double, lng: Double, createdAt: Double) {
        self.init(snapshot: ["__typename": "Post", "id": id, "userId": userId, "userName": userName, "thought": thought, "lat": lat, "lng": lng, "createdAt": createdAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var userName: String {
        get {
          return snapshot["userName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userName")
        }
      }

      public var thought: String {
        get {
          return snapshot["thought"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "thought")
        }
      }

      public var lat: Double {
        get {
          return snapshot["lat"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lat")
        }
      }

      public var lng: Double {
        get {
          return snapshot["lng"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lng")
        }
      }

      public var createdAt: Double {
        get {
          return snapshot["createdAt"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }
    }
  }
}

public final class UpdatePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdatePost($input: UpdatePostInput!) {\n  updatePost(input: $input) {\n    __typename\n    id\n    userId\n    userName\n    thought\n    lat\n    lng\n    createdAt\n  }\n}"

  public var input: UpdatePostInput

  public init(input: UpdatePostInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updatePost", arguments: ["input": GraphQLVariable("input")], type: .object(UpdatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updatePost: UpdatePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updatePost": updatePost.flatMap { $0.snapshot }])
    }

    public var updatePost: UpdatePost? {
      get {
        return (snapshot["updatePost"] as? Snapshot).flatMap { UpdatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updatePost")
      }
    }

    public struct UpdatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userName", type: .nonNull(.scalar(String.self))),
        GraphQLField("thought", type: .nonNull(.scalar(String.self))),
        GraphQLField("lat", type: .nonNull(.scalar(Double.self))),
        GraphQLField("lng", type: .nonNull(.scalar(Double.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, userName: String, thought: String, lat: Double, lng: Double, createdAt: Double) {
        self.init(snapshot: ["__typename": "Post", "id": id, "userId": userId, "userName": userName, "thought": thought, "lat": lat, "lng": lng, "createdAt": createdAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var userName: String {
        get {
          return snapshot["userName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userName")
        }
      }

      public var thought: String {
        get {
          return snapshot["thought"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "thought")
        }
      }

      public var lat: Double {
        get {
          return snapshot["lat"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lat")
        }
      }

      public var lng: Double {
        get {
          return snapshot["lng"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lng")
        }
      }

      public var createdAt: Double {
        get {
          return snapshot["createdAt"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }
    }
  }
}

public final class DeletePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeletePost($input: DeletePostInput!) {\n  deletePost(input: $input) {\n    __typename\n    id\n    userId\n    userName\n    thought\n    lat\n    lng\n    createdAt\n  }\n}"

  public var input: DeletePostInput

  public init(input: DeletePostInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deletePost", arguments: ["input": GraphQLVariable("input")], type: .object(DeletePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deletePost: DeletePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deletePost": deletePost.flatMap { $0.snapshot }])
    }

    public var deletePost: DeletePost? {
      get {
        return (snapshot["deletePost"] as? Snapshot).flatMap { DeletePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deletePost")
      }
    }

    public struct DeletePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userName", type: .nonNull(.scalar(String.self))),
        GraphQLField("thought", type: .nonNull(.scalar(String.self))),
        GraphQLField("lat", type: .nonNull(.scalar(Double.self))),
        GraphQLField("lng", type: .nonNull(.scalar(Double.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, userName: String, thought: String, lat: Double, lng: Double, createdAt: Double) {
        self.init(snapshot: ["__typename": "Post", "id": id, "userId": userId, "userName": userName, "thought": thought, "lat": lat, "lng": lng, "createdAt": createdAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var userName: String {
        get {
          return snapshot["userName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userName")
        }
      }

      public var thought: String {
        get {
          return snapshot["thought"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "thought")
        }
      }

      public var lat: Double {
        get {
          return snapshot["lat"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lat")
        }
      }

      public var lng: Double {
        get {
          return snapshot["lng"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lng")
        }
      }

      public var createdAt: Double {
        get {
          return snapshot["createdAt"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }
    }
  }
}

public final class GetSettingsQuery: GraphQLQuery {
  public static let operationString =
    "query GetSettings($id: ID!) {\n  getSettings(id: $id) {\n    __typename\n    id\n    userId\n    bio\n    incLocation\n    dateFmt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getSettings", arguments: ["id": GraphQLVariable("id")], type: .object(GetSetting.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getSettings: GetSetting? = nil) {
      self.init(snapshot: ["__typename": "Query", "getSettings": getSettings.flatMap { $0.snapshot }])
    }

    public var getSettings: GetSetting? {
      get {
        return (snapshot["getSettings"] as? Snapshot).flatMap { GetSetting(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getSettings")
      }
    }

    public struct GetSetting: GraphQLSelectionSet {
      public static let possibleTypes = ["Settings"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("bio", type: .nonNull(.scalar(String.self))),
        GraphQLField("incLocation", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("dateFmt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, bio: String, incLocation: Bool, dateFmt: Int) {
        self.init(snapshot: ["__typename": "Settings", "id": id, "userId": userId, "bio": bio, "incLocation": incLocation, "dateFmt": dateFmt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var bio: String {
        get {
          return snapshot["bio"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "bio")
        }
      }

      public var incLocation: Bool {
        get {
          return snapshot["incLocation"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "incLocation")
        }
      }

      public var dateFmt: Int {
        get {
          return snapshot["dateFmt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "dateFmt")
        }
      }
    }
  }
}

public final class ListSettingssQuery: GraphQLQuery {
  public static let operationString =
    "query ListSettingss($filter: ModelSettingsFilterInput, $limit: Int, $nextToken: String) {\n  listSettingss(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      userId\n      bio\n      incLocation\n      dateFmt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelSettingsFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelSettingsFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listSettingss", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListSettingss.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listSettingss: ListSettingss? = nil) {
      self.init(snapshot: ["__typename": "Query", "listSettingss": listSettingss.flatMap { $0.snapshot }])
    }

    public var listSettingss: ListSettingss? {
      get {
        return (snapshot["listSettingss"] as? Snapshot).flatMap { ListSettingss(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listSettingss")
      }
    }

    public struct ListSettingss: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelSettingsConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelSettingsConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Settings"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userId", type: .nonNull(.scalar(String.self))),
          GraphQLField("bio", type: .nonNull(.scalar(String.self))),
          GraphQLField("incLocation", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("dateFmt", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: String, bio: String, incLocation: Bool, dateFmt: Int) {
          self.init(snapshot: ["__typename": "Settings", "id": id, "userId": userId, "bio": bio, "incLocation": incLocation, "dateFmt": dateFmt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: String {
          get {
            return snapshot["userId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var bio: String {
          get {
            return snapshot["bio"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "bio")
          }
        }

        public var incLocation: Bool {
          get {
            return snapshot["incLocation"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "incLocation")
          }
        }

        public var dateFmt: Int {
          get {
            return snapshot["dateFmt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "dateFmt")
          }
        }
      }
    }
  }
}

public final class GetPostQuery: GraphQLQuery {
  public static let operationString =
    "query GetPost($id: ID!, $userId: String!) {\n  getPost(id: $id, userId: $userId) {\n    __typename\n    id\n    userId\n    userName\n    thought\n    lat\n    lng\n    createdAt\n  }\n}"

  public var id: GraphQLID
  public var userId: String

  public init(id: GraphQLID, userId: String) {
    self.id = id
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getPost", arguments: ["id": GraphQLVariable("id"), "userId": GraphQLVariable("userId")], type: .object(GetPost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getPost: GetPost? = nil) {
      self.init(snapshot: ["__typename": "Query", "getPost": getPost.flatMap { $0.snapshot }])
    }

    public var getPost: GetPost? {
      get {
        return (snapshot["getPost"] as? Snapshot).flatMap { GetPost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getPost")
      }
    }

    public struct GetPost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userName", type: .nonNull(.scalar(String.self))),
        GraphQLField("thought", type: .nonNull(.scalar(String.self))),
        GraphQLField("lat", type: .nonNull(.scalar(Double.self))),
        GraphQLField("lng", type: .nonNull(.scalar(Double.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, userName: String, thought: String, lat: Double, lng: Double, createdAt: Double) {
        self.init(snapshot: ["__typename": "Post", "id": id, "userId": userId, "userName": userName, "thought": thought, "lat": lat, "lng": lng, "createdAt": createdAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var userName: String {
        get {
          return snapshot["userName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userName")
        }
      }

      public var thought: String {
        get {
          return snapshot["thought"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "thought")
        }
      }

      public var lat: Double {
        get {
          return snapshot["lat"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lat")
        }
      }

      public var lng: Double {
        get {
          return snapshot["lng"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lng")
        }
      }

      public var createdAt: Double {
        get {
          return snapshot["createdAt"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }
    }
  }
}

public final class ListPostsQuery: GraphQLQuery {
  public static let operationString =
    "query ListPosts($filter: TablePostFilterInput, $limit: Int, $nextToken: String) {\n  listPosts(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      userId\n      userName\n      thought\n      lat\n      lng\n      createdAt\n    }\n    nextToken\n  }\n}"

  public var filter: TablePostFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TablePostFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listPosts", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListPost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listPosts: ListPost? = nil) {
      self.init(snapshot: ["__typename": "Query", "listPosts": listPosts.flatMap { $0.snapshot }])
    }

    public var listPosts: ListPost? {
      get {
        return (snapshot["listPosts"] as? Snapshot).flatMap { ListPost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listPosts")
      }
    }

    public struct ListPost: GraphQLSelectionSet {
      public static let possibleTypes = ["PostConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "PostConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userId", type: .nonNull(.scalar(String.self))),
          GraphQLField("userName", type: .nonNull(.scalar(String.self))),
          GraphQLField("thought", type: .nonNull(.scalar(String.self))),
          GraphQLField("lat", type: .nonNull(.scalar(Double.self))),
          GraphQLField("lng", type: .nonNull(.scalar(Double.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(Double.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: String, userName: String, thought: String, lat: Double, lng: Double, createdAt: Double) {
          self.init(snapshot: ["__typename": "Post", "id": id, "userId": userId, "userName": userName, "thought": thought, "lat": lat, "lng": lng, "createdAt": createdAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: String {
          get {
            return snapshot["userId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var userName: String {
          get {
            return snapshot["userName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userName")
          }
        }

        public var thought: String {
          get {
            return snapshot["thought"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "thought")
          }
        }

        public var lat: Double {
          get {
            return snapshot["lat"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "lat")
          }
        }

        public var lng: Double {
          get {
            return snapshot["lng"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "lng")
          }
        }

        public var createdAt: Double {
          get {
            return snapshot["createdAt"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }
      }
    }
  }
}

public final class OnCreateSettingsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateSettings {\n  onCreateSettings {\n    __typename\n    id\n    userId\n    bio\n    incLocation\n    dateFmt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateSettings", type: .object(OnCreateSetting.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateSettings: OnCreateSetting? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateSettings": onCreateSettings.flatMap { $0.snapshot }])
    }

    public var onCreateSettings: OnCreateSetting? {
      get {
        return (snapshot["onCreateSettings"] as? Snapshot).flatMap { OnCreateSetting(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateSettings")
      }
    }

    public struct OnCreateSetting: GraphQLSelectionSet {
      public static let possibleTypes = ["Settings"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("bio", type: .nonNull(.scalar(String.self))),
        GraphQLField("incLocation", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("dateFmt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, bio: String, incLocation: Bool, dateFmt: Int) {
        self.init(snapshot: ["__typename": "Settings", "id": id, "userId": userId, "bio": bio, "incLocation": incLocation, "dateFmt": dateFmt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var bio: String {
        get {
          return snapshot["bio"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "bio")
        }
      }

      public var incLocation: Bool {
        get {
          return snapshot["incLocation"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "incLocation")
        }
      }

      public var dateFmt: Int {
        get {
          return snapshot["dateFmt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "dateFmt")
        }
      }
    }
  }
}

public final class OnUpdateSettingsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateSettings {\n  onUpdateSettings {\n    __typename\n    id\n    userId\n    bio\n    incLocation\n    dateFmt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateSettings", type: .object(OnUpdateSetting.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateSettings: OnUpdateSetting? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateSettings": onUpdateSettings.flatMap { $0.snapshot }])
    }

    public var onUpdateSettings: OnUpdateSetting? {
      get {
        return (snapshot["onUpdateSettings"] as? Snapshot).flatMap { OnUpdateSetting(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateSettings")
      }
    }

    public struct OnUpdateSetting: GraphQLSelectionSet {
      public static let possibleTypes = ["Settings"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("bio", type: .nonNull(.scalar(String.self))),
        GraphQLField("incLocation", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("dateFmt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, bio: String, incLocation: Bool, dateFmt: Int) {
        self.init(snapshot: ["__typename": "Settings", "id": id, "userId": userId, "bio": bio, "incLocation": incLocation, "dateFmt": dateFmt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var bio: String {
        get {
          return snapshot["bio"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "bio")
        }
      }

      public var incLocation: Bool {
        get {
          return snapshot["incLocation"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "incLocation")
        }
      }

      public var dateFmt: Int {
        get {
          return snapshot["dateFmt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "dateFmt")
        }
      }
    }
  }
}

public final class OnDeleteSettingsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteSettings {\n  onDeleteSettings {\n    __typename\n    id\n    userId\n    bio\n    incLocation\n    dateFmt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteSettings", type: .object(OnDeleteSetting.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteSettings: OnDeleteSetting? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteSettings": onDeleteSettings.flatMap { $0.snapshot }])
    }

    public var onDeleteSettings: OnDeleteSetting? {
      get {
        return (snapshot["onDeleteSettings"] as? Snapshot).flatMap { OnDeleteSetting(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteSettings")
      }
    }

    public struct OnDeleteSetting: GraphQLSelectionSet {
      public static let possibleTypes = ["Settings"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("bio", type: .nonNull(.scalar(String.self))),
        GraphQLField("incLocation", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("dateFmt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, bio: String, incLocation: Bool, dateFmt: Int) {
        self.init(snapshot: ["__typename": "Settings", "id": id, "userId": userId, "bio": bio, "incLocation": incLocation, "dateFmt": dateFmt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var bio: String {
        get {
          return snapshot["bio"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "bio")
        }
      }

      public var incLocation: Bool {
        get {
          return snapshot["incLocation"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "incLocation")
        }
      }

      public var dateFmt: Int {
        get {
          return snapshot["dateFmt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "dateFmt")
        }
      }
    }
  }
}

public final class OnCreatePostSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreatePost($id: ID, $userId: String, $userName: String, $thought: String, $lat: Float) {\n  onCreatePost(id: $id, userId: $userId, userName: $userName, thought: $thought, lat: $lat) {\n    __typename\n    id\n    userId\n    userName\n    thought\n    lat\n    lng\n    createdAt\n  }\n}"

  public var id: GraphQLID?
  public var userId: String?
  public var userName: String?
  public var thought: String?
  public var lat: Double?

  public init(id: GraphQLID? = nil, userId: String? = nil, userName: String? = nil, thought: String? = nil, lat: Double? = nil) {
    self.id = id
    self.userId = userId
    self.userName = userName
    self.thought = thought
    self.lat = lat
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userId": userId, "userName": userName, "thought": thought, "lat": lat]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreatePost", arguments: ["id": GraphQLVariable("id"), "userId": GraphQLVariable("userId"), "userName": GraphQLVariable("userName"), "thought": GraphQLVariable("thought"), "lat": GraphQLVariable("lat")], type: .object(OnCreatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreatePost: OnCreatePost? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreatePost": onCreatePost.flatMap { $0.snapshot }])
    }

    public var onCreatePost: OnCreatePost? {
      get {
        return (snapshot["onCreatePost"] as? Snapshot).flatMap { OnCreatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreatePost")
      }
    }

    public struct OnCreatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userName", type: .nonNull(.scalar(String.self))),
        GraphQLField("thought", type: .nonNull(.scalar(String.self))),
        GraphQLField("lat", type: .nonNull(.scalar(Double.self))),
        GraphQLField("lng", type: .nonNull(.scalar(Double.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, userName: String, thought: String, lat: Double, lng: Double, createdAt: Double) {
        self.init(snapshot: ["__typename": "Post", "id": id, "userId": userId, "userName": userName, "thought": thought, "lat": lat, "lng": lng, "createdAt": createdAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var userName: String {
        get {
          return snapshot["userName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userName")
        }
      }

      public var thought: String {
        get {
          return snapshot["thought"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "thought")
        }
      }

      public var lat: Double {
        get {
          return snapshot["lat"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lat")
        }
      }

      public var lng: Double {
        get {
          return snapshot["lng"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lng")
        }
      }

      public var createdAt: Double {
        get {
          return snapshot["createdAt"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }
    }
  }
}

public final class OnUpdatePostSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdatePost($id: ID, $userId: String, $userName: String, $thought: String, $lat: Float) {\n  onUpdatePost(id: $id, userId: $userId, userName: $userName, thought: $thought, lat: $lat) {\n    __typename\n    id\n    userId\n    userName\n    thought\n    lat\n    lng\n    createdAt\n  }\n}"

  public var id: GraphQLID?
  public var userId: String?
  public var userName: String?
  public var thought: String?
  public var lat: Double?

  public init(id: GraphQLID? = nil, userId: String? = nil, userName: String? = nil, thought: String? = nil, lat: Double? = nil) {
    self.id = id
    self.userId = userId
    self.userName = userName
    self.thought = thought
    self.lat = lat
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userId": userId, "userName": userName, "thought": thought, "lat": lat]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdatePost", arguments: ["id": GraphQLVariable("id"), "userId": GraphQLVariable("userId"), "userName": GraphQLVariable("userName"), "thought": GraphQLVariable("thought"), "lat": GraphQLVariable("lat")], type: .object(OnUpdatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdatePost: OnUpdatePost? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdatePost": onUpdatePost.flatMap { $0.snapshot }])
    }

    public var onUpdatePost: OnUpdatePost? {
      get {
        return (snapshot["onUpdatePost"] as? Snapshot).flatMap { OnUpdatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdatePost")
      }
    }

    public struct OnUpdatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userName", type: .nonNull(.scalar(String.self))),
        GraphQLField("thought", type: .nonNull(.scalar(String.self))),
        GraphQLField("lat", type: .nonNull(.scalar(Double.self))),
        GraphQLField("lng", type: .nonNull(.scalar(Double.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, userName: String, thought: String, lat: Double, lng: Double, createdAt: Double) {
        self.init(snapshot: ["__typename": "Post", "id": id, "userId": userId, "userName": userName, "thought": thought, "lat": lat, "lng": lng, "createdAt": createdAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var userName: String {
        get {
          return snapshot["userName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userName")
        }
      }

      public var thought: String {
        get {
          return snapshot["thought"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "thought")
        }
      }

      public var lat: Double {
        get {
          return snapshot["lat"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lat")
        }
      }

      public var lng: Double {
        get {
          return snapshot["lng"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lng")
        }
      }

      public var createdAt: Double {
        get {
          return snapshot["createdAt"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }
    }
  }
}

public final class OnDeletePostSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeletePost($id: ID, $userId: String, $userName: String, $thought: String, $lat: Float) {\n  onDeletePost(id: $id, userId: $userId, userName: $userName, thought: $thought, lat: $lat) {\n    __typename\n    id\n    userId\n    userName\n    thought\n    lat\n    lng\n    createdAt\n  }\n}"

  public var id: GraphQLID?
  public var userId: String?
  public var userName: String?
  public var thought: String?
  public var lat: Double?

  public init(id: GraphQLID? = nil, userId: String? = nil, userName: String? = nil, thought: String? = nil, lat: Double? = nil) {
    self.id = id
    self.userId = userId
    self.userName = userName
    self.thought = thought
    self.lat = lat
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userId": userId, "userName": userName, "thought": thought, "lat": lat]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeletePost", arguments: ["id": GraphQLVariable("id"), "userId": GraphQLVariable("userId"), "userName": GraphQLVariable("userName"), "thought": GraphQLVariable("thought"), "lat": GraphQLVariable("lat")], type: .object(OnDeletePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeletePost: OnDeletePost? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeletePost": onDeletePost.flatMap { $0.snapshot }])
    }

    public var onDeletePost: OnDeletePost? {
      get {
        return (snapshot["onDeletePost"] as? Snapshot).flatMap { OnDeletePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeletePost")
      }
    }

    public struct OnDeletePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userName", type: .nonNull(.scalar(String.self))),
        GraphQLField("thought", type: .nonNull(.scalar(String.self))),
        GraphQLField("lat", type: .nonNull(.scalar(Double.self))),
        GraphQLField("lng", type: .nonNull(.scalar(Double.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, userName: String, thought: String, lat: Double, lng: Double, createdAt: Double) {
        self.init(snapshot: ["__typename": "Post", "id": id, "userId": userId, "userName": userName, "thought": thought, "lat": lat, "lng": lng, "createdAt": createdAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var userName: String {
        get {
          return snapshot["userName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userName")
        }
      }

      public var thought: String {
        get {
          return snapshot["thought"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "thought")
        }
      }

      public var lat: Double {
        get {
          return snapshot["lat"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lat")
        }
      }

      public var lng: Double {
        get {
          return snapshot["lng"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lng")
        }
      }

      public var createdAt: Double {
        get {
          return snapshot["createdAt"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }
    }
  }
}