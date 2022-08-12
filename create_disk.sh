
#findout the disk name using the following command
lsblk -o NAME,HCTL,SIZE,MOUNTPOINT | grep -i "sd"

#create the disk(only if new disk)
sudo parted /dev/sdd --script mklabel gpt mkpart xfspart xfs 0% 100%
sudo mkfs.xfs /dev/sdd1
sudo partprobe /dev/sdd1


#create a new mount point
sudo mkdir /datadrive4T

#mount the disk
sudo mount /dev/sdd1 /datadrive4T

