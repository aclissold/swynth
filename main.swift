import Foundation

// import After // aclissold/After
import Blocker // aclissold/Blocker:v1.0.2

func after(seconds: Double, closure: () -> ()) {
    let delay = dispatch_time(DISPATCH_TIME_NOW,
                              Int64(seconds * Double(NSEC_PER_SEC)))
    let mainQueue = dispatch_get_main_queue()
    dispatch_after(delay, mainQueue, closure)
}

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
