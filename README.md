# IGT-22-DEV Quick Installation Guide
IGT-22-DEV is a special version of IGT-22 with pre-installed open source IoT platform agent, Thingsboard-gateway, as well as other frequently used packages, such as Docker CE and NodeRED. 

## Steps for first initialization

### Steps to setup host network (Windows 10)
1. Connect IGT-22-DEV with your host PC with an dual USB Type A cable, power on IGT-22-DEV, and wait for a while for IGT-22-DEV's initialization.
2. Run "devmgmt.msc" to open the Device Manager window, and check if IGT-22-DEV's RNDIS and serial appears. Please note that the numbering you see might be different. [<img src="https://docs.google.com/uc?id=1cs9C6dFQUZMf_di7a687vgyc6j7VhUvs&amp;export=download">](http://google.com.au/)
3. Please refer to [IGT-2x manual](https://neousys-web-bucket.s3-us-west-1.amazonaws.com/manual/IGT-20_IGT-21-IoT_IIoT-Gateway-User-Manual.pdf) for configure Ethernet of RNDIS
4. Log in to IGT-22-DEV using browsers visiting [http://192.168.7.2:9090](http://192.168.7.2:9090). Please refer to [IGT-2x manual](https://neousys-web-bucket.s3-us-west-1.amazonaws.com/manual/IGT-20_IGT-21-IoT_IIoT-Gateway-User-Manual.pdf) for username and password. After login, click on Terminal at the left panel.

### Provision IGT-22-DEV on Thingsboard
1. Provision Device on demo.thingsboard.io: follow the [link](https://thingsboard.io/docs/getting-started-guides/helloworld/#step-1-provision-device) except that "Is gateway" has to be checked in step 3.
1. Get the credential: follow the first 2 steps at the [link](https://thingsboard.io/docs/getting-started-guides/helloworld/#step-2-connect-device). What has to be done is to "Copy access token".

### Run the first initialization script
