{pkgs, ...}: {
  # https://devenv.sh/packages/
  packages = [pkgs.git pkgs.bun];

  # https://devenv.sh/languages/
  languages.typescript.enable = true;

  # https://devenv.sh/scripts/
  scripts.hello.exec = ''
    echo Welcome to epochalypse telegram devenv!
  '';

  # https://devenv.sh/basics/
  enterShell = ''
    hello         # Run scripts directly
    git --version # Use packages
  '';

  # https://devenv.sh/tasks/
  tasks = {
    "epochalypse:run" = {
      exec = "bun run src/single-run/index.ts";
      execIfModified = [
        "src/single-run/*.ts"
        "src/*.ts"
        "*.json"
      ];
    };
    "epochalypse:multirun" = {
      exec = "bun run src/multi-run/index.ts";
      execIfModified = [
        "src/multi-run/*.ts"
        "src/*.ts"
        "*.json"
      ];
    };
  };

  # https://devenv.sh/git-hooks/
  git-hooks.hooks.eslint.enable = true;
}
