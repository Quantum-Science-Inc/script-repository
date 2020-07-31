--[[
    <ModuleScript>

    RequestAsync

    It's a hook for RequestAsync so it doesn't break our thread

    Phoenix

    Poggers aaa
]]

--// HTTPAPI
local HTTPService = game:GetService("HttpService")

return function(URL, METHOD, Body, Over)
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
                Url = tostring(URL);
                Headers = {["Content-Type"] = "application/json"};
                Method = tostring(METHOD);
                Body = HTTPService:JSONEncode(Body);

            }
        )
    end)

    wait()

    if Response ~= nil then
        if Error or not Response.Success then
            warn("There was an error while requesting;\nSuccess: ".. tostring(Response.Success).. "\nStatusCode: ".. tostring(Response.StatusCode) .."\nStatusMessage: ".. tostring(Response.StatusMessage) .. "\bBody: ".. tostring(Response.Body))
        elseif Override == true then
            return Response
		else
			return Response.Body
        end
    elseif Error then
        warn("Error while Requesting;\n".. tostring(Error), URL, METHOD, Body)
    end

    return "ERROR"
end