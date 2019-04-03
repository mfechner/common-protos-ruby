# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/distribution.proto

require 'google/protobuf'

require 'google/protobuf/any_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.api.Distribution" do
    optional :count, :int64, 1
    optional :mean, :double, 2
    optional :sum_of_squared_deviation, :double, 3
    optional :range, :message, 4, "google.api.Distribution.Range"
    optional :bucket_options, :message, 6, "google.api.Distribution.BucketOptions"
    repeated :bucket_counts, :int64, 7
    repeated :exemplars, :message, 10, "google.api.Distribution.Exemplar"
  end
  add_message "google.api.Distribution.Range" do
    optional :min, :double, 1
    optional :max, :double, 2
  end
  add_message "google.api.Distribution.BucketOptions" do
    oneof :options do
      optional :linear_buckets, :message, 1, "google.api.Distribution.BucketOptions.Linear"
      optional :exponential_buckets, :message, 2, "google.api.Distribution.BucketOptions.Exponential"
      optional :explicit_buckets, :message, 3, "google.api.Distribution.BucketOptions.Explicit"
    end
  end
  add_message "google.api.Distribution.BucketOptions.Linear" do
    optional :num_finite_buckets, :int32, 1
    optional :width, :double, 2
    optional :offset, :double, 3
  end
  add_message "google.api.Distribution.BucketOptions.Exponential" do
    optional :num_finite_buckets, :int32, 1
    optional :growth_factor, :double, 2
    optional :scale, :double, 3
  end
  add_message "google.api.Distribution.BucketOptions.Explicit" do
    repeated :bounds, :double, 1
  end
  add_message "google.api.Distribution.Exemplar" do
    optional :value, :double, 1
    optional :timestamp, :message, 2, "google.protobuf.Timestamp"
    repeated :attachments, :message, 3, "google.protobuf.Any"
  end
end

module Google
  module Api
    Distribution = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Distribution").msgclass
    Distribution::Range = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Distribution.Range").msgclass
    Distribution::BucketOptions = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Distribution.BucketOptions").msgclass
    Distribution::BucketOptions::Linear = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Distribution.BucketOptions.Linear").msgclass
    Distribution::BucketOptions::Exponential = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Distribution.BucketOptions.Exponential").msgclass
    Distribution::BucketOptions::Explicit = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Distribution.BucketOptions.Explicit").msgclass
    Distribution::Exemplar = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Distribution.Exemplar").msgclass
  end
end
