# michael-dockerfiles

Incubator for various docker containers.

bin/build.sh IMAGE_NAME - builds image
bin/publish.sh IMAGE_NAME - publishes image to my DockerHub

##michae1t/sys##

Basic dev env bootstrap from [michael bootstrap][1] for pretesting against new versions of Fedora.

Includes targets for incrementally updating various components.

###michae1t/openvpn###

Simple OpenVPN container.

Note: Mount keys volume to /etc/openvpn/keys naming the keys by "server".

###michae1t/pptp###

Simple PPTP container based on Poptop.

Note: Mount volume with chap-secrets to "/etc/creds".

##openvpn-tor-gateway##

Moved to [openvpn-tor-gateway][2].

[1]: https://github.com/michae1T/michael-bootstrap
[2]: https://github.com/michae1T/openvpn-tor-gateway

