scriptId = 'com.thalmic.examples.myfirstscript'
scriptTitle = "My First Script"
scriptDetailsUrl = ""

myo.setLockingPolicy("none")

function onForegroundWindowChange(app, title)
	myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
    return true
end

function onPoseEdge(pose, edge)
	
	if(edge == "on") then
		if (pose == "fist") then
			Falcon()
		--elseif (pose == "fist" and ...) then
		--	Punch()
		elseif (pose == "fingersSpread") then
			Yes()
		elseif (pose == "waveIn") then
			ComeOn()
		end
	end
end
 
function Falcon()
	myo.debug("1")
	myo.vibrate("short")	
	myo.keyboard("1","press")
end

function Punch()
	myo.debug("2")
	myo.vibrate("short")
	myo.keyboard("2","down")
end

function Yes()
	myo.debug("3")
	myo.vibrate("short")
	myo.keyboard("3","down")
end

function ComeOn()
	myo.debug("4")
	myo.vibrate("short")
	myo.keyboard("4","down")
end