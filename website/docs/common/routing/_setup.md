## Lab Setup

  * We will be using a virtual machine in the [faculty's cloud](http://cloud.grid.pub.ro/).
  * When creating a virtual machine in the Launch Instance window:
    * Name your VM using the following convention: `scgc_lab<no>_<username>`,
where `<no>` is the lab number and `<username>` is your institutional account.
    * Select **Boot from image** in **Instance Boot Source** section
    * Select **SCGC Template** in **Image Name** section
    * Select a flavor that is at least **m1.large**.
  * The username for connecting to the VM is `student`.
  * For the following exercises, the resources can be found in the laboratory archive:

```shell-session
$ cd work/
$ wget https://repository.grid.pub.ro/cs/scgc/laboratoare/lab-routing.zip
$ unzip lab-cert.zip
$ bash runvm.sh
```

:::warning
Also run the following command in you current shell, or close and reopen the shell.

```shell-session
$ source ~/.bashrc
```
:::
