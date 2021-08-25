function start(song)
       print("its not a kink thing i swear")
       pleaseGoAwayPlease = true
end

function setDefault(id)
	_G['defaultStrum'..id..'X'] = getActorX(id)
end

function update(elapsed)
       if pleaseGoAwayPlease then 
              for i=0,3 do
                     setActorAlpha(0,i)
              end
       end
end

function beatHit(beat)
       
end

function stepHit(step)
       if step == 371 then
              for i=4,7 do
                     tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 300, getActorAngle(i) + 720, 1, 'setDefault')
              end
              for i=0,3 do
                     tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 300, getActorAngle(i), 1, 'setDefault')
              end
       end
       if step == 379 then
              pleaseGoAwayPlease = false
              for i = 0, 3 do 
                  tweenFadeIn(i,1,0.8)
              end
       end
       if step == 503 then
              for i=0,3 do
                     tweenFadeOut(i,0,0.8)
              end
       end
       if step == 508 then
              for i=4,7 do
                     tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 300, getActorAngle(i) - 720, 1, 'setDefault')
              end
       end
       if step == 1075 then
              for i=4,7 do
                     tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 300, getActorAngle(i) + 720, 1, 'setDefault')
              end
       end
       if step == 1083 then
              for i=0,3 do
                     tweenFadeIn(i,1,0.8)
              end
       end
       if step == 1205 then
              for i=0,3 do
                     tweenFadeOut(i,0,0.8)
              end
       end 
       if step == 1211 then
              for i=4,7 do
                     tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 300, getActorAngle(i) - 720, 1, 'setDefault')
              end
       end    
end