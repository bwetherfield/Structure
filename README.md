# Structure

![Swift](https://img.shields.io/badge/Swift-4.2-brightgreen.svg)
[![Build Status](https://travis-ci.org/dn-m/Structure.svg?branch=master)](https://travis-ci.org/dn-m/Structure)

The `Structure` package defines algebraic and data structures in Swift 4.2, along with algorithms to be performed over them.

## Modules

The contents of this Swift package are split amongst four modules. 

#### [`Destructure`](https://github.com/dn-m/Structure/tree/master/Sources/Destructure) 

Deconstruct `Sequence` types for functional-style recursive algorithms.

#### [`Algebra`](https://github.com/dn-m/Structure/tree/master/Sources/Algebra)

Protocols and structures for defining types like `Semigroup`, `Monoid`, and `Group`.

#### [`DataStructures`](https://github.com/dn-m/Structure/tree/master/Sources/DataStructures)

- Linear data structures (`Stack`, `Queue`, `LinkedList`, `Matrix`, `SortedArray`, and more)
- Hash-based structures (`OrderedDictionary`, `SortedDictionary`)
- Tree structures (`Tree`, `BinarySearchTree`, `AVLTree`)
- Graph structures (`Graph`, `WeightedGraph`, `DirectedGraph`, `WeightedDirectedGraph`)

#### [`Algorithms`](https://github.com/dn-m/Structure/tree/master/Sources/Algorithms)

Algorithms for restructuring elements in `Sequence` and `Collection` types, like `subsets` and `combinations`.

## Getting Started

### Requirements

- Swift 4.2 (default in Xcode 10)
- [Swift Package Manager](https://swift.org/package-manager/)

### Installation

To include the `Structure` package in your own project, add it to the `dependencies` section of your `Package.swift` file:

```Swift
let package = Package(
    name: ...,
    products: [ ... ],
    dependencies: [
        ...,
        .package(url: "https://github.com/dn-m/Structure", from: "0.19.0")
    ],
    targets: [ ... ]
)
```

To use a given module in your own project, import the desired module:

```Swift
import Algebra
import Destructure
import DataStructures
import Algorithms
```

### Development

To contribute to the `Structure` package, clone the `git` repository:

```
git clone https://github.com/dn-m/Structure && cd Structure
```

Build the package:

```
swift build
```

Run the tests:

```
swift test
```

If you use the Xcode IDE, use Swift Package Manager to generate an `.xcodeproj` file:

```
swift package generate-xcodeproj
```