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
  class RequestApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add an approval request by given parameters
    # Add an approval request by given parameters, available to anyone
    # @param request_in Parameters need to create a request
    # @param [Hash] opts the optional parameters
    # @return [Request]
    def create_request(request_in, opts = {})
      data, _status_code, _headers = create_request_with_http_info(request_in, opts)
      data
    end

    # Add an approval request by given parameters
    # Add an approval request by given parameters, available to anyone
    # @param request_in Parameters need to create a request
    # @param [Hash] opts the optional parameters
    # @return [Array<(Request, Fixnum, Hash)>] Request data, response status code and response headers
    def create_request_with_http_info(request_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RequestApi.create_request ...'
      end
      # verify the required parameter 'request_in' is set
      if @api_client.config.client_side_validation && request_in.nil?
        fail ArgumentError, "Missing the required parameter 'request_in' when calling RequestApi.create_request"
      end
      # resource path
      local_var_path = '/requests'

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
      post_body = @api_client.object_to_http_body(request_in)
      auth_names = ['Basic_auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Request')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RequestApi#create_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return an array of approval requests, available to anyone
    # Return an array of requests. The result depends on the x-rh-persona header
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_rh_persona Current login user&#39;s persona
    # @option opts [Integer] :limit How many items to return at one time (max 1000) (default to 100)
    # @option opts [Integer] :offset Starting Offset (default to 0)
    # @option opts [Object] :filter Filter for querying collections.
    # @return [RequestCollection]
    def list_requests(opts = {})
      data, _status_code, _headers = list_requests_with_http_info(opts)
      data
    end

    # Return an array of approval requests, available to anyone
    # Return an array of requests. The result depends on the x-rh-persona header
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_rh_persona Current login user&#39;s persona
    # @option opts [Integer] :limit How many items to return at one time (max 1000)
    # @option opts [Integer] :offset Starting Offset
    # @option opts [Object] :filter Filter for querying collections.
    # @return [Array<(RequestCollection, Fixnum, Hash)>] RequestCollection data, response status code and response headers
    def list_requests_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RequestApi.list_requests ...'
      end
      if @api_client.config.client_side_validation && opts[:'x_rh_persona'] && !['approval/admin', 'approval/approver', 'approval/requester'].include?(opts[:'x_rh_persona'])
        fail ArgumentError, 'invalid value for "x_rh_persona", must be one of approval/admin, approval/approver, approval/requester'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RequestApi.list_requests, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RequestApi.list_requests, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling RequestApi.list_requests, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/requests'

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-rh-persona'] = opts[:'x_rh_persona'] if !opts[:'x_rh_persona'].nil?

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
        :return_type => 'RequestCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RequestApi#list_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return an approval request by given id
    # Return an approval request by given id, available to anyone who can access the request
    # @param id Query by id
    # @param [Hash] opts the optional parameters
    # @return [Request]
    def show_request(id, opts = {})
      data, _status_code, _headers = show_request_with_http_info(id, opts)
      data
    end

    # Return an approval request by given id
    # Return an approval request by given id, available to anyone who can access the request
    # @param id Query by id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Request, Fixnum, Hash)>] Request data, response status code and response headers
    def show_request_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RequestApi.show_request ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RequestApi.show_request"
      end
      # resource path
      local_var_path = '/requests/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Request')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RequestApi#show_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end