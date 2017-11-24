# liveagent_calls_internal_api.CallsinternalApi

All URIs are relative to *http://127.0.0.1:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**call_cancel_create**](CallsinternalApi.md#call_cancel_create) | **POST** /call/_cancelStart | Cancel outgoing call (before the agent initiated it on external device)
[**call_create**](CallsinternalApi.md#call_create) | **POST** /call/_start | Originate new call
[**call_status**](CallsinternalApi.md#call_status) | **GET** /call/{callId}/_status | Return the status of call
[**call_transfer**](CallsinternalApi.md#call_transfer) | **POST** /call/{callId}/_transfer | Transfer call to different number


# **call_cancel_create**
> OkResponse call_cancel_create(call_id)

Cancel outgoing call (before the agent initiated it on external device)

### Example 
```python
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsinternalApi()
call_id = 'call_id_example' # str | 

try: 
    # Cancel outgoing call (before the agent initiated it on external device)
    api_response = api_instance.call_cancel_create(call_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsinternalApi->call_cancel_create: %s\n" % e
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **str**|  | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **call_create**
> Call call_create(to_number, trunk, device_type, device_number, device_params, ticket_id=ticket_id)

Originate new call

### Example 
```python
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsinternalApi()
to_number = 'to_number_example' # str | callee number
trunk = 'trunk_example' # str | trunk id
device_type = 'device_type_example' # str | A - LiveAgent phone app, S - SIP phone
device_number = 'device_number_example' # str | device number
device_params = 'device_params_example' # str | device params
ticket_id = 'ticket_id_example' # str | ticket id or code (optional)

try: 
    # Originate new call
    api_response = api_instance.call_create(to_number, trunk, device_type, device_number, device_params, ticket_id=ticket_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsinternalApi->call_create: %s\n" % e
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **to_number** | **str**| callee number | 
 **trunk** | **str**| trunk id | 
 **device_type** | **str**| A - LiveAgent phone app, S - SIP phone | 
 **device_number** | **str**| device number | 
 **device_params** | **str**| device params | 
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
api_instance = liveagent_calls_internal_api.CallsinternalApi()
call_id = 'call_id_example' # str | 

try: 
    # Return the status of call
    api_response = api_instance.call_status(call_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsinternalApi->call_status: %s\n" % e
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
> OkResponse call_transfer(call_id, to_number)

Transfer call to different number

### Example 
```python
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsinternalApi()
call_id = 'call_id_example' # str | 
to_number = 'to_number_example' # str | to number

try: 
    # Transfer call to different number
    api_response = api_instance.call_transfer(call_id, to_number)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsinternalApi->call_transfer: %s\n" % e
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **str**|  | 
 **to_number** | **str**| to number | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

