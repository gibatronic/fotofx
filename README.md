# _fotofx :sparkles:_

Create videos using effects to animate still images with [ffmpeg](https://ffmpeg.org/)

## _usage_

:exclamation: [ffmpeg](https://ffmpeg.org/) must be installed apart

Get `fotofx` via [npm](https://www.npmjs.com/package/fotofx):

```sh
npm i -g fotofx
```

Then yell for help:

```sh
fotofx -h
```

## _example_

Take `photo.jpg` and slide it to the left for 10s to create the `photofx.mp4` video:

```sh
fotofx \
    --duration 10 \
    --effect slide-left \
    --ease in-out-sine \
    --image photo.jpg \
    --video photofx.mp4 \
    --width 1080 \
    --height 1920
```

| `photo.jpg` | `photofx.mp4` |
| :---------: | :-----------: |
| <img src="https://user-images.githubusercontent.com/819643/216456274-57a4e419-c025-414e-8afd-4658b3f1dd78.jpg" width="70%"><br>[@gibatronic](https://www.instagram.com/p/CnRRkmeK5Rp/) | <video src="https://user-images.githubusercontent.com/819643/216456319-51ea64e1-8807-477a-83f3-676a315656be.mp4" width="100%"></video> |

## _test_

There's a handy script to create a video for each effect using [test-image.jpg](test/test-image.jpg):

```sh
# clone the project
git clone https://github.com/gibatronic/fotofx.git && cd fotofx

# install dependencies
npm i

# create a video for each effect
npm test && open test/videos
```
