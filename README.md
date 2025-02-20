# WinApps 

This is custom WinApps for my personal use 

this is a clone from https://github.com/winapps-org/winapps 

1. edited compose.yaml file Reduced the Cpu cores and Ram size 
2. changed the RDP ip 
3. changed the RDP username and Password 

there was some issues while running this so wrote a startup script start.sh 

## Starting Manually 

1. start the docker using 
    cd to that directory 

    ```docker compose up -d ```

2. Try to connect using xfreerdp

    ``` xfreerdp3 /u:"MyWindowsUser" /p:"MyWindowsPassword" /v:127.0.0.1 /cert:tofu ```

3. Run the setup.sh 

    here you will get some error if it is already installed so 
    uninstall the programs 
    ```./setup.sh --user --uninstall```

    now run the startup script 
    ```./setup.sh --user --setupAllOfficiallySupportedApps ```

this complete the process is you got any issues check the winapps official git repo 