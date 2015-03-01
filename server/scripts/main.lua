scriptId = 'com.thalmic.examples.myfirstscript'
scriptTitle = "test"
scriptDetailsUrl = ""

myo.setLockingPolicy("standard")
falcon_check = false
wavein_check = false

function onForegroundWindowChange(app, title)
	myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
	--if (title == "myo-smash") then
		return true
	--else
		--return false
end

function onPoseEdge(pose, edge)
	if(edge == "on") then
		if ((wavein_check == false) and (falcon_check == false) and (pose == "fingersSpread")) then
			Falcon()
		elseif ((wavein_check == false) and (falcon_check) and (pose == "fist")) then
			Punch()
		elseif ((wavein_check == false) and (falcon_check == false) and (pose == "fist")) then
			Yes()
		elseif ((wavein_check == false) and (falcon_check == false) and (pose == "waveIn")) then
			wavein_check = true
		elseif ((wavein_check) and (falcon_check == false) and (pose == "waveIn")) then
			ComeOn()
		elseif ((wavein_check == false) and (falcon_check == false) and (pose == "waveOut")) then
			Show()
		end
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
	wavein_check = false
	file = io.open("", "r")
end

function Show()
	myo.setLockingPolicy("standard")
	myo.debug("5")
	myo.vibrate("short")
	myo.keyboard("5","down")
end

function WinTheme()
	myo.setLockingPolicy("standard")
	myo.debug("6")
	myo.vibrate("short")
	myo.keyboard("6","down")
end
