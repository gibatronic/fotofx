# fotofx

Create videos using effects to animate still images with [ffmpeg](https://ffmpeg.org/).

## Example

Take `photo.jpg` and slide it to the left for 10s to create the `photofx.mp4` video:

```shell
fotofx \
    --duration 10 \
    --effect slide-left \
    --ease in-out-sine \
    --image photo.jpg \
    --video photofx.mp4 \
    --quiet \
    --width 1080 \
    --height 1920
```

| `photo.jpg` | `photofx.mp4` |
| ----------- | ------------- |
| <img src="https://user-images.githubusercontent.com/819643/216456274-57a4e419-c025-414e-8afd-4658b3f1dd78.jpg" width="594" height="384"> | <video src="https://user-images.githubusercontent.com/819643/216456319-51ea64e1-8807-477a-83f3-676a315656be.mp4" width="270" height="480"></video> |
