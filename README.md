# Add Server To Prism

Use the one batch file to generate the server in Prism Launcher. (it needs you to accept the EULA in the .minecraft folder)<br>
Requires an already working instance to work.<br><br><br><br><br><br><br><br><br><br>
Starting it: You will probably need to edit the a file to make it not error out about "invalid arguments" which you can access by opening up Prism Launcher, in which edit the server and then open the version menu in which press edit on Minecraft (you might need to first click on "customize") and scrolling to the end where how it says: `"minecraftArguments": "(blablabla)",`, remove everything in the quotes where is something like: `--username ${auth_player_name} --version ${version_name} --gameDir ${game_directory} --assetsDir ${assets_root} --assetIndex ${assets_index_name} --uuid ${auth_uuid} --accessToken ${auth_access_token} --userType ${user_type} --versionType ${version_type}` so it says there `"minecraftArguments": "",`.<br><br><br>
