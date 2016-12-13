# Audio Style Transfer

This is a TensorFlow reimplementation of [Vadim's Lasagne code](https://github.com/vadim-v-lebedev/audio_style_tranfer) for style transfer algorithm for audio, which uses convolutions with random weights to represent audio features.

### Dependencies
- python (tested with 2.7)
- TensorFlow ([installation instructions](https://www.tensorflow.org/get_started/os_setup))
- librosa
```
pip install librosa
```
- numpy and matplotlib

The easiest way to install python is to use [Anaconda](https://www.continuum.io/downloads).

### How to run
- Open `neural-style-audio-tf.ipynb` in Jupyter.
- In case you want to use your own audio files as inputs, first cut them to 10s length with:
```
ffmpeg -i yourfile.mp3 -ss 00:00:00 -t 10 yourfile_10s.mp3
```
- Set `CONTENT_FILENAME` and `STYLE_FILENAME` in the third cell of Jupyter notebook to your input files.
- Run all cells.

The most frequent problem is domination of either content or style in the output. To fight this problem, adjust `ALPHA` parameter. Larger `ALPHA` means more content in the output, and `ALPHA=0` means no content, which reduces stylization to texture generation. Example output `outputs/imperial_usa.wav`, the result of mixing content of imperial march from star wars with style of U.S. National Anthem, was obtained with default value `ALPHA=1e-2`.

### References
- Original paper on style transfer:
[A Neural Algorithm of Artistic Style](https://arxiv.org/abs/1508.06576)
- [Style transfer implementation in lasagne recipes](https://github.com/Lasagne/Recipes/blob/master/examples/styletransfer/Art%20Style%20Transfer.ipynb)
- Publications on texture generation with random convolutions:
 - [Extreme Style Machines](https://nucl.ai/blog/extreme-style-machines/)
 - [Texture Synthesis Using Shallow Convolutional Networks with Random Filters](https://arxiv.org/abs/1606.00021)
 - [A Powerful Generative Model Using Random Weights for the Deep Image Representation](https://arxiv.org/pdf/1606.04801)
