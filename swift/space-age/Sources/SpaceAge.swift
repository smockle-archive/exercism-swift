//Solution goes in Sources
class SpaceAge {
    //MARK: Stored Properties
    var seconds: Int
    
    //MARK: Computed Properties
    var onMercury: Double {
        return self.onEarth / 0.2408467
    }
    var onVenus: Double {
        return self.onEarth / 0.61519726
    }
    var onEarth: Double {
        return Double(self.seconds) / 31557600.0
    }
    var onMars: Double {
        return self.onEarth / 1.8808158
    }
    var onJupiter: Double {
        return self.onEarth / 11.862615
    }
    var onSaturn: Double {
        return self.onEarth / 29.447498
    }
    var onUranus: Double {
        return self.onEarth / 84.016846
    }
    var onNeptune: Double {
        return self.onEarth / 164.79132
    }
    
    //MARK: Constructor
    init(_ inSeconds: Int) {
        self.seconds = inSeconds
    }
}
