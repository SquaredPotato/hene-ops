---
apiVersion: v1alpha1
kind: RawVolumeConfig
name: longhorn-data
provisioning:
  diskSelector:
    match: {{ .Node.Data.longhornDiskSelector }}
  maxSize: 450GiB
#---
#machine:
#  kubelet:
#    extraMounts:
#      - destination: /var/lib/longhorn
#        type: bind
#        source: /var/lib/longhorn
#        options:
#          - bind
#          - rshared
#          - rw
