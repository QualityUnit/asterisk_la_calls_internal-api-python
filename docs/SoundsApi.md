# liveagent_calls_internal_api.SoundsApi

All URIs are relative to *http://127.0.0.1:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sound_add**](SoundsApi.md#sound_add) | **POST** /sounds | Uploads new sound. This is used mainly for checking if sound has correct format. Sounds used in IVR are lazy converted when needed.


# **sound_add**
> OkResponse sound_add(url)

Uploads new sound. This is used mainly for checking if sound has correct format. Sounds used in IVR are lazy converted when needed.

### Example
```python
from __future__ import print_function
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.SoundsApi()
url = 'url_example' # str | 

try:
    # Uploads new sound. This is used mainly for checking if sound has correct format. Sounds used in IVR are lazy converted when needed.
    api_response = api_instance.sound_add(url)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SoundsApi->sound_add: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **str**|  | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

