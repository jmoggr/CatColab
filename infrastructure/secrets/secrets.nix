let
  catcolab = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPyxORhhfO+9F2hQZ3I/EiSpfg+caWpG6c8AuG5u1XtK root@ip-172-31-14-38.us-east-2.compute.internal";
  catcolab-next = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIH9P3t2Y6k5Jrwbd2XRyV0ok0BHmyHFfL+E62Qu/pVm+ root@ip-172-31-80-32.ec2.internal";
  owen = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF2sBTuqGoEXRWpBRqTBwZZPDdLGGJ0GQcuX5dfIZKb4 o@red-special";
  epatters = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAKXx6wMJSeYKCHNmbyR803RQ72uto9uYsHhAPPWNl2D evan@epatters.org";
  jmoggr = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMiaHaeJ5PQL0mka/lY1yGXIs/bDK85uY1O3mLySnwHd j@jmoggr.com";
in
builtins.mapAttrs (_: publicKeys: { inherit publicKeys; }) ({
  ".env.next.age" = [
    catcolab-next
    owen
    epatters
    jmoggr
  ];
  ".env.prod.age" = [
    catcolab
    owen
    epatters
  ];
  "rclone.conf.age" = [
    catcolab
    owen
    epatters
  ];
})
