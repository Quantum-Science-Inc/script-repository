--// Args + Command
local Command = "{args:0}"
local One = "{args:1}"

local Version = "URMOM.1.1"

--// Random Numbers
local GeneralRange = tonumber("{range:1|60}")
local CMDRandom = tonumber("{range:1|4}")

--// Master table of Insults!
local Tab = {
    General = {};
    UrMom = {};
}

--// I know I could have just added the Indexes but oh well
local Inject = function(Table, ...)
    for Index, Thing in pairs({...}) do
        Table[#Table + 1] = Thing
    end

    print(#Table)
end

--// General Section
Inject(Tab.General, "TONE DEAF SHART GOBLIN", "SLIMY SPHINCTER CLOWN", "WH1TE TRASH RECTUM PIRATE", "EL1TIST DOUCHE HAMMER1", "STUPID TURD TOOLBAG", 
"NIGGER", "FART TRASHBAG", "INSECURE BITCH GOBLIN", "SLIMY DICK JOCKEY", "ID1OTIC SLVT PILOT", "WH1TE TRASH COCK WAFFLE",
"C0MMUN1ST NUT KNOB", "DUCKN0SE RECTUM CAPTAIN", "DUCKN0SE RECTUM CAPTAIN", "SMELLY BITCH TOOLBAG", "SHITTER RECEPTICLE", "BUTTHOLE TERRORIST", "PANDEMIC MASTER", "FUCKWIT LOBSTER", "COCK WIPE",
"PIPE HITTIN BANDIT", "BOLLOCKING TOES", "CUNTYBOLLOCK NINJA", "PRICK CHEESE", "DOUCHE HANDS", "BONER MAGNET", "PECKER BAGEL", "SNOT TOUCHER", "STANKY VAG BINDIPPER",
"SKANK DIDDLER", "ERECTION COCKTASTIC", "WAZZOCK BORE", "TURKEY .COM", "POOP SQUIRREL", "DUMB HANDLE", "TUMOR KISSER", "PUBIC BISCUIT", 
"CHOAD CANOE", "PILLOW BITING NARCISSIST", "ROTTING ZOMBIE MAGGOT FARM", "DICK BIKE", "POOP LOAD", "PORN ARTIST", "FANNY LORD", "SKANK TROMBONE", "BONER ROCKET", 
"yeast-tainted mulemelon", "zit-limbed bongdiddler", "weenerplug", "muffsocket", "quim-spotted slotbreeder", "apesponge", 
"camel-headed butterpoacher", "cumhugger", "tiny-tiny-wanged", "DRUG-LOVING ASS JOCKEY", "PIE-EATING PRICK HAMMER", "DRUG-LOVING C0CK CLOWN", "JACKALOPE SHIT TOOLBAG", "SLUTTY B0NER GOBLIN")

local Commands; Commands = {
    [1] = {
        A = {"any", "most", "what"};
        F = function()
            print("Fart nigga he")
        end;
    };

    [2] = {
        A = {"whatversion";};
        F = function()
            print("Current version is " .. Version .. " you fuck wit")
        end;
    };

    [3] = {
        A = {"tellmeajoke";};
        F = function()
            print("Test")
        end;
    };

    [4] = {
        A = {"help"; "wtf"};
        F = function()
            print("Commands below!")

            for Index, CMD in pairs(Commands) do
                local Str = "Command;"

                table.foreach(CMD.A, function(Index, Element) Str = Str .. " " .. Element end)

                print(Str)
            end

            print("Done!")
        end;
    };
};

local GetCMD = function(St)
    St = string.lower(St)

    local Search = function(Table, St)
        for NA, Str in pairs(Table.A) do
            if Str == St then
                return true
            end
        end

        return false
    end

    for Num, CMD in pairs(Commands) do
        local Find = Search(CMD, St)

        if Find == true then
            return true
        end
    end

    return nil
end

do
    local Attempted = GetCMD(CMD)

    if string.lower(CMD) == "ran" or string.lower(CMD) == "random" then
        Attempted = Commands[CMDRandom]
    end

    if Attempted == nil then
        print("You didn't supply a good command, use .t nsbbot help")
        return
    end

    local Ran, Err = pcall(function() Attempted.F(One) end)

    if Err then
        print("ERROR! ".. tostring(Err))
    end
end