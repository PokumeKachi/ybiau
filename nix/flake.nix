{
    description = "ybiau dependencies";
    inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    outputs =
        { self, nixpkgs }:
        let
            systems = [ "x86_64-linux" ];
            forAllSystems = nixpkgs.lib.genAttrs systems;

            perSystem =
                system:
                let
                    pkgs = import nixpkgs { inherit system; };
                    libs = with pkgs; [
                    ];
                    buildTools = with pkgs; [
                        zk

                        tectonic

                        imagemagick
                        librsvg

                        nodejs
                        yarn

                        taskwarrior-tui
                        gitui

                        texliveSmall
                        texlivePackages.latexmk

                        vivify

                        just
                    ];
                    common = {
                        buildInputs = libs;
                        nativeBuildInputs = buildTools;
                    };
                in
                {
                    inherit
                        pkgs
                        libs
                        buildTools
                        common
                        ;
                };
        in
        {
            devShells = forAllSystems (
                system:
                let
                    ps = perSystem system;
                in
                {
                    default = ps.pkgs.mkShell (
                        ps.common
                        // {
                            shellHook = ''
                                export SHELL=${ps.pkgs.bashInteractive}/bin/bash
                                export LD_LIBRARY_PATH=${ps.pkgs.lib.makeLibraryPath ps.libs}:$LD_LIBRARY_PATH
                            '';
                        }
                    );
                }
            );
        };
}
