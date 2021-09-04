#cloud-config
chpasswd:
  list: |
    root:f5twister!
    admin:f5twister!
  expire: False
tmos_declared:
  enabled: true
  icontrollx_trusted_sources: false
  icontrollx_package_urls:
    - "https://github.com/F5Networks/f5-declarative-onboarding/raw/master/dist/f5-declarative-onboarding-1.3.0-4.noarch.rpm"
    - "https://github.com/F5Networks/f5-appsvcs-extension/raw/master/dist/latest/f5-appsvcs-3.10.0-5.noarch.rpm"
    - "https://github.com/F5Networks/f5-telemetry-streaming/raw/master/dist/f5-telemetry-1.2.0-1.noarch.rpm"
  do_declaration:
    schemaVersion: 1.0.0
    class: Device
    async: true
    label: Cloudinit Onboarding
    Common:
      class: Tenant
      provisioningLevels:
        class: Provision
        ltm: nominal
        apm: nominal
       sslo: nominal 
      myLicense:
        class: License
        licenseType: regKey
        regKey: NIDIW-PVWYE-TBINJ-PJADP-YZAWSQI
      dnsServers:
        class: DNS
        nameServers:
          - 8.8.8.8
        search:
          - example.openstack.com
      ntpServers:
        class: NTP
        servers:
          - 0.pool.ntp.org
          - 1.pool.ntp.org
          - 2.pool.ntp.org
      internal:
        class: VLAN
        mtu: 1450
        interfaces:
          - name: 1.2
            tagged: false
      internal-self:
        class: SelfIp
        address: 10.0.5.9
        vlan: internal
        allowService: default
        trafficGroup: traffic-group-local-only
      external:
        class: VLAN
        mtu: 1450
        interfaces:
          - name: 1.3
            tagged: false
      external-self:
        class: SelfIp
        address: 10.0.2.180
        vlan: external
        allowService: none
        trafficGroup: traffic-group-local-only
      default:
        class: Route
        gw: 192.168.80.1
        network: default
        mtu: 1500
      dbvars:
        class: DbVariables
        ui.advisory.enabled: true
        ui.advisory.color: red
        ui.advisory.text: Welcome to SSL Orchestrator.
  post_onboard_enabled: true
  post_onboard_commands:
    - "echo 'curl -s http://monitors.internal.local/rebooted' >> /config/startup"
  