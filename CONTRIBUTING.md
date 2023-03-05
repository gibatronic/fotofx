# Contributing

## Debbuging

Videos generated with the `--debug` flag will have context information overlaid in the output video:

[`config/debug.txt`](./config/debug.txt)

* `{{easing_name}}` `str` Name of the easing function
* `{{effect_name}}` `str` Name of the effect behavior
* `{{frames}}` `int` Output video frame count

## Easings

[`config/easings.txt`](./config/easings.txt)
<br>
`<name> <function>\n`

  * `<name>` No spaces allowed
  * `<function>` [ffmpeg functions](https://ffmpeg.org/ffmpeg-utils.html#Expression-Evaluation), variables:
    * `{{frames}}` `int` Output video frame count

## Effects

[`config/effects.txt`](./config/effects.txt)
<br>
`<name> <behavior>\n`

  * `<name>` No spaces allowed
  * `<behavior>` [ffmped filter](https://ffmpeg.org/ffmpeg-filters.html), variables:
    * `{{duration}}` `int` Output video length
    * `{{ease}}` `str` Easing function
    * `{{fps}}` `int` Output video frames per second
    * `{{frames}}` `int` Output video frame count
    * `{{width}}` `int` Output video width
    * `{{height}}` `int` Output video height
    * `{{zoom}}` `float` Zoom target, only for `zoom-in` and `zoom-out` effects
