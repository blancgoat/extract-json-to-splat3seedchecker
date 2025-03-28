# extract-json-to-splat3seedchecker

## Prerequisites
**Docker Required**  
   - If you haven't installed Docker yet, please install it first.  

## How to
1. **Download the Nintendo Switch Online APK**  
   - Get the APK file from APKMirror:  
     [Nintendo Switch Online - APKMirror](https://www.apkmirror.com/apk/nintendo-co-ltd/nintendo-switch-online/)  
   - Place the downloaded .apkm file in the `apkm` folder.  

2. **Start the Docker Container**  
   ```sh
   docker-compose up -d
   ```

3. **Access the Web Interface**
    - Open http://localhost:6900 in your browser.
    - Wait for the Nintendo Switch Online application to launch.

4. **Log in Nintendo Account and Join Splatoon 3 Game-Specific Services**

5. **Wait for Data Extraction**
    - The process takes at least 30 seconds, so please be patient.

6. **Locate the Extracted JSON File**
    - The extracted .json file will be available in the /output folder.

7. **Upload this JSON File to [Splat3 Seed Checker](https://leanny.github.io/splat3seedchecker/#/settings)**


### Thanks to
[docker-android](https://github.com/budtmo/docker-android)  
[frozenpandaman/s3s](https://github.com/frozenpandaman/s3s)  
[imc0/nso-get-data](https://github.com/imc0/nso-get-data)