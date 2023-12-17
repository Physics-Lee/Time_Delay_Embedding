# Tutorial

Just move to some `script.m` and hit `run`.



# Result

Original Lorenz

<img src="README.assets/1.png" alt="1" style="zoom:50%;" />

Reconstructed Lorenz

![image-20231217163211312](README.assets/image-20231217163211312.png)

Original HH

<img src="README.assets/original.png" alt="original" style="zoom:50%;" />

Reconstructed HH

<img src="README.assets/image-20231217163451484.png" alt="image-20231217163451484" style="zoom:50%;" />



# THINK

The time delay embedding is suitable for deterministic process, not stochastic process.

For example, below are all deterministic process, which this method succeeds in.

* Lorenz
* HH
* perfect circle

For example, below are all stochastic process, which this method fails on.

* $\theta$
* perfect Poisson process
* White Noise Process
