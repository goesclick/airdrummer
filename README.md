# airdrummer
Use your iOS device as a drumstick.

## 1. Project Goals

- Reads the accelerometer and gyroscope of your device to determine velocity. 
- Keep track of timing and "hits" as you walk down the street "air drumming" with your phone.
- Export hits to midi clips for use in a DAW.


## 1. Technical Details

User will 'tare' the device by holding it level (parallel to the ground). This will create an equator to register the hits. If the device passes below the equator, moving downwards, a hit is registered. (The up is logged, but not counted as a "hit"). The delta between when the device last passed through the equitorial line will allow us to calculate the velocity from hit to hit, while still ignoring the "up" ticks. 

Each position is stored as an immutable [x,y,z] Vector, for history's sake and later retrieval (for exporing to midi and whatnot).
