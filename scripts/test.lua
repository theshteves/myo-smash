scriptId = 'com.thalmic.examples.myfirstscript'
scriptTitle = "test"
scriptDetailsUrl = ""

myo.setLockingPolicy("standard")
check = false
1111111121111111112311111111
function onForegroundWindowChange(app, title)
	myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
	--if (title == "myo-smash") then
		return true
	--else
		--return false
end

function onPoseEdge(pose, edge)

	if(edge == "on") then
		if ((check == false) and (pose == "fingersSpread")) then
			Falcon()
		elseif ((check) and (pose == "fist")) then
			Punch()
		elseif ((check == false) and (pose == "fist")) then
			Yes()
		elseif ((check == false) and (pose == "waveIn")) then
			ComeOn()
		end
	end
end

function Falcon()
	check = true
	myo.setLockingPolicy("none")
	myo.debug("1")
	myo.vibrate("short")
	myo.keyboard("1","press")
end

function Punch()
	myo.setLockingPolicy("standard")
	myo.debug("2")
	myo.vibrate("short")
	myo.keyboard("2","down")
	check = false
end

function Yes()
	myo.setLockingPolicy("standard")
	myo.debug("3")
	myo.vibrate("short")
	myo.keyboard("3","down")
end

function ComeOn()
	myo.setLockingPolicy("standard")
	myo.debug("4")
	myo.vibrate("short")
	myo.keyboard("4","down")
end
