# liveagent_calls_internal_api.CallsInternalApi

All URIs are relative to *http://127.0.0.1:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**call_cancel_create**](CallsInternalApi.md#call_cancel_create) | **POST** /call/_cancelStart | Cancel outgoing call (before the agent initiated it on external device)
[**call_create**](CallsInternalApi.md#call_create) | **POST** /call/_start | Originate new call
[**call_listen**](CallsInternalApi.md#call_listen) | **POST** /call/_listen | Request call listening
[**call_redirect**](CallsInternalApi.md#call_redirect) | **POST** /call/{callId}/_redirect | Redirect call (Complete attended transfer)
[**call_redirect_refer**](CallsInternalApi.md#call_redirect_refer) | **POST** /call/{callId}/_redirect_refer | Redirect call by refer (Complete attended transfer)
[**call_status**](CallsInternalApi.md#call_status) | **GET** /call/{callId}/_status | Return the status of call
[**call_stop_listen**](CallsInternalApi.md#call_stop_listen) | **POST** /call/_stopListen | Stop call listening
[**call_transfer**](CallsInternalApi.md#call_transfer) | **POST** /call/{callId}/_transfer | Blind transfer call to a different number
[**dtmf_channel**](CallsInternalApi.md#dtmf_channel) | **POST** /call/{callId}/channels/{channelId}/_dtmf | Send provided DTMF to channel
[**end_channel**](CallsInternalApi.md#end_channel) | **POST** /call/{callId}/channels/{channelId}/_end | End channel
[**get_recording**](CallsInternalApi.md#get_recording) | **GET** /call/{callId}/recordings/{recordingId} | Download a call recording file
[**hold_channel**](CallsInternalApi.md#hold_channel) | **POST** /call/{callId}/channels/{channelId}/_hold | Hold channel
[**mute_channel**](CallsInternalApi.md#mute_channel) | **POST** /call/{callId}/channels/{channelId}/_mute | Mute channel
[**unhold_channel**](CallsInternalApi.md#unhold_channel) | **POST** /call/{callId}/channels/{channelId}/_unhold | Unhold channel
[**unmute_channel**](CallsInternalApi.md#unmute_channel) | **POST** /call/{callId}/channels/{channelId}/_unmute | Unmute channel


# **call_cancel_create**
> OkResponse call_cancel_create(call_id)

Cancel outgoing call (before the agent initiated it on external device)

### Example
```python
from __future__ import print_function
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsInternalApi()
call_id = 'call_id_example' # str | 

try:
    # Cancel outgoing call (before the agent initiated it on external device)
    api_response = api_instance.call_cancel_create(call_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CallsInternalApi->call_cancel_create: %s\n" % e)
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
> Call call_create(to_number, device_type, device_number, device_params, call_id, trunk=trunk, ticket_id=ticket_id, device_trunk_id=device_trunk_id)

Originate new call

### Example
```python
from __future__ import print_function
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsInternalApi()
to_number = 'to_number_example' # str | callee number
device_type = 'device_type_example' # str | A - LiveAgent phone app, S - SIP phone, E - Phone connected to PSTN, W - Web browser device, R - SIP provider extension
device_number = 'device_number_example' # str | device number
device_params = 'device_params_example' # str | device params
call_id = 'call_id_example' # str | call id
trunk = 'trunk_example' # str | trunk id (optional)
ticket_id = 'ticket_id_example' # str | ticket id or code (optional)
device_trunk_id = 'device_trunk_id_example' # str | device trunk id (for dialing PSTN phone device) (optional)

try:
    # Originate new call
    api_response = api_instance.call_create(to_number, device_type, device_number, device_params, call_id, trunk=trunk, ticket_id=ticket_id, device_trunk_id=device_trunk_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CallsInternalApi->call_create: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **to_number** | **str**| callee number | 
 **device_type** | **str**| A - LiveAgent phone app, S - SIP phone, E - Phone connected to PSTN, W - Web browser device, R - SIP provider extension | 
 **device_number** | **str**| device number | 
 **device_params** | **str**| device params | 
 **call_id** | **str**| call id | 
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

# **call_listen**
> OkResponse call_listen(call_id, ticket_id, by_number)

Request call listening

### Example
```python
from __future__ import print_function
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsInternalApi()
call_id = 'call_id_example' # str | Call ID to listen
ticket_id = 'ticket_id_example' # str | Ticket Id
by_number = 'by_number_example' # str | Number that will listen the call

try:
    # Request call listening
    api_response = api_instance.call_listen(call_id, ticket_id, by_number)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CallsInternalApi->call_listen: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **str**| Call ID to listen | 
 **ticket_id** | **str**| Ticket Id | 
 **by_number** | **str**| Number that will listen the call | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **call_redirect**
> OkResponse call_redirect(call_id, to_number, first_channel_id)

Redirect call (Complete attended transfer)

### Example
```python
from __future__ import print_function
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsInternalApi()
call_id = 'call_id_example' # str | 
to_number = 'to_number_example' # str | to number
first_channel_id = 'first_channel_id_example' # str | first channel ID

try:
    # Redirect call (Complete attended transfer)
    api_response = api_instance.call_redirect(call_id, to_number, first_channel_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CallsInternalApi->call_redirect: %s\n" % e)
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

# **call_redirect_refer**
> OkResponse call_redirect_refer(call_id, to_number, first_channel_id)

Redirect call by refer (Complete attended transfer)

### Example
```python
from __future__ import print_function
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsInternalApi()
call_id = 'call_id_example' # str | 
to_number = 'to_number_example' # str | to number
first_channel_id = 'first_channel_id_example' # str | first channel ID

try:
    # Redirect call by refer (Complete attended transfer)
    api_response = api_instance.call_redirect_refer(call_id, to_number, first_channel_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CallsInternalApi->call_redirect_refer: %s\n" % e)
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

# **call_status**
> Call call_status(call_id)

Return the status of call

### Example
```python
from __future__ import print_function
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsInternalApi()
call_id = 'call_id_example' # str | 

try:
    # Return the status of call
    api_response = api_instance.call_status(call_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CallsInternalApi->call_status: %s\n" % e)
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

# **call_stop_listen**
> OkResponse call_stop_listen(call_id, by_number)

Stop call listening

### Example
```python
from __future__ import print_function
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsInternalApi()
call_id = 'call_id_example' # str | Call ID to stop listening
by_number = 'by_number_example' # str | Number that was listening the call

try:
    # Stop call listening
    api_response = api_instance.call_stop_listen(call_id, by_number)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CallsInternalApi->call_stop_listen: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **str**| Call ID to stop listening | 
 **by_number** | **str**| Number that was listening the call | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **call_transfer**
> OkResponse call_transfer(call_id, channel_id, to_number)

Blind transfer call to a different number

### Example
```python
from __future__ import print_function
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsInternalApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | channel ID
to_number = 'to_number_example' # str | transfer to number

try:
    # Blind transfer call to a different number
    api_response = api_instance.call_transfer(call_id, channel_id, to_number)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CallsInternalApi->call_transfer: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **str**|  | 
 **channel_id** | **str**| channel ID | 
 **to_number** | **str**| transfer to number | 

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
from __future__ import print_function
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsInternalApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 
dtmf = 'dtmf_example' # str | DTMF To send

try:
    # Send provided DTMF to channel
    api_response = api_instance.dtmf_channel(call_id, channel_id, dtmf)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CallsInternalApi->dtmf_channel: %s\n" % e)
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
from __future__ import print_function
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsInternalApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 

try:
    # End channel
    api_response = api_instance.end_channel(call_id, channel_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CallsInternalApi->end_channel: %s\n" % e)
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

# **get_recording**
> file get_recording(call_id, recording_id)

Download a call recording file

### Example
```python
from __future__ import print_function
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsInternalApi()
call_id = 'call_id_example' # str | 
recording_id = 'recording_id_example' # str | The recording id (the asterisk-la file handle)

try:
    # Download a call recording file
    api_response = api_instance.get_recording(call_id, recording_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CallsInternalApi->get_recording: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_id** | **str**|  | 
 **recording_id** | **str**| The recording id (the asterisk-la file handle) | 

### Return type

[**file**](file.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: audio/mpeg

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hold_channel**
> OkResponse hold_channel(call_id, channel_id)

Hold channel

### Example
```python
from __future__ import print_function
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsInternalApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 

try:
    # Hold channel
    api_response = api_instance.hold_channel(call_id, channel_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CallsInternalApi->hold_channel: %s\n" % e)
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
from __future__ import print_function
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsInternalApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 

try:
    # Mute channel
    api_response = api_instance.mute_channel(call_id, channel_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CallsInternalApi->mute_channel: %s\n" % e)
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
from __future__ import print_function
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsInternalApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 

try:
    # Unhold channel
    api_response = api_instance.unhold_channel(call_id, channel_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CallsInternalApi->unhold_channel: %s\n" % e)
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
from __future__ import print_function
import time
import liveagent_calls_internal_api
from liveagent_calls_internal_api.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = liveagent_calls_internal_api.CallsInternalApi()
call_id = 'call_id_example' # str | 
channel_id = 'channel_id_example' # str | 

try:
    # Unmute channel
    api_response = api_instance.unmute_channel(call_id, channel_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CallsInternalApi->unmute_channel: %s\n" % e)
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

