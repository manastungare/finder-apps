(*
Terminal Launch Script by Manas Tungare, http://manas.tungare.name/
Dedicated to the Public Domain.
*)

tell application "Finder"
	set thisFolder to (target of front window) as Unicode text
	set posixPath to quoted form of POSIX path of thisFolder
end tell

tell application "System Events" to set allprocesses to get name of every process

tell application "Terminal"
	activate
	if allprocesses contains "Terminal" then
		do script "cd " & posixPath
	else
		do script "cd " & posixPath in front window
	end if
end tell