--[[

turtle bootstrap level 2

basic copy of bootstrap but grabs more programs

reasoning is that github workflow is easier for to manage without
mucking with pastebin site or API

Usage:

  > github get seriallos/computercraft/master/boot2.lua boot2
  > boot2

--]]

http_runs = {
  ["pastebin"] = {
    -- better quarry program from adam smith
    ["PAPDddcb"] = "quarry",
  },
  -- make sure to use the right URL for raw.github.com
  ["github"] = {

    -- gist loader
    ["seriallos/computercraft/master/gist.lua"] = "gist",

    -- chop down 2x2 redwoods
    ["seriallos/computercraft/master/redwood.lua"] = "redwood",

    -- dig stairs down into the ground
    ["seriallos/computercraft/master/stairs.lua"] = "stairs",

    -- apis
    --["seriallos/computercraft/master/api/underscore.lua"] = "underscore",
    --["seriallos/computercraft/master/api/twilio.lua"] = "twilio",
  },
}

for service, list in pairs( http_runs ) do
  print( service )
  for id, program in pairs( list ) do
    print( "  Downloading "..program.." ("..id..")" )
    shell.run( service, "get", id, program )
  end
end
