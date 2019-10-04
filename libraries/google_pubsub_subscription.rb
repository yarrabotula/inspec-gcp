# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------
require 'gcp_backend'
require 'google/pubsub/property/subscription_expiration_policy'
require 'google/pubsub/property/subscription_push_config'

# A provider to manage Cloud Pub/Sub resources.
class PubsubSubscription < GcpResourceBase
  name 'google_pubsub_subscription'
  desc 'Subscription'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :name
  attr_reader :topic
  attr_reader :labels
  attr_reader :push_config
  attr_reader :ack_deadline_seconds
  attr_reader :message_retention_duration
  attr_reader :retain_acked_messages
  attr_reader :expiration_policy

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @name = name_from_self_link(@fetched['name'])
    @topic = @fetched['topic']
    @labels = @fetched['labels']
    @push_config = GoogleInSpec::Pubsub::Property::SubscriptionPushConfig.new(@fetched['pushConfig'], to_s)
    @ack_deadline_seconds = @fetched['ackDeadlineSeconds']
    @message_retention_duration = @fetched['messageRetentionDuration']
    @retain_acked_messages = @fetched['retainAckedMessages']
    @expiration_policy = GoogleInSpec::Pubsub::Property::SubscriptionExpirationPolicy.new(@fetched['expirationPolicy'], to_s)
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Subscription #{@params[:name]}"
  end

  private

  def product_url
    'https://pubsub.googleapis.com/v1/'
  end

  def resource_base_url
    'projects/{{project}}/subscriptions/{{name}}'
  end
end
