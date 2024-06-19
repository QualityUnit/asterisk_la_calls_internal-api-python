# liveagent_calls_internal_api.CallsinternalApi

All URIs are relative to *http://127.0.0.1:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**call_cancel_create**](CallsinternalApi.md#call_cancel_create) | **POST** /call/_cancelStart | Cancel outgoing call (before the agent initiated it on external device)
[**call_create**](CallsinternalApi.md#call_create) | **POST** /call/_start | Originate new call
[**call_status**](CallsinternalApi.md#call_status) | **GET** /call/{callId}/_status | Return the status of call
[**call_transfer**](CallsinternalApi.md#call_transfer) | **POST** /call/{callId}/_transfer | Transfer call to different number
[**call_transfer_refer**](CallsinternalApi.md#call_transfer_refer) | **POST** /call/{callId}/_transfer_refer | Transfer call to different number by refer
[**dtmf_channel**](CallsinternalApi.md#dtmf_channel) | **POST** /call/{callId}/channels/{channelId}/_dtmf | Send provided DTMF to channel
[**end_channel**](CallsinternalApi.md#end_channel) | **POST** /call/{callId}/channels/{channelId}/_end | End channel
[**hold_channel**](CallsinternalApi.md#hold_channel) | **POST** /call/{callId}/channels/{channelId}/_hold | Hold channel
[**mute_channel**](CallsinternalApi.md#mute_channel) | **POST** /call/{callId}/channels/{channelId}/_mute | Mute channel
[**unhold_channel**](CallsinternalApi.md#unhold_channel) | **POST** /call/{callId}/channels/{channelId}/_unhold | Unhold channel
[**unmute_channel**](CallsinternalApi.md#unmute_channel) | **POST** /call/{callId}/channels/{channelId}/_unmute | Unmute channel


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
> Call call_create(to_number, device_type, device_number, device_params, trunk=trunk, ticket_id=ticket_id, device_trunk_id=device_trunk_id)

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
device_type = 'device_type_example' # str | A - LiveAgent phone app, S - SIP phone, E - Phone connected to PSTN, W - Web browser device
device_number = 'device_number_example' # str | device number
device_params = 'device_params_example' # str | device params
trunk = 'trunk_example' # str | trunk id (optional)
ticket_id = 'ticket_id_example' # str | ticket id or code (optional)
device_trunk_id = 'device_trunk_id_example' # str | device trunk id (for dialing PSTN phone device) (optional)

try: 
    # Originate new call
    api_response = api_instance.call_create(to_number, device_type, device_number, device_params, trunk=trunk, ticket_id=ticket_id, device_trunk_id=device_trunk_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsinternalApi->call_create: %s\n" % e
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **to_number** | **str**| callee number | 
 **device_type** | **str**| A - LiveAgent phone app, S - SIP phone, E - Phone connected to PSTN, W - Web browser device | 
 **device_number** | **str**| device number | 
 **device_params** | **str**| device params | 
 **trunk** | **str**| trunk id | [optional] 
 **ticket_id** | **str**| ticket id or code | [optional] 
 **device_trunk_id** | **str**| device trunk id (for dialing PSTN phone device) | [optional] 

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
> OkResponse call_transfer(call_id, to_number, first_channel_id)

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
first_channel_id = 'first_channel_id_example' # str | first channel ID

try: 
    # Transfer call to different number
    api_response = api_instance.call_transfer(call_id, to_number, first_channel_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsinternalApi->call_transfer: %s\n" % e
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **str**|  | 
 **to_number** | **str**| to number | 
 **first_channel_id** | **str**| first channel ID | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **call_transfer_refer**
> OkResponse call_transfer_refer(call_id, to_number, first_channel_id)

Transfer call to different number by refer

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
first_channel_id = 'first_channel_id_example' # str | first channel ID

try: 
    # Transfer call to different number by refer
    api_response = api_instance.call_transfer_refer(call_id, to_number, first_channel_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsinternalApi->call_transfer_refer: %s\n" % e
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **str**|  | 
 **to_number** | **str**| to number | 
 **first_channel_id** | **str**| first channel ID | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
api_instance = liveagent_calls_internal_api.CallsinternalApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 
dtmf = 'dtmf_example' # str | DTMF To send

try: 
    # Send provided DTMF to channel
    api_response = api_instance.dtmf_channel(call_id, channel_id, dtmf)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsinternalApi->dtmf_channel: %s\n" % e
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
api_instance = liveagent_calls_internal_api.CallsinternalApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 

try: 
    # End channel
    api_response = api_instance.end_channel(call_id, channel_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsinternalApi->end_channel: %s\n" % e
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
api_instance = liveagent_calls_internal_api.CallsinternalApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 

try: 
    # Hold channel
    api_response = api_instance.hold_channel(call_id, channel_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsinternalApi->hold_channel: %s\n" % e
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
api_instance = liveagent_calls_internal_api.CallsinternalApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 

try: 
    # Mute channel
    api_response = api_instance.mute_channel(call_id, channel_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsinternalApi->mute_channel: %s\n" % e
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
api_instance = liveagent_calls_internal_api.CallsinternalApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 

try: 
    # Unhold channel
    api_response = api_instance.unhold_channel(call_id, channel_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsinternalApi->unhold_channel: %s\n" % e
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
api_instance = liveagent_calls_internal_api.CallsinternalApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 

try: 
    # Unmute channel
    api_response = api_instance.unmute_channel(call_id, channel_id)
    pprint(api_response)
except ApiException as e:
    print "Exception when calling CallsinternalApi->unmute_channel: %s\n" % e
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

