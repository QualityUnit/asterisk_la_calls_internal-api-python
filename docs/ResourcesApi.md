# liveagent_calls_internal_api.ResourcesApi

All URIs are relative to *http://127.0.0.1:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**resources**](ResourcesApi.md#resources) | **GET** /resources | List alive objects and threads


# **resources**
> OkResponse resources()

List alive objects and threads

### Example 
```python
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.ResourcesApi()

try: 
    # List alive objects and threads
    api_response = api_instance.resources()
    pprint(api_response)
except ApiException as e:
    print "Exception when calling ResourcesApi->resources: %s\n" % e
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

