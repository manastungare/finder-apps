(*
Touch Script by Manas Tungare, http://manas.tungare.name/
Dedicated to the Public Domain.
*)

tell application "Finder"
	set thisFolder to (target of front window) as alias
	tell application (path to frontmost application as Unicode text)
		set fileName to choose file name with prompt "Enter file name:" default location thisFolder
	end tell
	set posixPath to quoted form of POSIX path of fileName
	do shell script "touch " & posixPath
end tell
