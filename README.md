# IGT-22-DEV Quick Installation Guide
IGT-22-DEV is a special version of IGT-22 with pre-installed open source IoT platform agent, Thingsboard-gateway, as well as other frequently used packages, such as Docker CE and NodeRED. 

## Steps for first initialization

### [Steps to setup host network (Windows 10)](https://www.automation.iiot.tw/en/hardware/neousys-igt/setting-up-rndis-of-the-host-pc-for-igt-22-dev/)
1. Connect IGT-22-DEV with your host PC with an dual USB Type A cable, power on IGT-22-DEV, and wait for a while for IGT-22-DEV's initialization.
2. Run "devmgmt.msc" to open the Device Manager window, and check if IGT-22-DEV's RNDIS and serial appears. Please note that the numbering you see might be different.
3. Run "ncpa.cpl" to open the Network Connections window, and find the matching RNDIS interface, for example Ethernet 4 here, of IGT-22-DEV
4. Right click on the Ethernet 4 and then click Properties in the quick menu to open the Property window. And choose TCP/IPv4 and then click Properties button.
5. Manually set the IP address as 192.168.7.1 and Subnet mask as 255.255.255.252, and the click OK. The network configuration is done. Close all opened windows
6. Now you can try to log in to IGT-22-DEV using browsers visiting [http://192.168.7.2:9090](http://192.168.7.2:9090). Please refer to [IGT-2x manual](https://neousys-web-bucket.s3-us-west-1.amazonaws.com/manual/IGT-20_IGT-21-IoT_IIoT-Gateway-User-Manual.pdf) for username and password. If you see an unsafe browsing warning, it can be ignored. It's a local link between your host PC and IGT-22-DEV. After login, you can find a web-based Terminal at the left panel if you'd to try.

### Provision IGT-22-DEV on Thingsboard
1. Provision Device on demo.thingsboard.io: follow the [link](https://thingsboard.io/docs/getting-started-guides/helloworld/#step-1-provision-device) except that "Is gateway" has to be checked in step 3.
1. Get the credential: follow the first 2 steps at the [link](https://thingsboard.io/docs/getting-started-guides/helloworld/#step-2-connect-device). What has to be done is to "Copy access token".

### Run the first initialization script
