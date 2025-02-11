Config = {}

Config.Locale = 'en' -- 'en'
Config.Notify = 'lb-phone' -- 'qb', 'qb-phone', 'ox', 'snappy-phone', 'yseries', 'lb-phone'
Config.Logger = 'ox' -- 'qb', 'ox'

-- Enable/Disable the taxes
Config.TaxStatus = {
    income = true,
    vehicle = true,
    property = true
}
Config.TaxStatusStartDelay = 30 -- seconds

Config.IncomeTax = {
    -- { bracket = 'NAME', amount = THRESHOLD_AMOUNT, percentage = 0-100% (decimal allowed) },
    { bracket = 'low', amount = 100000, percentage = 5 },
    { bracket = 'medium', amount = 250000, percentage = 10 },
    { bracket = 'high', amount = 500000, percentage = 15 },
    { bracket = 'ultra', amount = 1000000, percentage = 20 },
    { bracket = 'extreme', amount = 2000000, percentage = 25 },
}

Config.IncomeTaxStandard = 100 -- standard amount if does not meet any tax bracket
Config.IncomeTaxInterval = 60 -- in minutes

Config.VehicleTax = {
    -- { bracket = 'NAME', percentage = 0-100% (decimal allowed) },
    { bracket = 'Compacts', percentage = 5 },
    { bracket = 'Sedans', percentage = 10 },
    { bracket = 'SUVs', percentage = 15 },
    { bracket = 'Coupes', percentage = 20 },
    { bracket = 'Muscle', percentage = 25 },
    { bracket = 'Sports Classics', percentage = 5 },
    { bracket = 'Sports', percentage = 10 },
    { bracket = 'Super', percentage = 15 },
    { bracket = 'Motorcycles', percentage = 20 },
    { bracket = 'Off-road', percentage = 25 },
    { bracket = 'Industrial', percentage = 5 },
    { bracket = 'Utility', percentage = 10 },
    { bracket = 'Vans', percentage = 15 },
    { bracket = 'Cycles', percentage = 20 },
    { bracket = 'Boats', percentage = 25 },
    { bracket = 'Helicopters', percentage = 5 },
    { bracket = 'Planes', percentage = 10 },
    { bracket = 'Commercial', percentage = 15 },
}
Config.VehicleTaxInterval = 120 -- in minutes

Config.PropertyTax = 500 -- $500 per property
Config.PropertyTaxInterval = 120 -- in minutes

Config.OtherTax = { -- Refer README.md to know more
    ['food'] = { label = 'Food Tax', percentage = 1 },
}

-- account where all the taxes will go to
Config.TaxesAccountEnabled = false
Config.TaxesAccount = {
    accountType = 'business', -- 'business' or 'player'
    playerCitizenId = 'XX1111', -- player citizenid (only for player account)
    accountName = 'state', -- 'businessName' (only for business account)
    accountId = 1 -- -- 'businessId' (only for business account) (only for qb-banking)
}

-- citizen ids mentioned here will not have to pay any taxes
Config.TaxesFreeIdentifiers = {
    ["AHJ95674"] = true
}