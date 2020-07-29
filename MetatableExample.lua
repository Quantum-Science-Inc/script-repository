local Table = {["Index"] = "Urmomlol";}

local NewTable = setmetatable({},{
  __index = function(Self, Index) --// Fired when Indexed
    if Table[Index] ~= nil then
      return Table[Index]
    else
      return nil
    end
  end;

  __newindex = function(Self, NewIndex, Value) --// Fired when a NEW index is attempted to be set
    Table[NewIndex] = Value
  end;

  __call = function() --// When NewTable() is called as a function
    return "FUCK" --// Put function here
  end;
  
  __len = function() --// When #NewTable is called
    return #Table
  end;

  __metatable = {}; --// Locks the metatable
})

NewTable["Hi"] = "Hi" --// Sets table
print(NewTable.Index) --// Returns "Urmomlol"
print(NewTable()) --// Returns "FUCK"
NewTable.__index = function() end --// Errors cause we locked it with __metatable
print(#NewTable) --// Returns Two because we set two Indexes