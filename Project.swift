import ProjectDescription

let project = Project(
    name: "minrep",
    targets: [
        .target(
            name: "T1",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.minrep1",
            sources: ["minrep/Sources/**"],
            dependencies: [
                .target(name: "T3"),
                .target(name: "T2"),
            ]
        ),
        .target(
            name: "T2",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.minrep2",
            sources: ["minrep/Sources/**"],
            dependencies: [
                .target(name: "T3"),
            ]
        ),
        .target(
            name: "T3",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.minrep3",
            sources: ["minrep3/Sources/**"],
            dependencies: [
                .external(name: "FirebaseRemoteConfig"),
                .external(name: "FirebaseAuth"),
            ]
        ),
    ]
)
