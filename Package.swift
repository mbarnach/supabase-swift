// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Supabase",
  platforms: [
    .macOS(.v10_15),
    .iOS(.v11),
    .tvOS(.v11),
    .watchOS(.v3),
  ],
  products: [
    .library(
      name: "Supabase",
      targets: ["Supabase"]
    )
  ],
  dependencies: [
    .package(name: "GoTrue", url: "https://github.com/mbarnach/gotrue-swift.git", .branch("LinuxCompatibility")),
    .package(
      name: "SupabaseStorage", url: "https://github.com/mbarnach/storage-swift.git", .branch("LinuxCompatibility")),
    .package(
      name: "Realtime", url: "https://github.com/mbarnach/realtime-swift.git", .branch("main")),
    .package(
      name: "PostgREST", url: "https://github.com/mbarnach/postgrest-swift", .branch("LinuxCompatibility")),
  ],
  targets: [
    .target(
      name: "Supabase",
      dependencies: ["GoTrue", "SupabaseStorage", "Realtime", "PostgREST"]
    ),
    .testTarget(
      name: "SupabaseTests",
      dependencies: ["Supabase"]
    ),
  ]
)
