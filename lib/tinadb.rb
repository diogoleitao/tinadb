# frozen_string_literal: true

require 'tinadb/version'

# Tinadb
module Tinadb
  class << self; end
end

# Tinadb
class Tinadb
  # Available options:
  # - bucket: bucket name
  # - profile_name: iam profile name
  # - session: AWS session
  def initialize(options = {})
    @bucket = options[:bucket]
    @profile_name = options[:profile_name]
    @session = options[:session]
  end

  # Saves object in tinadb
  # Available options:
  # - index: object's index
  def save(obj, options = {}); end

  # Loads something
  # Available options:
  # - meta_info:
  # - default:
  def load(index, options = {}); end

  # Deletes something
  def delete(index); end

  # Returns all objects in tinadb
  # Available options:
  # - meta_info:
  def all(options = {}); end

  private

  def serialize(object)
    object.as_json
  end

  def deserialize(serialized); end

  def index_for(object, index); end

  def format_index_value(index_value); end

  def base_cache_path; end
end
