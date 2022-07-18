# liveagent_calls_internal_api
Asterisk LA connector internal

This Python package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.1
- Package version: 1.0.0
- Build date: 2022-07-05T14:41:22.083+03:00
- Build package: class io.swagger.codegen.languages.PythonClientCodegen

## Requirements.

Python 2.7 and 3.4+

## Installation & Usage
### pip install

If the python package is hosted on Github, you can install directly from Github

```sh
pip install git+https://github.com/YOUR_GIT_USR_ID/YOUR_GIT_REPO_ID.git
```
(you may need to run `pip` with root permission: `sudo pip install git+https://github.com/YOUR_GIT_USR_ID/YOUR_GIT_REPO_ID.git`)

Then import the package:
```python
import liveagent_calls_internal_api 
```

### Setuptools

Install via [Setuptools](http://pypi.python.org/pypi/setuptools).

```sh
python setup.py install --user
```
(or `sudo python setup.py install` to install the package for all users)

Then import the package:
```python
import liveagent_calls_internal_api
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```python
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint
# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsinternalApi
call_id = 'call_id_example' # str | 

try:
    # Cancel outgoing call (before the agent initiated it on external device)
    api_response = api_instance.call_cancel_create(call_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsinternalApi->call_cancel_create: %s\n" % e

```

## Documentation for API Endpoints

All URIs are relative to *http://127.0.0.1:8080/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CallsinternalApi* | [**call_cancel_create**](docs/CallsinternalApi.md#call_cancel_create) | **POST** /call/_cancelStart | Cancel outgoing call (before the agent initiated it on external device)
*CallsinternalApi* | [**call_create**](docs/CallsinternalApi.md#call_create) | **POST** /call/_start | Originate new call
*CallsinternalApi* | [**call_status**](docs/CallsinternalApi.md#call_status) | **GET** /call/{callId}/_status | Return the status of call
*CallsinternalApi* | [**call_transfer**](docs/CallsinternalApi.md#call_transfer) | **POST** /call/{callId}/_transfer | Transfer call to different number
*CallsinternalApi* | [**dtmf_channel**](docs/CallsinternalApi.md#dtmf_channel) | **POST** /call/{callId}/channels/{channelId}/_dtmf | Send provided DTMF to channel
*CallsinternalApi* | [**end_channel**](docs/CallsinternalApi.md#end_channel) | **POST** /call/{callId}/channels/{channelId}/_end | End channel
*CallsinternalApi* | [**hold_channel**](docs/CallsinternalApi.md#hold_channel) | **POST** /call/{callId}/channels/{channelId}/_hold | Hold channel
*CallsinternalApi* | [**mute_channel**](docs/CallsinternalApi.md#mute_channel) | **POST** /call/{callId}/channels/{channelId}/_mute | Mute channel
*CallsinternalApi* | [**unhold_channel**](docs/CallsinternalApi.md#unhold_channel) | **POST** /call/{callId}/channels/{channelId}/_unhold | Unhold channel
*CallsinternalApi* | [**unmute_channel**](docs/CallsinternalApi.md#unmute_channel) | **POST** /call/{callId}/channels/{channelId}/_unmute | Unmute channel
*SoundsApi* | [**sound_add**](docs/SoundsApi.md#sound_add) | **POST** /sounds | Uploads new sound. This is used mainly for checking if sound has correct format. Sounds used in IVR are lazy converted when needed.


## Documentation For Models

 - [Call](docs/Call.md)
 - [ErrorResponse](docs/ErrorResponse.md)
 - [OkResponse](docs/OkResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author

support@qualityunit.com

