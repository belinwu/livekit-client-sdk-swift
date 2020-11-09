import XCTest
@testable import livekit_ios

final class livekit_iosTests: XCTestCase {
    func testConnect() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let connectOptions =  ConnectOptions(token: "some-token") { builder in
            builder.roomName = "my-room"
        }
        XCTAssertEqual(LiveKit.connect(options: connectOptions), "Connected")
    }

    static var allTests = [
        ("testExample", testConnect),
    ]
}
