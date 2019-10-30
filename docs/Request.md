# ApprovalApiClient::Request

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**state** | **String** | The state of the request. Possible value: canceled, pending, skipped, notified, or finished | [optional] 
**decision** | **String** | Approval decision. Possible value: undecided, approved, canceled, or denied | [optional] 
**reason** | **String** | Reason for the decision. Optional. Present normally when the decision is denied | [optional] 
**workflow_id** | **String** | Associate workflow id. Available only if the request is a leaf node | [optional] 
**created_at** | **DateTime** | Timestamp of creation | [optional] 
**updated_at** | **DateTime** | Timestamp of last update | [optional] 
**number_of_children** | **Integer** | Number of child requests | [optional] 
**number_of_finished_children** | **Integer** | Number of finished child requests | [optional] 
**owner** | **String** | Requester&#39;s id | [optional] 
**requester_name** | **String** | Requester&#39;s full name | [optional] 
**name** | **String** | Request name | [optional] 
**description** | **String** | Request description | [optional] 


