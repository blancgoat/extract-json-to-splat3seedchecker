# extract-json-to-splat3seedchecker

## Prerequisites
**Docker Required**  
   - If you haven't installed Docker yet, please install it first.  

## How to
1. **Download the Nintendo Switch Online APK**  
   - Get the APK file from APKMirror: [Nintendo Switch Online - APKMirror](https://www.apkmirror.com/apk/nintendo-co-ltd/nintendo-switch-online/)
   - Place the downloaded .apkm file in the `apkm` folder.
   - ‼️Please rename the downloaded file to `nintendo.apkm`‼️

2. **Start the Docker Container**  
   ```sh
   docker-compose up -d
   ```

3. **Access the Web Interface**
    - Open http://localhost:6080 in your browser.
    - Click connect button to connect to vnc.
    - Wait for the Nintendo Switch Online application to launch. (automatic launch, please wait)

4. **Log in Nintendo Account and Join Splatoon 3 Game-Specific Services**
   - ![image](https://github.com/user-attachments/assets/ccf9a2e8-ef1a-4857-a26d-a8716b18e55d)
   - If the work is completed, it should look like the picture above.

5. **Wait for Data Extraction**
    - The extracted .json file will be available in the `./output` folder.
    - The process takes at least 30 seconds.

6. **Upload this JSON File to [Splat3 Seed Checker](https://leanny.github.io/splat3seedchecker/#/settings)**


### Thanks to
[docker-android](https://github.com/budtmo/docker-android)  
[frozenpandaman/s3s](https://github.com/frozenpandaman/s3s)  
[imc0/nso-get-data](https://github.com/imc0/nso-get-data)
