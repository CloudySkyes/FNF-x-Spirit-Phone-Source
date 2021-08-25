function start(song)
    print('im confused where is the paper that i printed')
    magicTrick = true
end

function setDefault(id)
	_G['defaultStrum'..id..'X'] = getActorX(id)
end

function update(elapsed)
    if magicTrick then 
        for i=0,3 do
               setActorAlpha(0,i)
        end
    end
end

function beatHit(beat)

end

function stepHit(step)
    if step == 3205 then
        for i=0,7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 300, getActorAngle(i), 2, 'setDefault')
        end
    end
    if step == 3226 then
        magicTrick = false
        for i=0,3 do
            tweenFadeIn(i,1,2)
        end
    end
end

function keyPressed(key)

end