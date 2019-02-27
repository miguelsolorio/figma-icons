workflow "New workflow" {
  on = "push"
  resolves = ["Export SVG from Figma"]
}

action "Export SVG from Figma" {
  uses = "primer/figma-action@v1.0.0-alpha.2"
  args = "[\"format=svg\",\"outputDir=./build\"]"
  secrets = ["FIGMA_TOKEN"]
  env = {
    FIGMA_FILE_URL = "https://www.figma.com/file/gUQD2uwk3vKE4cmLt2yJi0Kt/Figma-Actions-Demo"
  }
}
