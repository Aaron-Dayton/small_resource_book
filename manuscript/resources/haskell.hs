module Cipher where


import Data.Char


caesarCipher :: String -> Int -> String
caesarCipher [] shift = []
caesarCipher (x:xs) shift
  | isUpper x = chr ((mod (ord x + shift - 65) 26) + 65) : caesarCipher xs shift
  | otherwise = chr ((mod (ord x + shift - 97) 26) + 97) : caesarCipher xs shift


vigenereCipher :: String -> String -> String
vigenereCipher sentence keyword = go sentence keyword 0
  where go [] _ _ = []
        go (x:xs) keyword keywordIndex
         | isUpper x = chr ((mod (ord x + shift - 65) 26) + 65) : go xs keyword (mod (keywordIndex + 1) (length keyword))
         | isLower x = chr ((mod (ord x + shift - 97) 26) + 97) : go xs keyword (mod (keywordIndex + 1) (length keyword))
         | otherwise = x : go xs keyword (mod (keywordIndex + 1) (length keyword))
            where shift
                   | isUpper (keyword !! keywordIndex) = ord (keyword !! keywordIndex) - 65
                   | isLower (keyword !! keywordIndex) = ord (keyword !! keywordIndex) - 97
                   | otherwise                         = 0