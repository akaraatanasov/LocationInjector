# LocationInjector

This project purpose is to simulate a running/driving GPS session

## Getting Started

These instructions will get you a copy of the project up and running on your local machine.

1. Open [GPSies Track Builder](http://www.gpsies.com/createTrack.do)
2. Add coordinate points on the map
3. Find the "Export file" section, select GPX Track and download the file
4. This .gpx file must be converted to the Apple .gpx format or it will not be read. You must convert it first:
* Copy the file "adjust_gpx_to_apple_format.awk" from "GPXtoAppleGPXconverterScript" in the same directory you downloaded the .gpx file
* Open Terminal and navigate to the abovementioned directory
* Enter the following command and replace "source-file" with the filename of the downloaded file and "output-file" with the resulting file name:

```
awk -f adjust_gpx_to_apple_format.awk "source-file" > "output-file"
```
Example: 
```
awk -f adjust_gpx_to_apple_format.awk Office-Motortrack-Office-10kmh-original.gpx > Office-Motortrack-Office-10kmh-converted.gpx
```

5. Open "LocationInjector.xcodeproj" file from "LocationInjector" directory
6. Import your converted file in the GPX Files folder (preferably)
7. Run the app on the same device/simulator you want to simulate GPS movement
8. Select the location arrow button in the debugger bar (it's right next to the App name on the left side)

  ![alt text](https://image.ibb.co/dyAsxp/Screen_Shot_2018_08_28_at_11_45_33.png)

9. Select the file you just imported
10. Press the Home button on your device/simulator and then open the app you want to test

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* [How To Simulate GPS Movement in iOS](https://medium.com/@augusteo/how-to-simulate-gps-movement-in-ios-cca61907df2c) - The tutorial I followed
* [Amit Palomo GPX Conversion script](https://gist.github.com/scotbond/8a61cf1f4a43973e570b) - Original .gpx conversion script
