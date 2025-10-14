import lume from "lume/mod.ts";
import me from "me/mod.ts";

const site = lume({
  server: {
    debugBar: false,
  },
  watcher: {
    debounce: 10,
    ignore: [
      "./.vscode/",
      "./dotfiles/",
      "./raycast/",
      "./vscode/",
      "./README.md",
      "./TEMPLATE.md",
      (path: string) => path.endsWith(".sh"),
    ],
  },
  dest: ".output",
});

site.use(me());

// Add additional content to the root of the output
site.add("assets/.nojekyll", ".nojekyll");
site.add("assets", ".");

export default site;
