import Foundation

class Song {
    private var name : Name
    
    static func forName(_ name : Name) -> Song {
        return Song(name)
    }
    
    init(_ name : Name) {
        self.name = name
    }
    
    func lyricize() ->  String {
        let shortenedNameString : String = self.name.shorten().toString()
        let unshortenedNameString : String = self.name.toString()
        return ["\(unshortenedNameString), \(unshortenedNameString), Bo B\(shortenedNameString)",
            "Banana Fana Fo F\(shortenedNameString)", 
            "Me My Mo M\(shortenedNameString)",
            "\(unshortenedNameString)"].joined(separator: "\n")
    }
}
 
