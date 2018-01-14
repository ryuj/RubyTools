from = [
  "Icon-App-20x20@1x.png",
  "Icon-App-20x20@2x.png",
  "Icon-App-20x20@2x.png",
  "Icon-App-20x20@3x.png",
  "Icon-App-29x29@1x.png",
  "Icon-App-29x29@2x.png",
  "Icon-App-29x29@2x.png",
  "Icon-App-29x29@3x.png",
  "Icon-App-40x40@1x.png",
  "Icon-App-40x40@2x.png",
  "Icon-App-40x40@2x.png",
  "Icon-App-40x40@3x.png",
  "Icon-App-60x60@2x.png",
  "Icon-App-60x60@3x.png",
  "Icon-App-76x76@1x.png",
  "Icon-App-76x76@2x.png",
  "Icon-App-83.5x83.5@2x.png",
]

to = [
  "Icon-App-20x20@1x.png",
  "Icon-App-20x20@2x.png",
  "Icon-App-20x20@2x-1.png",
  "Icon-App-20x20@3x.png",
  "Icon-App-29x29@1x.png",
  "Icon-App-29x29@2x.png",
  "Icon-App-29x29@2x-1.png",
  "Icon-App-29x29@3x.png",
  "Icon-App-40x40@1x.png",
  "Icon-App-40x40@2x.png",
  "Icon-App-40x40@2x-1.png",
  "Icon-App-40x40@3x.png",
  "Icon-App-60x60@2x.png",
  "Icon-App-60x60@3x.png",
  "Icon-App-76x76@1x.png",
  "Icon-App-76x76@2x.png",
  "Icon-App-83.5x83.5@2x.png",
]

dir = "tmp"
cmd = "mkdir #{dir}"
system cmd

from.each_index { |i|
	cmd = "cp AppIcon.appiconset/#{from[i]} #{dir}/#{to[i]}"
	system cmd
}

file = "iTunesArtwork@2x.png"
cmd = "cp #{file} #{dir}/#{file}"
system cmd
