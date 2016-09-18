//
// Created by Justin Guedes on 2016/09/18.
//

import Foundation

extension R {

    /**

        Returns the length of the collection.

        - parameter collection: The collection.

        - returns: The length of the collection.

    */

    public class func length<T: CollectionType>(collection: T) -> T.Index.Distance {
        return collection.count
    }

}
