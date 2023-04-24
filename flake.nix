{
  description = "A Haskell project";

  inputs.hix.url = "github:tek/hix?ref=0.5.1";

  outputs = {hix, ...}: hix.lib.flake {
    hackage.versionFile = "ops/version.nix";

    cabal = {
      license = "BSD-2-Clause-Patent";
      license-file = "LICENSE";
      author = "HristoKoshev";
      ghc-options = ["-Wall"];
    };

    packages.event-source-example = {
      src = ./.;
      cabal.meta.synopsis = "A Haskell project";

      library = {
        enable = true;
        dependencies = [
          "containers"
        ];
      };

      executable.enable = true;

      test = {
        enable = true;
        dependencies = [
          "hedgehog >= 1.1 && < 1.3"
          "tasty ^>= 1.4"
          "tasty-hedgehog >= 1.3 && < 1.5"
        ];
      };

    };
  };
}
