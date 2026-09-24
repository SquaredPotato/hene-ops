---
apiVersion: v1alpha1
kind: RawVolumeConfig
name: longhorn-data
provisioning:
  diskSelector:
    match: {{ .Node.Data.longhornDiskSelector }}
  maxSize: 150GiB
---
apiVersion: v1alpha1
kind: KubeletConfig
config:
  extraMounts:
    - destination: /var/lib/longhorn
      type: bind
      source: /var/lib/longhorn
      options:
        - bind
        - rshared
        - rw
