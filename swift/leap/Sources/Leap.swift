//Solution goes in Sources
class Year {
    var calendarYear: Int
    var isLeapYear: Bool
    init(calendarYear: Int) {
        self.calendarYear = calendarYear
        self.isLeapYear = Year.isLeapYear(self.calendarYear)
    }
    static func isLeapYear(_ calendarYear: Int) -> Bool {
        return calendarYear % 400 == 0 ||
               calendarYear % 4 == 0 && calendarYear % 100 != 0
    }
}
