ACTIVE_RECORD_VERSION = Gem::Version.new(ActiveRecord::VERSION::STRING)

require "polymorphic_mapping_ext/version"
require "polymorphic_mapping_ext/extensions"
require "polymorphic_mapping_ext/mapping"
require "polymorphic_mapping_ext/module_generator"
require "polymorphic_mapping_ext/belongs_to_polymorphic_association_extension"
require "polymorphic_mapping_ext/activerecord_5_0_0/polymorphic_array_value_extension"

if ACTIVE_RECORD_VERSION < Gem::Version.new("5.2.0")
  require "polymorphic_mapping_ext/activerecord_5_0_0/association_query_handler_extension"
end

module PolymorphicMappingExt; end
