{-
Given an age in seconds, calculate how old someone would be on:

    Mercury: orbital period 0.2408467 Earth years
    Venus: orbital period 0.61519726 Earth years
    Earth: orbital period 1.0 Earth years, 365.25 Earth days, or 31557600 seconds
    Mars: orbital period 1.8808158 Earth years
    Jupiter: orbital period 11.862615 Earth years
    Saturn: orbital period 29.447498 Earth years
    Uranus: orbital period 84.016846 Earth years
    Neptune: orbital period 164.79132 Earth years

So if you were told someone were 1,000,000,000 seconds old, you should be able to say that they're 31.69 Earth-years old.

https://exercism.org/tracks/haskell/exercises/space-age
-}

module SpaceAge where

-- p.s. PERFORMANCE: maybe more performant to use direct string comparing instead of making separate enum
data Planet = Mercury | Venus | Earth | Mars | Jupiter | Saturn | Uranus | Neptune

parsePlanet :: String -> Planet
parsePlanet planet
    | planet == "Mercury" || planet == "mercury" = Mercury
    | planet == "Venus" || planet == "venus" = Venus
    | planet == "Earth" || planet == "earth" = Earth
    | planet == "Mars" || planet == "mars" = Mars
    | planet == "Jupiter" || planet == "jupiter" = Jupiter
    | planet == "Saturn" || planet == "saturn" = Saturn
    | planet == "Uranus" || planet == "uranus" = Uranus
    | planet == "Neptune" || planet == "neptune" = Neptune
    | otherwise = Earth

calculateAge :: Planet -> Float -> Float
calculateAge planet seconds = 
    case planet of
        Mercury -> convertedSeconds * 0.24089467
        Venus -> convertedSeconds * 0.61519726 
        Earth -> convertedSeconds
        Mars -> convertedSeconds * 1.8808158
        Jupiter -> convertedSeconds * 11.862615
        Saturn -> convertedSeconds * 29.447498
        Uranus -> convertedSeconds * 84.016846
        Neptune -> convertedSeconds * 164.79132
    where
        convertedSeconds = seconds / 60 / 60 / 24 / 365

main :: IO ()
main = do
    putStrLn "Hey. Waiting for your input below..."
    userInputPlanet <- getLine 
    userInputSeconds <- getLine
    let planet = parsePlanet userInputPlanet
    let seconds = read userInputSeconds :: Float
    print (calculateAge planet seconds)
    return ()
