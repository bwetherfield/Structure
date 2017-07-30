// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Structure",
    targets: [

        // Sources
        .target(name: "Algorithms"),
        .target(name: "Bitwise"),
        .target(name: "PatternMatching"),
        .target(name: "Predicates"),
        .target(name: "SumType", dependencies: ["Bitwise"]),
        .target(name: "StructureWrapping"),
        .target(name: "Destructure"),
        .target(name: "Algebra", dependencies: ["Destructure"]),
        .target(name: "Zip3Sequence"),
        .target(name: "LinkedList"),
        .target(name: "Matrix"),
        .target(name: "Stack", dependencies: ["Algebra"]),
        .target(name: "ReferenceTree", dependencies: ["Algebra", "Predicates"]),
        .target(name: "ReferenceGraph"),
        .target(name: "Tree", dependencies: ["Algebra", "Destructure", "Stack"]),
        .target(name: "CircularArray", dependencies: ["Algebra", "Destructure"]),
        .target(name: "SortedArray", dependencies: ["Algebra", "StructureWrapping"]),
        .target(name: "DictionaryProtocol"),
        .target(name: "OrderedDictionary", dependencies: ["DictionaryProtocol"]),
        .target(
            name: "SortedDictionary",
            dependencies: ["DictionaryProtocol", "SortedArray", "StructureWrapping"]
        ),
        .target(name: "Number", dependencies: ["Algebra"]),

        // Tests
        .testTarget(name: "AlgorithmsTests", dependencies: ["Algorithms"]),
        .testTarget(name: "BitwiseTests", dependencies: ["Bitwise"]),
        .testTarget(name: "PredicatesTests", dependencies: ["Predicates"]),
        .testTarget(name: "SumTypeTests", dependencies: ["SumType"]),
        .testTarget(name: "AlgebraTests", dependencies: ["Algebra"]),
        .testTarget(name: "Zip3SequenceTests", dependencies: ["Zip3Sequence"]),
        .testTarget(name: "DestructureTests", dependencies: ["Destructure"]),
        .testTarget(name: "LinkedListTests", dependencies: ["LinkedList"]),
        .testTarget(name: "StackTests", dependencies: ["Stack"]),
        .testTarget(name: "MatrixTests", dependencies: ["Matrix"]),
        .testTarget(name: "ReferenceTreeTests", dependencies: ["ReferenceTree"]),
        .testTarget(name: "ReferenceGraphTests", dependencies: ["ReferenceGraph"]),
        .testTarget(name: "TreeTests", dependencies: ["Tree"]),
        .testTarget(name: "CircularArrayTests", dependencies: ["CircularArray"]),
        .testTarget(name: "OrderedDictionaryTests", dependencies: ["OrderedDictionary"]),
        .testTarget(name: "SortedArrayTests", dependencies: ["SortedArray"]),
        .testTarget(name: "SortedDictionaryTests", dependencies: ["SortedDictionary"]),
        .testTarget(name: "DictionaryProtocolTests", dependencies: ["DictionaryProtocol"]),
    ]
)
