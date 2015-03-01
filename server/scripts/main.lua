scriptId = 'com.thalmic.examples.myfirstscript'
scriptTitle = "test"
scriptDetailsUrl = ""

myo.setLockingPolicy("standard")
falcon_check = false
charge_check = false
waveOut_check = false
char_check1 = true
char_check2 = true

function onForegroundWindowChange(app, title)
	myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
	--if (title == "Myo Smash") then
		return true
	--else
	--	return false
	--end
end

function onPoseEdge(pose, edge)
	if(edge == "on") then
		if ((pose == "waveOut") and (waveOut_check == false) and (falcon_check == false)) then
			waveOut_check = true
		elseif ((pose == "waveOut") and (waveOut_check == true) and (falcon_check == false)) then
			onWaveOut()
		elseif ((char_check2 == false) and (char_check1) and (falcon_check == false) and (charge_check == false) and (pose == "fingersSpread")) then
			Falcon()
		elseif ((falcon_check) and (pose == "fist")) then
			Punch()
		elseif ((char_check2 == false) and (char_check1) and (falcon_check == false) and (charge_check == false) and (pose == "fist")) then
			Yes()
		elseif ((char_check2 == false) and (char_check1) and (falcon_check == false) and (charge_check == false) and (pose == "waveIn")) then
			ComeOn()
			
			
		elseif ((char_check2 == false) and (char_check1 == false) and (falcon_check == false) and (charge_check == false) and (pose == "fist")) then
			Jump()
		elseif ((char_check2 == false) and (char_check1 == false) and (falcon_check == false) and (charge_check == false) and (pose == "waveIn")) then
			Grow()
		elseif ((char_check2 == false) and (char_check1 == false) and (falcon_check == false) and (charge_check == false) and (pose == "fingersSpread")) then
			Fire()
		
		
		elseif ((char_check2) and (falcon_check == false) and (charge_check == false) and (pose == "fist")) then
			Charge()
		elseif ((char_check2) and (falcon_check == false) and (charge_check == true) and (pose == "fingersSpread")) then
			Thoron()
		elseif ((char_check2) and (falcon_check == false) and (charge_check == false) and (pose == "fingersSpread")) then
			ArcFire()	
		end
	end
end

function onWaveOut()
	if (char_check2) then 
		char_check2 = false
		char_check1 = false
		myo.keyboard("m","down")
		myo.debug("m")
	elseif (char_check1) then
		char_check2 = true
		myo.keyboard("r","down")
		myo.debug("r")
	else
		char_check1 = true
		myo.keyboard("f","down")
		myo.debug("f")
	end
	waveOut_check = false
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

function Charge()
	charge_check = true
	myo.setLockingPolicy("none")
	myo.debug("8")
	myo.vibrate("short")
	myo.keyboard("8","down")	
end

function Thoron()
	myo.setLockingPolicy("standard")
	myo.debug("9")
	myo.vibrate("short")
	myo.keyboard("9","down")
	charge_check = false
end

function ArcFire()
	myo.setLockingPolicy("standard")
	myo.debug("0")
	myo.vibrate("short")
	myo.keyboard("0","down")
end