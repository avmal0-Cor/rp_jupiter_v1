--[[----------------------------------------------------------------

        Map: rp_jupiter_v1
        Credits: NuclearGhost, avmal0
        Description:

            - RU: Карта из игры S.T.A.L.K.E.R. Зов Припяти
                  Содержит завод Юпитер, базу бандитов, ЗРК "Волхов",
                  Станцию Янов, башню Зулуса, полустанок, туннель,
                  Цементный завод, КПП, Копачи, бункер ученых, градирня

                  NuclearGhost сделал основу для Юпитера 
                  avmal0 занялся декором и багами
                  В итоге мы получили интересную карту для игры ;)

                  Использовались ресурсы из S.T.A.L.K.E.R.`a, 
                  Портировали: maverikk (извиняюсь, если не так),
                  Wick (WickedRabbit вроде), z-o-m-b-i-e и т.д.
                  
                  avmal0:
                    - telegram: @avmal0_alexander
                    - email: avmal0.me@gmail.com
                    - steam: https://steamcommunity.com/id/avmal0_alexander/
                  
                  NuclearGhost:
                    - steam: https://steamcommunity.com/id/NuclearGhostUA
                    - VK: https://vk.com/nuclear_ghost


            - US: Map is from S.T.A.L.K.E.R. Call Of Pripyat
                  On map you can see Jupiter Factory, Container Warehouse, Volkhov AA Complex,
                  Yanov Station, Zulu`s Tower, Stop station, Tunnels,
                  Cement Factory, Checkpoint, Kopachy Village, Mobile Lab, Cooling Tower

                  NuclearGhost made the foundation for a map of Jupiter
                  avmal0 made decor and fixing bugs
                  As a result, we got an interesting map for the game ;)

                  Used resources from S.T.A.L.K.E.R.`s game, 
                  Ported by: maverikk (sorry if I got mistake),
                  Wick (WickedRabbit maybe), z-o-m-b-i-e and others.
                  
                  avmal0:
                    - telegram: @avmal0_alexander
                    - email: avmal0.me@gmail.com
                    - steam: https://steamcommunity.com/id/avmal0_alexander/
                  
                  NuclearGhost:
                    - steam: https://steamcommunity.com/id/NuclearGhostUA
                    - VK: https://vk.com/nuclear_ghost
]]------------------------------------------------------------------

AddCSLuaFile()
if CLIENT then
    function myCommand(player,command,args)
      if args[1] == "yes" then
        RunConsoleCommand("cl_detaildist", 0)
        RunConsoleCommand("cl_detailfade", 0)
        RunConsoleCommand("gmod_mcore_test", 1)
        RunConsoleCommand("mat_bumpmap", 0)
        RunConsoleCommand("snd_mix_async", 1)
        RunConsoleCommand("mat_specular", 1)
        RunConsoleCommand("cl_threaded_bone_setup", 1)
        RunConsoleCommand("r_threaded_particles", 1)
        RunConsoleCommand("r_queued_ropes", 1)
        RunConsoleCommand("cl_threaded_client_leaf_system", 1)
        RunConsoleCommand("r_threaded_renderables", 1)
        RunConsoleCommand("mat_queue_mode", 0)
        print("Good luck :). map_optimization = yes")
        return
      end -- if args[1] == "yes" then
      if args[1] == "no" then
        RunConsoleCommand("cl_detaildist", 3020)
        RunConsoleCommand("cl_detailfade", 2560)
        RunConsoleCommand("gmod_mcore_test", 1)
        RunConsoleCommand("mat_bumpmap", 0)
        print("OK, I removed some things and restored default parameters for this map.")
        return
      end -- if args[1] == "no" then
      if not (args[1] == "yes" or args[1] == "no") then
        print("Sorry, but I can`t understand you. Please, write 'yes' or 'no', not another.")
      end -- if not (args[1] == "yes" or args[1] == "no") then
    end -- function myCommand(player,command,args)


    function getAutoCompleteOptions(commandName,args)
      return {"yes","no"}
    end -- function getAutoCompleteOptions(commandName,args)


    concommand.Add("map_optimizations", myCommand, getAutoCompleteOptions)
    print("If you want to boost your fps - use map_optimizations.")
return
end -- if CLIENT then

--[[
Вообще я раздумывал об том, как бы сделать шобы не писался текст как серверный (синий цвет),
Но решения я так не надумал, поэтому оно может выводится как серверное.
]]