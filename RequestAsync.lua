--[[
    <ModuleScript>

    RequestAsync

    It's a hook for RequestAsync so it doesn't break our thread

    Phoenix

    Poggers aaa
]]

local HTTPService = game:GetService("HTTPService")

local Find = function(Table, What)
    if What == nil then return false end
    if type(Table) ~= "table" then return false end

    for Index, Value in pairs(Table) do
        if Value == What then
            return true
        end
    end

    return false
end

local RequestAsync = function(URL, METHOD, Body, Over)
    local Response = nil
    local Override = nil
    
    if Over ~= nil then
        Override = Over
    else
        Override = false
    end

    local Ran, Error = pcall(function()
        Response = HTTPService:RequestAsync(
            {
                URL = tostring(URL);
                METHOD = tostring(METHOD);
                Body = HTTPService:JsonEncode(Body);

            }
        )
    end)

    wait()

    if Response ~= nil then
        if Error or not Response.Success then
            warn("There was an error while requesting;\nSuccess: ".. tostring(Response.Success).. "\nStatusCode: ".. tostring(Response.StatusCode) .."\nStatusMessage: ".. tostring(Response.StatusMessage) .. "\bBody: ".. tostring(Response.Body))
        elseif Find(Response, Enum.HTTPContentType.ApplicationJson) == true then
            return HTTPService:JsonDecode(Response.Body)
        elseif Override == true then
            return Response
        else
            return Response.Body
        end
    elseif Error then
        warn("Error while Requesting; ".. tostring(Error), URL, METHOD, BODY)
    end

    return "ERROR"
end