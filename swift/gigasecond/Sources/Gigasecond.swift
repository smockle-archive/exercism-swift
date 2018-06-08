//Solution goes in Sources
import Foundation
class Gigasecond {
    var description: String
    init?(from string: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        guard var date = dateFormatter.date(from: string) else {
            return nil
        }
        date.addTimeInterval(pow(10.0, 9.0))
        self.description = dateFormatter.string(from: date)
    }
}
