//Solution goes in Sources
import Foundation

enum Responses: String {
    case silence = "Fine. Be that way!"
    case exclamation = "Whoa, chill out!"
    case question = "Sure."
    case generic = "Whatever."
}

class Bob {
    static func hey(_ input: String) -> String {
        // Respond to silence
        if input.trimmingCharacters(in: [" "]).count == 0 {
            return Responses.silence.rawValue;
        }
        
        let deburredInput = input.folding(options: .diacriticInsensitive, locale: .current)
        let lowercaseRegex = try? NSRegularExpression(pattern: "[a-z]")
        let lowercaseLetters = lowercaseRegex?.matches(in: deburredInput, range: NSRange(location: 0, length: deburredInput.count))
        let uppercaseRegex = try? NSRegularExpression(pattern: "[A-Z]")
        let uppercaseLetters = uppercaseRegex?.matches(in: deburredInput, range: NSRange(location: 0, length: deburredInput.count))
        
        // Respond to exclamation
        if lowercaseLetters?.count == 0 && uppercaseLetters?.count != 0 {
            return Responses.exclamation.rawValue;
        }
    
        // Respond to question
        if input.last == "?" {
            return Responses.question.rawValue;
        }

        // Generic response
        return Responses.generic.rawValue
    }
}
