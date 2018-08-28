This project purpose is to simulate a running/driving GPS session.

How to use:
1. Open http://www.gpsies.com/createTrack.do
2. Add coordinate points on the map
3. Find the "Export file" section, select GPX Track and download the file
4. This .gpx file must be converted to the Apple .gpx format or it will not be read. You must convert it first
4.1. Copy the file "adjust_gpx_to_apple_format.awk" from "GPXtoAppleGPXconverterScript" in the same directory you downloaded the .gpx file
4.2. Open Terminal and navigate to the abovementioned directory
4.3. Enter the following command and replace "source-file" with the filename of the downloaded file and "output-file" with the resulting file name:

awk -f adjust_gpx_to_apple_format.awk "source-file" > "output-file"

Example: awk -f adjust_gpx_to_apple_format.awk Office-Motortrack-Office-10kmh-original.gpx > Office-Motortrack-Office-10kmh-converted.gpx

5. Open "LocationInjector.xcodeproj" file from "LocationInjector" directory
6. Import your converted file in the GPX Files folder (preferably)
7. Run the app on the same device/simulator you want to simulate the running session
8. Select the location arrow button in the debugger bar (it's right next to the App name on the left side)
9. Select the file you just imported
10. Press the Home button on your device/simulator and then open the app you want to test
