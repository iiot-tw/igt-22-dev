# IGT-22-DEV Quick Installation Guide
IGT-22-DEV is a special version of IGT-22 with pre-installed open source IoT platform agent, Thingsboard-gateway, as well as other frequently used packages, such as Docker CE and NodeRED. 

## Steps for first initialization

### [Steps to setup host network (Windows 10)](https://www.automation.iiot.tw/en/hardware/neousys-igt/setting-up-rndis-of-the-host-pc-for-igt-22-dev/)
1. Connect IGT-22-DEV with your host PC with an dual USB Type A cable, power on IGT-22-DEV, and wait for a while for IGT-22-DEV's initialization.
2. Run "devmgmt.msc" to open the Device Manager window, and check if IGT-22-DEV's RNDIS and serial appears. Please note that the numbering you see might be different.
3. Run "ncpa.cpl" to open the Network Connections window, and find the matching RNDIS interface, for example Ethernet 4 here, of IGT-22-DEV
4. Right click on the Ethernet 4 and then click Properties in the quick menu to open the Property window. And choose TCP/IPv4 and then click Properties button.
5. Manually set the IP address as 192.168.7.1 and Subnet mask as 255.255.255.252, and the click OK. The network configuration is done. Close all opened windows
6. Now you can try to log in to IGT-22-DEV using browsers visiting [http://192.168.7.2:9090](http://192.168.7.2:9090). If you see an unsafe browsing warning, it can be ignored. It's a local link between your host PC and IGT-22-DEV. Please refer to [IGT-2x manual](https://neousys-web-bucket.s3-us-west-1.amazonaws.com/manual/IGT-20_IGT-21-IoT_IIoT-Gateway-User-Manual.pdf) for username and password. After login, you can find a web-based Terminal at the left panel if you'd to try.

### Provision IGT-22-DEV on Thingsboard
1. Provision Device on demo.thingsboard.io: follow the [link](https://thingsboard.io/docs/getting-started-guides/helloworld/#step-1-provision-device) except that "Is gateway" has to be checked in step 3.
1. Get the credential: follow the first 2 steps at the [link](https://thingsboard.io/docs/getting-started-guides/helloworld/#step-2-connect-device). What has to be done is to "Copy access token".

### [Run the first initialization script](https://www.automation.iiot.tw/en/hardware/neousys-igt/running-the-first-initialization-script-on-igt-22-dev/)
1. Connect IGT-22-DEV with a LAN cable to a router with DHCP and out-bound connectivity. The hardware setup is self-contained and doesn’t really need an Ethernet network. However connecting IGT-22-DEV to the previously provisioned instance of IGT-22-DEV on Thingsboard requires the out-bound LAN connection.
2. Use a browser to visit http://192.168.7.2 and login. Please refer to [IGT-2x manual](https://neousys-web-bucket.s3-us-west-1.amazonaws.com/manual/IGT-20_IGT-21-IoT_IIoT-Gateway-User-Manual.pdf) for username and password.
3. After login, click Terminal on the left panel to start the web-based console. And you can see the command line prompt on the right.
4. Run the initialization script with the host address, shown in the blue rectangular, and the access token, shown in the red rectangular, in the step  Provisioning IGT-22-DEV on Thingsboard.
5. It will take a while to load NodeRED image, starting the container and other configuration.
6. After the initialization, the script will reboot IGT-22-DEV. And you’ll see on the web console that IGT-22-DEV is disconnected.
7. Wait for a while and click Reconnect button. You’ll see the login page again. IGT-22-DEV is now connected to Thingsboard.

### [Import IGT-22-DEV Demo Dashboard on Thingsboard](https://www.automation.iiot.tw/en/hardware/neousys-igt/import-igt-22-dev-demo-dashboard-on-thingsboard/)
1. Download the [json file](https://raw.githubusercontent.com/iiot-tw/igt-22-dev/main/igt_22_dev_dashboard.json) of the demo dashboard.
2. Follow the section "Dashboard import" of then instruction at the [link](https://thingsboard.io/docs/user-guide/ui/dashboards/)
3. Open the dashboard "IGT-22-DEV Dashboard" and click the pen icon at the bottom right to enter edit mode.
4. Click "Entity aliases" icon at the top menu to open Entity aliase window.
5. Click pen icon of "IGT-22-DEV" in the Entity aliase window, and select the matching device from the device drop down list.
6. Click pen icon of "IGT-22-DEV-TTYS2" in the Entity aliase window, and select the matching device from the device drop down list.
7. Click pen icon of "IGT-22-DEV-IO" in the Entity aliase window, and select the matching device from the device drop down list.
8. Click Save button to exit the Entity aliase window, and you should see the status of buttons on IGT-22-DEV. 
