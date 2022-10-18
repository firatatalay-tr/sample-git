
function firat(){
    # Get username
    echo "Username: $(whoami)"

    # Get hostname
    echo "Hostname: $(uname -n)"

    # Dump network stats
    echo "----- ------------------------------ -----"
    ifconfig
    echo "-----  --------------------------------- -----"

    # Get available memory status
    cat /proc/meminfo | grep Free

    # Dump available disk spaces for each mountpoint
    echo "----- ---------------------------------------------- -----"
    df -lh --output=source,fstype,avail,target
    echo "-----  -----------------------------------------  -----"

    # Get current working directory
    pwd

    # Get all running processes (includes system ones)
    echo "----- -------------------------------------- -----"
    ps -A
    echo "----- ------------------------------------  -----"

    # Get network stats - DEPENDS ON `net-tools`!
    echo "----- ----------------------------- -----"
    netstat
    echo "----- -----------------------------  -----"
}

firat > client-device-information.txt
