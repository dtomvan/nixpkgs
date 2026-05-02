import ./generic.nix {
  hash = "sha256-7s2gc+78O8jKypVe1itaUrsLPa2mLjNgUUrR/cv7ITA=";
  version = "7.0.0";
  vendorHash = "sha256-6irMB3hpWcxDuMQBxWXnhMLAOwTAl63JX6JJZMQXf5E=";
  patches = fetchpatch2: [
    # doc/devices/disk: Fix broken link
    (fetchpatch2 {
      url = "https://github.com/lxc/incus/commit/faa636b70c05a5cca0346492a0586d5747e4b117.patch";
      hash = "sha256-2CZTagbO3/lsc26vGMn17aSGXECz/1OgtOjbDktwWNo=";
    })
    # incusd/instance/qemu: Fix version detection for qemu-kvm
    (fetchpatch2 {
      url = "https://github.com/lxc/incus/commit/a5f50d36eaa41580f2233b05936bd29fe1b15100.patch";
      hash = "sha256-dg65AVQ8ErzrxgoKumFXM+/9ULNN1/kiBOnn0mdtwbM=";
    })
    # incusd: Re-introduce core scheduling detection
    (fetchpatch2 {
      url = "https://github.com/lxc/incus/commit/1e6ce18e8cd92b5b3eb4346e7bd27fd4a7d1fb9b.patch";
      hash = "sha256-3gpI3oiNN9SicS2oYgWP+SZPtUbSpfB/m3NqGmhIvKw=";
    })
    # incusd/instance/lxc: Fix swap=false failure
    (fetchpatch2 {
      url = "https://github.com/lxc/incus/commit/5f2cdf7545c5398290dc507313de9ee547fe803f.patch";
      hash = "sha256-+Dcp5uYyGLGDjgxGd/pMZMc07MA6GU/bnIPTW3yfb4Q=";
    })
  ];
  nixUpdateExtraArgs = [
    "--override-filename=pkgs/by-name/in/incus/package.nix"
  ];
}
