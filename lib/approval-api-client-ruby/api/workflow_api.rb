=begin
#Insights Service Approval APIs

#APIs to query approval service

OpenAPI spec version: 1.0.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module ApprovalApiClient
  class WorkflowApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a workflow by given template id, only available for admin
    # Add a workflow by given template id
    # @param template_id Id of template
    # @param workflow_in Parameters need to create workflow
    # @param [Hash] opts the optional parameters
    # @return [WorkflowOut]
    def add_workflow_to_template(template_id, workflow_in, opts = {})
      data, _status_code, _headers = add_workflow_to_template_with_http_info(template_id, workflow_in, opts)
      data
    end

    # Add a workflow by given template id, only available for admin
    # Add a workflow by given template id
    # @param template_id Id of template
    # @param workflow_in Parameters need to create workflow
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowOut, Fixnum, Hash)>] WorkflowOut data, response status code and response headers
    def add_workflow_to_template_with_http_info(template_id, workflow_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowApi.add_workflow_to_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling WorkflowApi.add_workflow_to_template"
      end
      # verify the required parameter 'workflow_in' is set
      if @api_client.config.client_side_validation && workflow_in.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_in' when calling WorkflowApi.add_workflow_to_template"
      end
      # resource path
      local_var_path = '/templates/{template_id}/workflows'.sub('{' + 'template_id' + '}', template_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(workflow_in)
      auth_names = ['Basic_auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkflowOut')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowApi#add_workflow_to_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete approval workflow by given id, only available for admin
    # Delete approval workflow by given id
    # @param id Query by id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def destroy_workflow(id, opts = {})
      destroy_workflow_with_http_info(id, opts)
      nil
    end

    # Delete approval workflow by given id, only available for admin
    # Delete approval workflow by given id
    # @param id Query by id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def destroy_workflow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowApi.destroy_workflow ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WorkflowApi.destroy_workflow"
      end
      # resource path
      local_var_path = '/workflows/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Basic_auth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowApi#destroy_workflow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a resource link to a given workflow
    # Link a resource object to a given workflow
    # @param id Query by id
    # @param resource_object Parameters needed to create a link
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def link_workflow(id, resource_object, opts = {})
      link_workflow_with_http_info(id, resource_object, opts)
      nil
    end

    # Create a resource link to a given workflow
    # Link a resource object to a given workflow
    # @param id Query by id
    # @param resource_object Parameters needed to create a link
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def link_workflow_with_http_info(id, resource_object, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowApi.link_workflow ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WorkflowApi.link_workflow"
      end
      # verify the required parameter 'resource_object' is set
      if @api_client.config.client_side_validation && resource_object.nil?
        fail ArgumentError, "Missing the required parameter 'resource_object' when calling WorkflowApi.link_workflow"
      end
      # resource path
      local_var_path = '/workflows/{id}/link'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(resource_object)
      auth_names = ['Basic_auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowApi#link_workflow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return all approval workflows, only available for admin
    # Return all approval workflows in ascending sequence order
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit How many items to return at one time (max 1000) (default to 100)
    # @option opts [Integer] :offset Starting Offset (default to 0)
    # @option opts [Object] :filter Filter for querying collections.
    # @return [WorkflowOutCollection]
    def list_workflows(opts = {})
      data, _status_code, _headers = list_workflows_with_http_info(opts)
      data
    end

    # Return all approval workflows, only available for admin
    # Return all approval workflows in ascending sequence order
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit How many items to return at one time (max 1000)
    # @option opts [Integer] :offset Starting Offset
    # @option opts [Object] :filter Filter for querying collections.
    # @return [Array<(WorkflowOutCollection, Fixnum, Hash)>] WorkflowOutCollection data, response status code and response headers
    def list_workflows_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowApi.list_workflows ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WorkflowApi.list_workflows, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WorkflowApi.list_workflows, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling WorkflowApi.list_workflows, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/workflows'

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Basic_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkflowOutCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowApi#list_workflows\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return an array of workflows by given template id, only available for admin
    # Return an array of workflows by given template id
    # @param template_id Id of template
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit How many items to return at one time (max 1000) (default to 100)
    # @option opts [Integer] :offset Starting Offset (default to 0)
    # @option opts [Object] :filter Filter for querying collections.
    # @return [WorkflowOutCollection]
    def list_workflows_by_template(template_id, opts = {})
      data, _status_code, _headers = list_workflows_by_template_with_http_info(template_id, opts)
      data
    end

    # Return an array of workflows by given template id, only available for admin
    # Return an array of workflows by given template id
    # @param template_id Id of template
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit How many items to return at one time (max 1000)
    # @option opts [Integer] :offset Starting Offset
    # @option opts [Object] :filter Filter for querying collections.
    # @return [Array<(WorkflowOutCollection, Fixnum, Hash)>] WorkflowOutCollection data, response status code and response headers
    def list_workflows_by_template_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowApi.list_workflows_by_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling WorkflowApi.list_workflows_by_template"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WorkflowApi.list_workflows_by_template, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WorkflowApi.list_workflows_by_template, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling WorkflowApi.list_workflows_by_template, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/templates/{template_id}/workflows'.sub('{' + 'template_id' + '}', template_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Basic_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkflowOutCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowApi#list_workflows_by_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all workflows linked to a resource object.
    # Get all workflows linked to a resource object.
    # @param resource_object Resource object used to resolve workflows.
    # @param [Hash] opts the optional parameters
    # @return [Array<WorkflowOut>]
    def resolve_workflows(resource_object, opts = {})
      data, _status_code, _headers = resolve_workflows_with_http_info(resource_object, opts)
      data
    end

    # Get all workflows linked to a resource object.
    # Get all workflows linked to a resource object.
    # @param resource_object Resource object used to resolve workflows.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<WorkflowOut>, Fixnum, Hash)>] Array<WorkflowOut> data, response status code and response headers
    def resolve_workflows_with_http_info(resource_object, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowApi.resolve_workflows ...'
      end
      # verify the required parameter 'resource_object' is set
      if @api_client.config.client_side_validation && resource_object.nil?
        fail ArgumentError, "Missing the required parameter 'resource_object' when calling WorkflowApi.resolve_workflows"
      end
      # resource path
      local_var_path = '/workflows/resolve'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(resource_object)
      auth_names = ['Basic_auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<WorkflowOut>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowApi#resolve_workflows\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return an approval workflow by given id, only available for admin
    # Return an approval workflow by given id
    # @param id Query by id
    # @param [Hash] opts the optional parameters
    # @return [WorkflowOut]
    def show_workflow(id, opts = {})
      data, _status_code, _headers = show_workflow_with_http_info(id, opts)
      data
    end

    # Return an approval workflow by given id, only available for admin
    # Return an approval workflow by given id
    # @param id Query by id
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowOut, Fixnum, Hash)>] WorkflowOut data, response status code and response headers
    def show_workflow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowApi.show_workflow ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WorkflowApi.show_workflow"
      end
      # resource path
      local_var_path = '/workflows/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Basic_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkflowOut')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowApi#show_workflow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Break all links between a resource object and its assigned workflows
    # Break all links between a resource object and its assigned workflows
    # @param resource_object Parameters needed to remove a link
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unlink_all(resource_object, opts = {})
      unlink_all_with_http_info(resource_object, opts)
      nil
    end

    # Break all links between a resource object and its assigned workflows
    # Break all links between a resource object and its assigned workflows
    # @param resource_object Parameters needed to remove a link
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def unlink_all_with_http_info(resource_object, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowApi.unlink_all ...'
      end
      # verify the required parameter 'resource_object' is set
      if @api_client.config.client_side_validation && resource_object.nil?
        fail ArgumentError, "Missing the required parameter 'resource_object' when calling WorkflowApi.unlink_all"
      end
      # resource path
      local_var_path = '/workflows/unlink'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(resource_object)
      auth_names = ['Basic_auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowApi#unlink_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Break the link between a resource object and selected workflow
    # Break the link between a resource object and selected workflow
    # @param id Query by id
    # @param resource_object Parameters needed to remove a link
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unlink_workflow(id, resource_object, opts = {})
      unlink_workflow_with_http_info(id, resource_object, opts)
      nil
    end

    # Break the link between a resource object and selected workflow
    # Break the link between a resource object and selected workflow
    # @param id Query by id
    # @param resource_object Parameters needed to remove a link
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def unlink_workflow_with_http_info(id, resource_object, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowApi.unlink_workflow ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WorkflowApi.unlink_workflow"
      end
      # verify the required parameter 'resource_object' is set
      if @api_client.config.client_side_validation && resource_object.nil?
        fail ArgumentError, "Missing the required parameter 'resource_object' when calling WorkflowApi.unlink_workflow"
      end
      # resource path
      local_var_path = '/workflows/{id}/unlink'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(resource_object)
      auth_names = ['Basic_auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowApi#unlink_workflow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an approval workflow by given id, only available for admin
    # Update an approval workflow by given id
    # @param id Query by id
    # @param workflow_in Parameters need to update approval workflow
    # @param [Hash] opts the optional parameters
    # @return [WorkflowOut]
    def update_workflow(id, workflow_in, opts = {})
      data, _status_code, _headers = update_workflow_with_http_info(id, workflow_in, opts)
      data
    end

    # Update an approval workflow by given id, only available for admin
    # Update an approval workflow by given id
    # @param id Query by id
    # @param workflow_in Parameters need to update approval workflow
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowOut, Fixnum, Hash)>] WorkflowOut data, response status code and response headers
    def update_workflow_with_http_info(id, workflow_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkflowApi.update_workflow ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WorkflowApi.update_workflow"
      end
      # verify the required parameter 'workflow_in' is set
      if @api_client.config.client_side_validation && workflow_in.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_in' when calling WorkflowApi.update_workflow"
      end
      # resource path
      local_var_path = '/workflows/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(workflow_in)
      auth_names = ['Basic_auth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkflowOut')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowApi#update_workflow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
