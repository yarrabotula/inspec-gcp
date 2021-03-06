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
module GoogleInSpec
  module Dataproc
    module Property
      class ClusterConfigSoftwareConfig
        attr_reader :image_version

        attr_reader :properties

        attr_reader :optional_components

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @image_version = args['imageVersion']
          @properties = args['properties']
          @optional_components = args['optionalComponents']
        end

        def to_s
          "#{@parent_identifier} ClusterConfigSoftwareConfig"
        end
      end
    end
  end
end
