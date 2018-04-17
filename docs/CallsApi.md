# liveagent_calls_internal_api.CallsApi

All URIs are relative to *http://127.0.0.1:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dtmf_channel**](CallsApi.md#dtmf_channel) | **POST** /call/{callId}/channels/{channelId}/_dtmf | Send provided DTMF to channel
[**end_channel**](CallsApi.md#end_channel) | **POST** /call/{callId}/channels/{channelId}/_end | End channel
[**hold_channel**](CallsApi.md#hold_channel) | **POST** /call/{callId}/channels/{channelId}/_hold | Hold channel
[**mute_channel**](CallsApi.md#mute_channel) | **POST** /call/{callId}/channels/{channelId}/_mute | Mute channel
[**unhold_channel**](CallsApi.md#unhold_channel) | **POST** /call/{callId}/channels/{channelId}/_unhold | Unhold channel
[**unmute_channel**](CallsApi.md#unmute_channel) | **POST** /call/{callId}/channels/{channelId}/_unmute | Unmute channel


# **dtmf_channel**
> OkResponse dtmf_channel(call_id, channel_id, dtmf)

Send provided DTMF to channel

### Example 
```python
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 
dtmf = 'dtmf_example' # str | DTMF To send

try: 
    # Send provided DTMF to channel
    api_response = api_instance.dtmf_channel(call_id, channel_id, dtmf)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsApi->dtmf_channel: %s\n" % e
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **str**|  | 
 **channel_id** | **str**|  | 
 **dtmf** | **str**| DTMF To send | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **end_channel**
> OkResponse end_channel(call_id, channel_id)

End channel

### Example 
```python
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 

try: 
    # End channel
    api_response = api_instance.end_channel(call_id, channel_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsApi->end_channel: %s\n" % e
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **str**|  | 
 **channel_id** | **str**|  | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hold_channel**
> OkResponse hold_channel(call_id, channel_id)

Hold channel

### Example 
```python
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 

try: 
    # Hold channel
    api_response = api_instance.hold_channel(call_id, channel_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsApi->hold_channel: %s\n" % e
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **str**|  | 
 **channel_id** | **str**|  | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mute_channel**
> OkResponse mute_channel(call_id, channel_id)

Mute channel

### Example 
```python
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 

try: 
    # Mute channel
    api_response = api_instance.mute_channel(call_id, channel_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsApi->mute_channel: %s\n" % e
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **str**|  | 
 **channel_id** | **str**|  | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unhold_channel**
> OkResponse unhold_channel(call_id, channel_id)

Unhold channel

### Example 
```python
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 

try: 
    # Unhold channel
    api_response = api_instance.unhold_channel(call_id, channel_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsApi->unhold_channel: %s\n" % e
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **str**|  | 
 **channel_id** | **str**|  | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unmute_channel**
> OkResponse unmute_channel(call_id, channel_id)

Unmute channel

### Example 
```python
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 

try: 
    # Unmute channel
    api_response = api_instance.unmute_channel(call_id, channel_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsApi->unmute_channel: %s\n" % e
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **str**|  | 
 **channel_id** | **str**|  | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

