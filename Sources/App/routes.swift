import Vapor

/// Register your application's routes here
public func routes(_ router: Router) throws {

    /// return a String
    router.get("name") { req in
        return "Ethan Hunt"
    }

    /// return an Int
    router.get("age") { req in
        return 23
    }

    /// return JSON
    router.get("json") { req in
        return Person(name: "Martin J. Lasek", age: 26)
    }
}

/// Your class or struct must conform to `Content`
/// for being able to return as a json in a route
struct Person: Content {
    var name: String
    var age: Int
}
