# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'google/apis/logging_v2/service.rb'
require 'google/apis/logging_v2/classes.rb'
require 'google/apis/logging_v2/representations.rb'
require 'google/apis/logging_v2/gem_version.rb'

module Google
  module Apis
    # Cloud Logging API
    #
    # Writes log entries and manages your Cloud Logging configuration. The table
    # entries below are presented in alphabetical order, not in order of common use.
    # For explanations of the concepts found in the table entries, read the
    # documentation at https://cloud.google.com/logging/docs.
    #
    # @see https://cloud.google.com/logging/docs/
    module LoggingV2
      # Version of the Cloud Logging API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V2'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # View your data across Google Cloud services and see the email address of your Google Account
      AUTH_CLOUD_PLATFORM_READ_ONLY = 'https://www.googleapis.com/auth/cloud-platform.read-only'

      # Administrate log data for your projects
      AUTH_LOGGING_ADMIN = 'https://www.googleapis.com/auth/logging.admin'

      # View log data for your projects
      AUTH_LOGGING_READ = 'https://www.googleapis.com/auth/logging.read'

      # Submit log data for your projects
      AUTH_LOGGING_WRITE = 'https://www.googleapis.com/auth/logging.write'
    end
  end
end
