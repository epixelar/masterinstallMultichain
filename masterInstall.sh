    #Dev by Shamuel Perez to Multichain Users
    sed -i 's/\r$//' masterInstall.sh
    echo "Downloading MultiChian...";
    cd ~
    git clone https://github.com/MultiChain/multichain.git
    echo "Downloading dependencies...";
    sudo apt-get --yes --force-yes install software-properties-common python-software-properties
    sudo apt-get update
    sudo apt-get --yes --force-yes install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
    sudo apt-get --yes --force-yes install g++-mingw-w64-i686 mingw-w64-i686-dev g++-mingw-w64-x86-64 mingw-w64-x86-64-dev curl
    sudo apt-get --yes --force-yes install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
    sudo apt-get --yes --force-yes install git
    sudo add-apt-repository ppa:bitcoin/bitcoin -y
    sudo apt-get update
    sudo apt-get --yes --force-yes install libdb4.8-dev libdb4.8++-dev
    echo "Dependencies installed successfully...";
    chmod -R 777 multichain
    cd multichain
    echo "Compilation start";
    ./autogen.sh
    ./configure
    make
    echo "End of compilation";
    
    echo "Start copying";
    sudo cp src/multichaind /usr/local/bin;
    sudo cp src/multichain-cli /usr/local/bin;
    sudo cp src/multichain-util /usr/local/bin;
    echo "End! Maybe you want to start with multichain-util create chain :)";
    #Dev by Shamuel Perez to Multichain Users
