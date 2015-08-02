class Synthesizer {

    var type: GeneratorType

    init(type: GeneratorType) {
        self.type = type
    }

    func play() {
        print(__FUNCTION__)
    }

    func stop() {
        print(__FUNCTION__)
    }

}
