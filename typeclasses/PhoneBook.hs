-- type synonyms allow us to redefine something to make it more clear what it actually is
type PhoneNumber = String
type Name = String
type PhoneBook = [(Name, PhoneNumber)]


inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook name pnumber pbook = (name, pnumber) `elem` pbook