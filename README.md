# Binwalk in a Docker

Binwalk in a Docker for the Hackthebox Hardware challenge The Needle  

## Running the Binwalk Program

docker run -it --rm -v "$(pwd):/binwalk" mike/binwalk [binwalk variables] [Target Filename]  

Example of execution:  

```code
docker run -it --rm -v "$(pwd):/binwalk" mike/binwalk -Mre firmware.bin
```

---
<!-- Pit i Collons -->
![Coded In Barcelona](https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/currentfooter.png)