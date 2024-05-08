# Add Server To Prism

Use the one batch file to generate the server in Prism Launcher. (it needs you to accept the EULA in the .minecraft folder)<br>
Requires an already working instance to work.<br><br><br><br><br><br><br><br><br><br>
Compains about invalid arguments? :To fix that (not make it not happen but just do what it wanted to do)  open up Prism Launcher, edit the server and then open the version tab in which press edit on Minecraft (you might need to first click on `customize`) and scrolling to the end where how it says: `"minecraftArguments": "(blablabla)",`, remove everything in the quotes where is something like: `--username ${auth_player_name} --version` etc... to `"minecraftArguments": "",`.<br>
Invalid command errors or file not found? : You didn't install 7-Zip or you inputed a incorrect instances folder. Sometimes when you install 7-zip you have to first run the command:
`setx PATH "%PATH%;C:\Program Files\7-Zip"` where `C:\Program Files\7-Zip` is the folder where 7-Zip is installed.<br><br>
