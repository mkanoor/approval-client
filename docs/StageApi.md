# ApprovalApiClient::StageApi

All URIs are relative to *https://cloud.redhat.com//api/approval/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_stages_by_request**](StageApi.md#list_stages_by_request) | **GET** /requests/{request_id}/stages | Return an array of stages by given request id, available for admin/requester
[**show_stage**](StageApi.md#show_stage) | **GET** /stages/{id} | Return an approval stage by given id, available for admin/approver/requester


# **list_stages_by_request**
> StageOutCollection list_stages_by_request(request_id)

Return an array of stages by given request id, available for admin/requester

Return an array of stages by given request id

### Example
```ruby
# load the gem
require 'approval-api-client-ruby'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::StageApi.new
request_id = 'request_id_example' # String | Id of request

begin
  #Return an array of stages by given request id, available for admin/requester
  result = api_instance.list_stages_by_request(request_id)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling StageApi->list_stages_by_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_id** | **String**| Id of request | 

### Return type

[**StageOutCollection**](StageOutCollection.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **show_stage**
> StageOut show_stage(id)

Return an approval stage by given id, available for admin/approver/requester

Return an approval stage by given id

### Example
```ruby
# load the gem
require 'approval-api-client-ruby'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::StageApi.new
id = 'id_example' # String | Query by id

begin
  #Return an approval stage by given id, available for admin/approver/requester
  result = api_instance.show_stage(id)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling StageApi->show_stage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Query by id | 

### Return type

[**StageOut**](StageOut.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



