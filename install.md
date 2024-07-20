## **Pyenv-win zip**

Manual installation steps for pyenv-win

If you are using PowerShell or Git Bash use `$HOME` instead of `%USERPROFILE%`

1. Download [pyenv-win.zip](https://github.com/pyenv-win/pyenv-win/archive/master.zip)

2. Create a `.pyenv` directory using command prompt `mkdir $HOME/.pyenv` if not exist

3. Extract and move files to `$HOME\.pyenv\` or use this commend:

```pwsh
  $zipFile = "C:\Users\Max\Desktop\AI Leacture\python_setup\pyenv-win-master.zip"
  $destination = "$HOME\.pyenv\"
  Expand-Archive -Path $zipFile -DestinationPath $destination
```

1. Ensure there is a `bin` folder under `$HOME\.pyenv\pyenv-win`

steps to [add System Settings](#add-system-settings)

_Note:_ Don't forget the check above link, it contains final steps to complete.

Installation is complete!

## **Add System Settings**

It's a easy way to use PowerShell here

1. Adding PYENV, PYENV_HOME and PYENV_ROOT to your Environment Variables

   ```pwsh
   [System.Environment]::SetEnvironmentVariable('PYENV',$env:HOME + "\.pyenv\pyenv-win\","User")

   [System.Environment]::SetEnvironmentVariable('PYENV_ROOT',$env:HOME + "\.pyenv\pyenv-win\","User")

   [System.Environment]::SetEnvironmentVariable('PYENV_HOME',$env:HOME + "\.pyenv\pyenv-win\","User")
   ```

2. Now adding the following paths to your USER PATH variable in order to access the pyenv command

   ```pwsh
   [System.Environment]::SetEnvironmentVariable('path', $env:HOME + "\.pyenv\pyenv-win\bin;" + $env:HOME + "\.pyenv\pyenv-win\shims;" + [System.Environment]::GetEnvironmentVariable('path', "User"),"User")
   ```

If for some reason you cannot execute PowerShell command(likely on an organization managed device), type "environment variables for you account" in Windows search bar and open Environment Variables dialog.
You will need create those 3 new variables in User Variables section(top half). Let's assume username is `my_pc`.
|Variable|Value|
|---|---|
|PYENV|C:\Users\my_pc\\.pyenv\pyenv-win\
|PYENV_HOME|C:\Users\my_pc\\.pyenv\pyenv-win\
|PYENV_ROOT|C:\Users\my_pc\\.pyenv\pyenv-win\

And add two more lines to user variable `Path`.

```
C:\Users\my_pc\.pyenv\pyenv-win\bin
C:\Users\my_pc\.pyenv\pyenv-win\shims
```

Installation is done. Hurray!
Return to [README](../README.md#installation)

---

## pyenv-virtualenv

install first the plugin:
`git clone https://github.com/pyenv/pyenv-virtualenv.git  $env:USERPROFILE/$env:PYENV_ROOT/plugins/pyenv-virtualenv`

- Create virtual environment
  $ `pyenv virtualenv 3.7.3 my-env`

- Activate virtual environment
  $ `pyenv activate my-env`

- Exit virtual environment
  (my-env)$ `pyenv deactivate`
