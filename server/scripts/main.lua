scriptId = 'com.thalmic.examples.myfirstscript'
scriptTitle = "test"
scriptDetailsUrl = ""

myo.setLockingPolicy("standard")
falcon_check = false
char_check = true

function onForegroundWindowChange(app, title)
	myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
	--if (title == "myo-smash") then
		return true
	--else
		--return false
end

function onPoseEdge(pose, edge)
	if(edge == "on") then
		if (pose == "waveOut") then
			onWaveOut()
		elseif ((char_check) and (falcon_check == false) and (pose == "fingersSpread")) then
			Falcon()
		elseif ((char_check) and (falcon_check) and (pose == "fist")) then
			Punch()
		elseif ((char_check) and (falcon_check == false) and (pose == "fist")) then
			Yes()
		elseif ((char_check) and (falcon_check == false) and (pose == "waveIn")) then
			ComeOn()
			
			
		elseif ((char_check == false) and (falcon_check == false) and (pose == "fist")) then
			Jump()
		elseif ((char_check == false) and (falcon_check == false) and (pose == "waveIn")) then
			Grow()
		elseif ((char_check == false) and (falcon_check == false) and (pose == "fingersSpread")) then
			Fire()
		end
	end
end

function onWaveOut()
	if (char_check) then
		char_check = false
		myo.keyboard("m","down")
		myo.debug("m")
	else
		char_check = true
		myo.keyboard("f","down")
		myo.debug("f")
	end
end

function Falcon()
	falcon_check = true
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
	falcon_check = false
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

function Jump()
	myo.setLockingPolicy("standard")
	myo.debug("5")
	myo.vibrate("short")
	myo.keyboard("5","down")
end

function Grow()
	myo.setLockingPolicy("standard")
	myo.debug("6")
	myo.vibrate("short")
	myo.keyboard("6","down")
end

function Fire()
	myo.setLockingPolicy("standard")
	myo.debug("7")
	myo.vibrate("short")
	myo.keyboard("7","down")
end
