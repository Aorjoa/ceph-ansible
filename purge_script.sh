for i in {1..2}; do ceph-deploy purge 192.168.4.$i; done
for i in {105..172}; do ceph-deploy purge 192.168.4.$i; done
for i in {1..2}; do ceph-deploy purgedata 192.168.4.$i; done
for i in {105..172}; do ceph-deploy purgedata 192.168.4.$i; done
ansible -m shell -a 'rm -rf "/var/lib/ceph/*" && rm -rf "/var/lib/ceph/.*" && rm -rf "~/.ansible/" && rm -rf "/etc/ceph/*"' -i ../clusterInventory 
