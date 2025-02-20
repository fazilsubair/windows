# WinApps 

This is custom WinApps for my personal use 

this is a clone from https://github.com/winapps-org/winapps 

1. edited compose.yaml file Reduced the Cpu cores and Ram size 
2. changed the RDP ip 
3. changed the RDP username and Password 
 

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

this complete the process is you got any issues check the winapps official git repos 
## Start script 

I have automated the starup process though the `start.sh` script 

just run this and enjoy

## Initial Install 

I have changed the windows version , I am using custom iso because that is faster to install 

To change that you have to make some changes in the compose.yaml file 

1. change the verison to 
    ```
    VERSION: "/home/fazil/windows/data/custom.iso"
    ```
2. add path to volumes
    ```
    volumes:
        - /home/fazil/windows/data/custom.iso:/custom.iso
    ```

PS: i was using a windows 11 iso but inorder for this to work you need to rename the iso to `custom.iso` 
due to large size i have igoned the file in this git but it is in data folder

3. changed the RAM and CPU_Cores to 2 
4. changed restart to no (because it was taking too much resources while not using)