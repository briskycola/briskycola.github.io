let
    pkgs = import <nixpkgs> {};
in
    pkgs.mkShell {

        packages = with pkgs; [
            quarto
            # Texlive is needed for rendering/output to pdf
            # texlive.combined.scheme-full
            ];
        QUARTO_PANDOC = "${pkgs.pandoc}/bin/pandoc";
    }
