{
  description = "My Curriculum Vitate flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    typix = {
      url = "github:loqusion/typix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-utils.url = "github:numtide/flake-utils";

    git-hooks.url = "github:cachix/git-hooks.nix";

    # Example of downloading icons from a non-flake source
    # font-awesome = {
    #   url = "github:FortAwesome/Font-Awesome";
    #   flake = false;
    # };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    typix,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};

      typixLib = typix.lib.${system};

      src = typixLib.cleanTypstSource ./.;
      commonArgs = {
        typstSource = "main.typ";

        fontPaths = with pkgs; [
          # Add paths to fonts here
          # "${pkgs.roboto}/share/fonts/truetype"
          roboto
          source-sans-pro
          font-awesome
          typstPackages.fontawesome
        ];

        virtualPaths = [
          # Add paths that must be locally accessible to typst here
          # {
          #   dest = "icons";
          #   src = "${inputs.font-awesome}/svgs/regular";
          # }
        ];
      };

      unstable_typstPackages = [
        {
          name = "basic-resume";
          version = "0.2.9";
          hash = "sha256-PYGzfttkA+hgeF4NRzAiGujI39PqbCAU9Ub+U+/vCb0=";
        }
        {
          name = "scienceicons";
          version = "0.1.0";
          hash = "sha256-gDj/8uaTypGJ8P5w88+uLY6zCBHySTXL/e1S+1iq/mY=";
        }
      ];

      # Compile a Typst project, *without* copying the result
      # to the current directory
      build-drv = typixLib.buildTypstProject (commonArgs
        // {
          inherit src unstable_typstPackages;
        });

      # Compile a Typst project, and then copy the result
      # to the current directory
      build-script = typixLib.buildTypstProjectLocal (commonArgs
        // {
          inherit src unstable_typstPackages;
        });

      # Watch a project and recompile on changes
      watch-script = typixLib.watchTypstProject commonArgs;
    in {
      checks = {
        inherit build-drv build-script watch-script;

        pre-commit-check = inputs.git-hooks.lib.${system}.run {
          src = ./.;
          hooks = {
            alejandra.enable = true;
            typstyle.enable = true;
            yamllint.enable = true;
          };
        };
      };

      packages.default = build-drv;

      apps = rec {
        default = watch;
        build = flake-utils.lib.mkApp {
          drv = build-script;
        };
        watch = flake-utils.lib.mkApp {
          drv = watch-script;
        };
      };

      devShells.default = typixLib.devShell {
        inherit (self.checks.${system}.pre-commit-check) shellHook enabledPackages;
        inherit (commonArgs) fontPaths virtualPaths;
        packages = [
          # WARNING: Don't run `typst-build` directly, instead use `nix run .#build`
          # See https://github.com/loqusion/typix/issues/2
          # build-script
          watch-script
          # More packages can be added here, like typstfmt
          # pkgs.typstfmt
        ];
      };
    });
}
