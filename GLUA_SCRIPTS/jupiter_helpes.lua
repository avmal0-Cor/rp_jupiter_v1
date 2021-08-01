-- Debug Lua version
print(_VERSION)

-- Check is Client or Server
if SERVER or CLIENT then
	if CLIENT then 
		print("hi dude")
		return 0;
	end -- if CLIENT then
	if SERVER then
		print[["by
		avmal0"]]
	end -- if SERVER then
end -- if SERVER or CLIENT then