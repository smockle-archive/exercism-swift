//Solution goes in Sources
import Foundation

class Grains {
    //MARK: Errors
    enum GrainsError: Error {
        case inputTooHigh(message: String)
        case inputTooLow(message: String)
    }

    //MARK: Static Computed Properties
    static var total: Decimal {
        let total = try? Grains.square(64)
        return total!
    }
    
    //MARK: Static Functions
    static func square(_ position: Int) throws -> Decimal {
        guard position > 0 else {
            throw GrainsError.inputTooLow(message: "Input[\(position)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        guard position < 65 else {
            throw GrainsError.inputTooHigh(message: "Input[\(position)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        return pow(2, position - 1)
    }
}
