const esbuild = require('esbuild');
const vuePlugin =  require("esbuild-plugin-vue3");

async function build() {
  try {
    const context = await esbuild.context({
      entryPoints: ["app/javascript/*.*"],
      bundle: true,
      sourcemap: true,
      outdir: "app/assets/builds",
      loader: {
        ".svg": "file",
        ".png": "file",
        ".jpg": "file"
      },
      minify: true,
      nodePaths: ["app/javascript/App"],
      publicPath: "/assets",
      assetNames: '[name]-[hash].digested',
      plugins: [vuePlugin()]
    });

    console.log("✨ Build succeeded.");

    context.watch();

    console.log("watching...");
  } catch (error) {
    console.error("❌ Build failed:", error);
    process.exit(1);
  }
}

build();
