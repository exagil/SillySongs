import Foundation

class Name {
    private var name : String
    private let VOWELS : [String] = ["a", "e", "i", "o", "u"]

    init(_ name : String) {
        self.name = name
    }
    
    func shorten() -> Name {
        let shortenedName = removeConsonantsBeforeFirstVowelIn(name)
        return Name(shortenedName.lowercased());
    }
    
    func toString() -> String {
        return self.name.capitalized
    }
    
    private func removeConsonantsBeforeFirstVowelIn(_ name : String) -> String {
        for index in 0..<name.characters.count {
            if (VOWELS.contains(name[index])) {
                return name.substring(from: index)
            }
        }
        return name
    }
}
