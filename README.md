# fc-webpage-screenshot

[![License](https://img.shields.io/badge/License-BSD_3--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)
![GitHub all releases](https://img.shields.io/github/downloads/rgglez/fc-webpage-screenshot/total) 
![GitHub issues](https://img.shields.io/github/issues/rgglez/fc-webpage-screenshot) 
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/rgglez/fc-webpage-screenshot)

This is a microservice written in Javascript for Aliyun Function Compute NodeJS FaaS that makes a screenshot of a web page, using [puppeteer](https://www.npmjs.com/package/puppeteer) and [chromium](https://www.chromium.org/Home/).

The URL of the page to be screenshoted is passed via query parameter in the URL of the function.

```
/webpage-screenshot?url=https://www.example.com
```

The JPEG image of the captured screen will be returned.

## Notes

* A *Dockerfile* is provided as a guide. You might need to customize it.
* The FC is working in Web Server mode, so [express](https://www.npmjs.com/package/express) is used.

## License

Copyright (c) 2023 Rodolfo González González.

Read the LICENSE file.
