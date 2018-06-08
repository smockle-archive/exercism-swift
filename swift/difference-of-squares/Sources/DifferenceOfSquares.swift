//Solution goes in Sources
import Foundation
class Squares {
    //MARK: Stored Properties
    var maxValue: Int
    
    //MARK: Computed Properties
    var squareOfSums: Decimal {
        return Squares.squareOfSums(self.maxValue)
    }
    var sumOfSquares: Decimal {
        return Squares.sumOfSquares(self.maxValue)
    }
    var differenceOfSquares: Decimal {
        return Squares.differenceOfSquares(self.maxValue)
    }
    
    //MARK: Constructor
    init(_ maxValue: Int) {
        self.maxValue = maxValue
    }

    //MARK: Static Functions
    static func squareOfSums(_ maxValue: Int) -> Decimal {
        return pow(Decimal((0..<(maxValue + 1)).reduce(0, { result, value in result + value })), 2)
    }
    static func sumOfSquares(_ maxValue: Int) -> Decimal {
        return (0..<(maxValue + 1)).reduce(0, { result, value in result + pow(Decimal(value), 2) })
    }
    static func differenceOfSquares(_ maxValue: Int) -> Decimal {
        return Squares.squareOfSums(maxValue) - Squares.sumOfSquares(maxValue)
    }
}
