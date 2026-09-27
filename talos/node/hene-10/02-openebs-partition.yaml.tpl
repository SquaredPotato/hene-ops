---
apiVersion: v1alpha1
kind: UserVolumeConfig
name: openebs-data
volumeType: partition
provisioning:
  diskSelector:
    match: {{ .Node.Data.openEBSDiskSelector }}
  maxSize: 50GiB
filesystem:
  type: xfs
#---
#machine:
#  kubelet:
#    extraMounts:
#      - destination: /var/mnt/openebs-data
#        type: bind
#        source: /var/mnt/openebs-data
#        options:
#          - bind
#          - rshared
#          - rw
