# liveagent_calls_internal_api.CallsApi

All URIs are relative to *http://127.0.0.1:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**call_create**](CallsApi.md#call_create) | **POST** /call/_start | Originate new call
[**call_status**](CallsApi.md#call_status) | **GET** /call/{callId}/_status | Return the status of call
[**call_transfer**](CallsApi.md#call_transfer) | **POST** /call/{callId}/_transfer | Transfer call to different number


# **call_create**
> Call call_create(to_number, agent_number, trunk, ticket_id=ticket_id)

Originate new call

### Example 
```python
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsApi()
to_number = 'to_number_example' # str | callee number
agent_number = 'agent_number_example' # str | agent number
trunk = 'trunk_example' # str | trunk id
ticket_id = 'ticket_id_example' # str | ticket id or code (optional)

try: 
    # Originate new call
    api_response = api_instance.call_create(to_number, agent_number, trunk, ticket_id=ticket_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsApi->call_create: %s\n" % e
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **to_number** | **str**| callee number | 
 **agent_number** | **str**| agent number | 
 **trunk** | **str**| trunk id | 
 **ticket_id** | **str**| ticket id or code | [optional] 

### Return type

[**Call**](Call.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **call_status**
> Call call_status(call_id)

Return the status of call

### Example 
```python
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsApi()
call_id = 'call_id_example' # str | 

try: 
    # Return the status of call
    api_response = api_instance.call_status(call_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsApi->call_status: %s\n" % e
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **str**|  | 

### Return type

[**Call**](Call.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **call_transfer**
> OkResponse call_transfer(to_number)

Transfer call to different number

### Example 
```python
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsApi()
to_number = 'to_number_example' # str | to number

try: 
    # Transfer call to different number
    api_response = api_instance.call_transfer(to_number)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsApi->call_transfer: %s\n" % e
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **to_number** | **str**| to number | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

