import Foundation

import After // aclissold/After:v1.0.0
import Blocker // aclissold/Blocker:v1.0.2

func main() {
    defer {
        block()
    }
    let synth = Synthesizer(type: .Sine)
    synth.play()
    after(1) {
        synth.stop()
        unblock()
    }
}

main()
