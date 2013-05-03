partition :: (a -> Bool) -> [a] -> ([a], [a])

partition p xs = (filter p xs, filter not p xs)
