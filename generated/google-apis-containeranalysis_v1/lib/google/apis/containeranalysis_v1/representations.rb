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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ContaineranalysisV1
      
      class AliasContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Artifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttestationNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttestationOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateNotesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateNotesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateOccurrencesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateOccurrencesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuilderConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CvsSv3
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Category
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CisBenchmark
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudRepoSourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Command
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Completeness
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComplianceNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComplianceOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComplianceVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DsseAttestationNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DsseAttestationOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DsseHint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Detail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiscoveryNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiscoveryOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Distribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Envelope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvelopeSignature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileHashes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Fingerprint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FixableTotalByDigest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GerritSourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetPolicyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitSourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HashProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Hint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Identity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InTotoProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InTotoStatement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Jwt
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KnowledgeBase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Layer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNoteOccurrencesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNotesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOccurrencesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NonCompliantFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Note
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Occurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackageIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackageNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackageOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectRepoId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Recipe
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RelatedUrl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepoId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Signature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeDistribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Version
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Volume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityOccurrencesSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WindowsDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WindowsUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AliasContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      class Artifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checksum, as: 'checksum'
          property :id, as: 'id'
          collection :names, as: 'names'
        end
      end
      
      class AttestationNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hint, as: 'hint', class: Google::Apis::ContaineranalysisV1::Hint, decorator: Google::Apis::ContaineranalysisV1::Hint::Representation
      
        end
      end
      
      class AttestationOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jwts, as: 'jwts', class: Google::Apis::ContaineranalysisV1::Jwt, decorator: Google::Apis::ContaineranalysisV1::Jwt::Representation
      
          property :serialized_payload, :base64 => true, as: 'serializedPayload'
          collection :signatures, as: 'signatures', class: Google::Apis::ContaineranalysisV1::Signature, decorator: Google::Apis::ContaineranalysisV1::Signature::Representation
      
        end
      end
      
      class BatchCreateNotesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :notes, as: 'notes', class: Google::Apis::ContaineranalysisV1::Note, decorator: Google::Apis::ContaineranalysisV1::Note::Representation
      
        end
      end
      
      class BatchCreateNotesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :notes, as: 'notes', class: Google::Apis::ContaineranalysisV1::Note, decorator: Google::Apis::ContaineranalysisV1::Note::Representation
      
        end
      end
      
      class BatchCreateOccurrencesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :occurrences, as: 'occurrences', class: Google::Apis::ContaineranalysisV1::Occurrence, decorator: Google::Apis::ContaineranalysisV1::Occurrence::Representation
      
        end
      end
      
      class BatchCreateOccurrencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :occurrences, as: 'occurrences', class: Google::Apis::ContaineranalysisV1::Occurrence, decorator: Google::Apis::ContaineranalysisV1::Occurrence::Representation
      
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::ContaineranalysisV1::Expr, decorator: Google::Apis::ContaineranalysisV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class BuildNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :builder_version, as: 'builderVersion'
        end
      end
      
      class BuildOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intoto_provenance, as: 'intotoProvenance', class: Google::Apis::ContaineranalysisV1::InTotoProvenance, decorator: Google::Apis::ContaineranalysisV1::InTotoProvenance::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::ContaineranalysisV1::BuildProvenance, decorator: Google::Apis::ContaineranalysisV1::BuildProvenance::Representation
      
          property :provenance_bytes, as: 'provenanceBytes'
        end
      end
      
      class BuildProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :build_options, as: 'buildOptions'
          property :builder_version, as: 'builderVersion'
          collection :built_artifacts, as: 'builtArtifacts', class: Google::Apis::ContaineranalysisV1::Artifact, decorator: Google::Apis::ContaineranalysisV1::Artifact::Representation
      
          collection :commands, as: 'commands', class: Google::Apis::ContaineranalysisV1::Command, decorator: Google::Apis::ContaineranalysisV1::Command::Representation
      
          property :create_time, as: 'createTime'
          property :creator, as: 'creator'
          property :end_time, as: 'endTime'
          property :id, as: 'id'
          property :logs_uri, as: 'logsUri'
          property :project_id, as: 'projectId'
          property :source_provenance, as: 'sourceProvenance', class: Google::Apis::ContaineranalysisV1::Source, decorator: Google::Apis::ContaineranalysisV1::Source::Representation
      
          property :start_time, as: 'startTime'
          property :trigger_id, as: 'triggerId'
        end
      end
      
      class BuildStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          property :dir, as: 'dir'
          property :entrypoint, as: 'entrypoint'
          collection :env, as: 'env'
          property :id, as: 'id'
          property :name, as: 'name'
          property :pull_timing, as: 'pullTiming', class: Google::Apis::ContaineranalysisV1::TimeSpan, decorator: Google::Apis::ContaineranalysisV1::TimeSpan::Representation
      
          property :script, as: 'script'
          collection :secret_env, as: 'secretEnv'
          property :status, as: 'status'
          property :timeout, as: 'timeout'
          property :timing, as: 'timing', class: Google::Apis::ContaineranalysisV1::TimeSpan, decorator: Google::Apis::ContaineranalysisV1::TimeSpan::Representation
      
          collection :volumes, as: 'volumes', class: Google::Apis::ContaineranalysisV1::Volume, decorator: Google::Apis::ContaineranalysisV1::Volume::Representation
      
          collection :wait_for, as: 'waitFor'
        end
      end
      
      class BuilderConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class CvsSv3
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attack_complexity, as: 'attackComplexity'
          property :attack_vector, as: 'attackVector'
          property :availability_impact, as: 'availabilityImpact'
          property :base_score, as: 'baseScore'
          property :confidentiality_impact, as: 'confidentialityImpact'
          property :exploitability_score, as: 'exploitabilityScore'
          property :impact_score, as: 'impactScore'
          property :integrity_impact, as: 'integrityImpact'
          property :privileges_required, as: 'privilegesRequired'
          property :scope, as: 'scope'
          property :user_interaction, as: 'userInteraction'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Category
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category_id, as: 'categoryId'
          property :name, as: 'name'
        end
      end
      
      class CisBenchmark
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :profile_level, as: 'profileLevel'
          property :severity, as: 'severity'
        end
      end
      
      class CloudRepoSourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias_context, as: 'aliasContext', class: Google::Apis::ContaineranalysisV1::AliasContext, decorator: Google::Apis::ContaineranalysisV1::AliasContext::Representation
      
          property :repo_id, as: 'repoId', class: Google::Apis::ContaineranalysisV1::RepoId, decorator: Google::Apis::ContaineranalysisV1::RepoId::Representation
      
          property :revision_id, as: 'revisionId'
        end
      end
      
      class Command
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          property :dir, as: 'dir'
          collection :env, as: 'env'
          property :id, as: 'id'
          property :name, as: 'name'
          collection :wait_for, as: 'waitFor'
        end
      end
      
      class Completeness
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :arguments, as: 'arguments'
          property :environment, as: 'environment'
          property :materials, as: 'materials'
        end
      end
      
      class ComplianceNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cis_benchmark, as: 'cisBenchmark', class: Google::Apis::ContaineranalysisV1::CisBenchmark, decorator: Google::Apis::ContaineranalysisV1::CisBenchmark::Representation
      
          property :description, as: 'description'
          property :rationale, as: 'rationale'
          property :remediation, as: 'remediation'
          property :scan_instructions, :base64 => true, as: 'scanInstructions'
          property :title, as: 'title'
          collection :version, as: 'version', class: Google::Apis::ContaineranalysisV1::ComplianceVersion, decorator: Google::Apis::ContaineranalysisV1::ComplianceVersion::Representation
      
        end
      end
      
      class ComplianceOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :non_compliance_reason, as: 'nonComplianceReason'
          collection :non_compliant_files, as: 'nonCompliantFiles', class: Google::Apis::ContaineranalysisV1::NonCompliantFile, decorator: Google::Apis::ContaineranalysisV1::NonCompliantFile::Representation
      
        end
      end
      
      class ComplianceVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpe_uri, as: 'cpeUri'
          property :version, as: 'version'
        end
      end
      
      class DsseAttestationNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hint, as: 'hint', class: Google::Apis::ContaineranalysisV1::DsseHint, decorator: Google::Apis::ContaineranalysisV1::DsseHint::Representation
      
        end
      end
      
      class DsseAttestationOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :envelope, as: 'envelope', class: Google::Apis::ContaineranalysisV1::Envelope, decorator: Google::Apis::ContaineranalysisV1::Envelope::Representation
      
          property :statement, as: 'statement', class: Google::Apis::ContaineranalysisV1::InTotoStatement, decorator: Google::Apis::ContaineranalysisV1::InTotoStatement::Representation
      
        end
      end
      
      class DsseHint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :human_readable_name, as: 'humanReadableName'
        end
      end
      
      class DeploymentNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_uri, as: 'resourceUri'
        end
      end
      
      class DeploymentOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :config, as: 'config'
          property :deploy_time, as: 'deployTime'
          property :platform, as: 'platform'
          collection :resource_uri, as: 'resourceUri'
          property :undeploy_time, as: 'undeployTime'
          property :user_email, as: 'userEmail'
        end
      end
      
      class Detail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :affected_cpe_uri, as: 'affectedCpeUri'
          property :affected_package, as: 'affectedPackage'
          property :affected_version_end, as: 'affectedVersionEnd', class: Google::Apis::ContaineranalysisV1::Version, decorator: Google::Apis::ContaineranalysisV1::Version::Representation
      
          property :affected_version_start, as: 'affectedVersionStart', class: Google::Apis::ContaineranalysisV1::Version, decorator: Google::Apis::ContaineranalysisV1::Version::Representation
      
          property :description, as: 'description'
          property :fixed_cpe_uri, as: 'fixedCpeUri'
          property :fixed_package, as: 'fixedPackage'
          property :fixed_version, as: 'fixedVersion', class: Google::Apis::ContaineranalysisV1::Version, decorator: Google::Apis::ContaineranalysisV1::Version::Representation
      
          property :is_obsolete, as: 'isObsolete'
          property :package_type, as: 'packageType'
          property :severity_name, as: 'severityName'
          property :source, as: 'source'
          property :source_update_time, as: 'sourceUpdateTime'
          property :vendor, as: 'vendor'
        end
      end
      
      class DiscoveryNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_kind, as: 'analysisKind'
        end
      end
      
      class DiscoveryOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_status, as: 'analysisStatus'
          property :analysis_status_error, as: 'analysisStatusError', class: Google::Apis::ContaineranalysisV1::Status, decorator: Google::Apis::ContaineranalysisV1::Status::Representation
      
          property :continuous_analysis, as: 'continuousAnalysis'
          property :cpe, as: 'cpe'
          property :last_scan_time, as: 'lastScanTime'
        end
      end
      
      class Distribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :cpe_uri, as: 'cpeUri'
          property :description, as: 'description'
          property :latest_version, as: 'latestVersion', class: Google::Apis::ContaineranalysisV1::Version, decorator: Google::Apis::ContaineranalysisV1::Version::Representation
      
          property :maintainer, as: 'maintainer'
          property :url, as: 'url'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Envelope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :payload, :base64 => true, as: 'payload'
          property :payload_type, as: 'payloadType'
          collection :signatures, as: 'signatures', class: Google::Apis::ContaineranalysisV1::EnvelopeSignature, decorator: Google::Apis::ContaineranalysisV1::EnvelopeSignature::Representation
      
        end
      end
      
      class EnvelopeSignature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :keyid, as: 'keyid'
          property :sig, :base64 => true, as: 'sig'
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class FileHashes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_hash, as: 'fileHash', class: Google::Apis::ContaineranalysisV1::HashProp, decorator: Google::Apis::ContaineranalysisV1::HashProp::Representation
      
        end
      end
      
      class Fingerprint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :v1_name, as: 'v1Name'
          collection :v2_blob, as: 'v2Blob'
          property :v2_name, as: 'v2Name'
        end
      end
      
      class FixableTotalByDigest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixable_count, :numeric_string => true, as: 'fixableCount'
          property :resource_uri, as: 'resourceUri'
          property :severity, as: 'severity'
          property :total_count, :numeric_string => true, as: 'totalCount'
        end
      end
      
      class GerritSourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias_context, as: 'aliasContext', class: Google::Apis::ContaineranalysisV1::AliasContext, decorator: Google::Apis::ContaineranalysisV1::AliasContext::Representation
      
          property :gerrit_project, as: 'gerritProject'
          property :host_uri, as: 'hostUri'
          property :revision_id, as: 'revisionId'
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::ContaineranalysisV1::GetPolicyOptions, decorator: Google::Apis::ContaineranalysisV1::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class GitSourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :revision_id, as: 'revisionId'
          property :url, as: 'url'
        end
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
        end
      end
      
      class HashProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class Hint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :human_readable_name, as: 'humanReadableName'
        end
      end
      
      class Identity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :revision, as: 'revision'
          property :update_id, as: 'updateId'
        end
      end
      
      class ImageNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, as: 'fingerprint', class: Google::Apis::ContaineranalysisV1::Fingerprint, decorator: Google::Apis::ContaineranalysisV1::Fingerprint::Representation
      
          property :resource_url, as: 'resourceUrl'
        end
      end
      
      class ImageOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_resource_url, as: 'baseResourceUrl'
          property :distance, as: 'distance'
          property :fingerprint, as: 'fingerprint', class: Google::Apis::ContaineranalysisV1::Fingerprint, decorator: Google::Apis::ContaineranalysisV1::Fingerprint::Representation
      
          collection :layer_info, as: 'layerInfo', class: Google::Apis::ContaineranalysisV1::Layer, decorator: Google::Apis::ContaineranalysisV1::Layer::Representation
      
        end
      end
      
      class InTotoProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :builder_config, as: 'builderConfig', class: Google::Apis::ContaineranalysisV1::BuilderConfig, decorator: Google::Apis::ContaineranalysisV1::BuilderConfig::Representation
      
          collection :materials, as: 'materials'
          property :metadata, as: 'metadata', class: Google::Apis::ContaineranalysisV1::Metadata, decorator: Google::Apis::ContaineranalysisV1::Metadata::Representation
      
          property :recipe, as: 'recipe', class: Google::Apis::ContaineranalysisV1::Recipe, decorator: Google::Apis::ContaineranalysisV1::Recipe::Representation
      
        end
      end
      
      class InTotoStatement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :predicate_type, as: 'predicateType'
          property :provenance, as: 'provenance', class: Google::Apis::ContaineranalysisV1::InTotoProvenance, decorator: Google::Apis::ContaineranalysisV1::InTotoProvenance::Representation
      
          collection :subject, as: 'subject', class: Google::Apis::ContaineranalysisV1::Subject, decorator: Google::Apis::ContaineranalysisV1::Subject::Representation
      
          property :type, as: 'type'
        end
      end
      
      class Jwt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compact_jwt, as: 'compactJwt'
        end
      end
      
      class KnowledgeBase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :url, as: 'url'
        end
      end
      
      class Layer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :arguments, as: 'arguments'
          property :directive, as: 'directive'
        end
      end
      
      class ListNoteOccurrencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :occurrences, as: 'occurrences', class: Google::Apis::ContaineranalysisV1::Occurrence, decorator: Google::Apis::ContaineranalysisV1::Occurrence::Representation
      
        end
      end
      
      class ListNotesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :notes, as: 'notes', class: Google::Apis::ContaineranalysisV1::Note, decorator: Google::Apis::ContaineranalysisV1::Note::Representation
      
        end
      end
      
      class ListOccurrencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :occurrences, as: 'occurrences', class: Google::Apis::ContaineranalysisV1::Occurrence, decorator: Google::Apis::ContaineranalysisV1::Occurrence::Representation
      
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ContaineranalysisV1::Operation, decorator: Google::Apis::ContaineranalysisV1::Operation::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpe_uri, as: 'cpeUri'
          property :path, as: 'path'
          property :version, as: 'version', class: Google::Apis::ContaineranalysisV1::Version, decorator: Google::Apis::ContaineranalysisV1::Version::Representation
      
        end
      end
      
      class Metadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build_finished_on, as: 'buildFinishedOn'
          property :build_invocation_id, as: 'buildInvocationId'
          property :build_started_on, as: 'buildStartedOn'
          property :completeness, as: 'completeness', class: Google::Apis::ContaineranalysisV1::Completeness, decorator: Google::Apis::ContaineranalysisV1::Completeness::Representation
      
          property :reproducible, as: 'reproducible'
        end
      end
      
      class NonCompliantFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_command, as: 'displayCommand'
          property :path, as: 'path'
          property :reason, as: 'reason'
        end
      end
      
      class Note
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attestation, as: 'attestation', class: Google::Apis::ContaineranalysisV1::AttestationNote, decorator: Google::Apis::ContaineranalysisV1::AttestationNote::Representation
      
          property :build, as: 'build', class: Google::Apis::ContaineranalysisV1::BuildNote, decorator: Google::Apis::ContaineranalysisV1::BuildNote::Representation
      
          property :compliance, as: 'compliance', class: Google::Apis::ContaineranalysisV1::ComplianceNote, decorator: Google::Apis::ContaineranalysisV1::ComplianceNote::Representation
      
          property :create_time, as: 'createTime'
          property :deployment, as: 'deployment', class: Google::Apis::ContaineranalysisV1::DeploymentNote, decorator: Google::Apis::ContaineranalysisV1::DeploymentNote::Representation
      
          property :discovery, as: 'discovery', class: Google::Apis::ContaineranalysisV1::DiscoveryNote, decorator: Google::Apis::ContaineranalysisV1::DiscoveryNote::Representation
      
          property :dsse_attestation, as: 'dsseAttestation', class: Google::Apis::ContaineranalysisV1::DsseAttestationNote, decorator: Google::Apis::ContaineranalysisV1::DsseAttestationNote::Representation
      
          property :expiration_time, as: 'expirationTime'
          property :image, as: 'image', class: Google::Apis::ContaineranalysisV1::ImageNote, decorator: Google::Apis::ContaineranalysisV1::ImageNote::Representation
      
          property :kind, as: 'kind'
          property :long_description, as: 'longDescription'
          property :name, as: 'name'
          property :package, as: 'package', class: Google::Apis::ContaineranalysisV1::PackageNote, decorator: Google::Apis::ContaineranalysisV1::PackageNote::Representation
      
          collection :related_note_names, as: 'relatedNoteNames'
          collection :related_url, as: 'relatedUrl', class: Google::Apis::ContaineranalysisV1::RelatedUrl, decorator: Google::Apis::ContaineranalysisV1::RelatedUrl::Representation
      
          property :short_description, as: 'shortDescription'
          property :update_time, as: 'updateTime'
          property :upgrade, as: 'upgrade', class: Google::Apis::ContaineranalysisV1::UpgradeNote, decorator: Google::Apis::ContaineranalysisV1::UpgradeNote::Representation
      
          property :vulnerability, as: 'vulnerability', class: Google::Apis::ContaineranalysisV1::VulnerabilityNote, decorator: Google::Apis::ContaineranalysisV1::VulnerabilityNote::Representation
      
        end
      end
      
      class Occurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attestation, as: 'attestation', class: Google::Apis::ContaineranalysisV1::AttestationOccurrence, decorator: Google::Apis::ContaineranalysisV1::AttestationOccurrence::Representation
      
          property :build, as: 'build', class: Google::Apis::ContaineranalysisV1::BuildOccurrence, decorator: Google::Apis::ContaineranalysisV1::BuildOccurrence::Representation
      
          property :compliance, as: 'compliance', class: Google::Apis::ContaineranalysisV1::ComplianceOccurrence, decorator: Google::Apis::ContaineranalysisV1::ComplianceOccurrence::Representation
      
          property :create_time, as: 'createTime'
          property :deployment, as: 'deployment', class: Google::Apis::ContaineranalysisV1::DeploymentOccurrence, decorator: Google::Apis::ContaineranalysisV1::DeploymentOccurrence::Representation
      
          property :discovery, as: 'discovery', class: Google::Apis::ContaineranalysisV1::DiscoveryOccurrence, decorator: Google::Apis::ContaineranalysisV1::DiscoveryOccurrence::Representation
      
          property :dsse_attestation, as: 'dsseAttestation', class: Google::Apis::ContaineranalysisV1::DsseAttestationOccurrence, decorator: Google::Apis::ContaineranalysisV1::DsseAttestationOccurrence::Representation
      
          property :envelope, as: 'envelope', class: Google::Apis::ContaineranalysisV1::Envelope, decorator: Google::Apis::ContaineranalysisV1::Envelope::Representation
      
          property :image, as: 'image', class: Google::Apis::ContaineranalysisV1::ImageOccurrence, decorator: Google::Apis::ContaineranalysisV1::ImageOccurrence::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :note_name, as: 'noteName'
          property :package, as: 'package', class: Google::Apis::ContaineranalysisV1::PackageOccurrence, decorator: Google::Apis::ContaineranalysisV1::PackageOccurrence::Representation
      
          property :remediation, as: 'remediation'
          property :resource_uri, as: 'resourceUri'
          property :update_time, as: 'updateTime'
          property :upgrade, as: 'upgrade', class: Google::Apis::ContaineranalysisV1::UpgradeOccurrence, decorator: Google::Apis::ContaineranalysisV1::UpgradeOccurrence::Representation
      
          property :vulnerability, as: 'vulnerability', class: Google::Apis::ContaineranalysisV1::VulnerabilityOccurrence, decorator: Google::Apis::ContaineranalysisV1::VulnerabilityOccurrence::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ContaineranalysisV1::Status, decorator: Google::Apis::ContaineranalysisV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class PackageIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :affected_cpe_uri, as: 'affectedCpeUri'
          property :affected_package, as: 'affectedPackage'
          property :affected_version, as: 'affectedVersion', class: Google::Apis::ContaineranalysisV1::Version, decorator: Google::Apis::ContaineranalysisV1::Version::Representation
      
          property :effective_severity, as: 'effectiveSeverity'
          property :fix_available, as: 'fixAvailable'
          property :fixed_cpe_uri, as: 'fixedCpeUri'
          property :fixed_package, as: 'fixedPackage'
          property :fixed_version, as: 'fixedVersion', class: Google::Apis::ContaineranalysisV1::Version, decorator: Google::Apis::ContaineranalysisV1::Version::Representation
      
          property :package_type, as: 'packageType'
        end
      end
      
      class PackageNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :distribution, as: 'distribution', class: Google::Apis::ContaineranalysisV1::Distribution, decorator: Google::Apis::ContaineranalysisV1::Distribution::Representation
      
          property :name, as: 'name'
        end
      end
      
      class PackageOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :location, as: 'location', class: Google::Apis::ContaineranalysisV1::Location, decorator: Google::Apis::ContaineranalysisV1::Location::Representation
      
          property :name, as: 'name'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::ContaineranalysisV1::Binding, decorator: Google::Apis::ContaineranalysisV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ProjectRepoId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
          property :repo_name, as: 'repoName'
        end
      end
      
      class Recipe
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :arguments, as: 'arguments'
          property :defined_in_material, :numeric_string => true, as: 'definedInMaterial'
          property :entry_point, as: 'entryPoint'
          collection :environment, as: 'environment'
          property :type, as: 'type'
        end
      end
      
      class RelatedUrl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :url, as: 'url'
        end
      end
      
      class RepoId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_repo_id, as: 'projectRepoId', class: Google::Apis::ContaineranalysisV1::ProjectRepoId, decorator: Google::Apis::ContaineranalysisV1::ProjectRepoId::Representation
      
          property :uid, as: 'uid'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::ContaineranalysisV1::Policy, decorator: Google::Apis::ContaineranalysisV1::Policy::Representation
      
        end
      end
      
      class Signature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :public_key_id, as: 'publicKeyId'
          property :signature, :base64 => true, as: 'signature'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_contexts, as: 'additionalContexts', class: Google::Apis::ContaineranalysisV1::SourceContext, decorator: Google::Apis::ContaineranalysisV1::SourceContext::Representation
      
          property :artifact_storage_source_uri, as: 'artifactStorageSourceUri'
          property :context, as: 'context', class: Google::Apis::ContaineranalysisV1::SourceContext, decorator: Google::Apis::ContaineranalysisV1::SourceContext::Representation
      
          hash :file_hashes, as: 'fileHashes', class: Google::Apis::ContaineranalysisV1::FileHashes, decorator: Google::Apis::ContaineranalysisV1::FileHashes::Representation
      
        end
      end
      
      class SourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_repo, as: 'cloudRepo', class: Google::Apis::ContaineranalysisV1::CloudRepoSourceContext, decorator: Google::Apis::ContaineranalysisV1::CloudRepoSourceContext::Representation
      
          property :gerrit, as: 'gerrit', class: Google::Apis::ContaineranalysisV1::GerritSourceContext, decorator: Google::Apis::ContaineranalysisV1::GerritSourceContext::Representation
      
          property :git, as: 'git', class: Google::Apis::ContaineranalysisV1::GitSourceContext, decorator: Google::Apis::ContaineranalysisV1::GitSourceContext::Representation
      
          hash :labels, as: 'labels'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class Subject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :digest, as: 'digest'
          property :name, as: 'name'
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TimeSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class UpgradeDistribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :classification, as: 'classification'
          property :cpe_uri, as: 'cpeUri'
          collection :cve, as: 'cve'
          property :severity, as: 'severity'
        end
      end
      
      class UpgradeNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :distributions, as: 'distributions', class: Google::Apis::ContaineranalysisV1::UpgradeDistribution, decorator: Google::Apis::ContaineranalysisV1::UpgradeDistribution::Representation
      
          property :package, as: 'package'
          property :version, as: 'version', class: Google::Apis::ContaineranalysisV1::Version, decorator: Google::Apis::ContaineranalysisV1::Version::Representation
      
          property :windows_update, as: 'windowsUpdate', class: Google::Apis::ContaineranalysisV1::WindowsUpdate, decorator: Google::Apis::ContaineranalysisV1::WindowsUpdate::Representation
      
        end
      end
      
      class UpgradeOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :distribution, as: 'distribution', class: Google::Apis::ContaineranalysisV1::UpgradeDistribution, decorator: Google::Apis::ContaineranalysisV1::UpgradeDistribution::Representation
      
          property :package, as: 'package'
          property :parsed_version, as: 'parsedVersion', class: Google::Apis::ContaineranalysisV1::Version, decorator: Google::Apis::ContaineranalysisV1::Version::Representation
      
          property :windows_update, as: 'windowsUpdate', class: Google::Apis::ContaineranalysisV1::WindowsUpdate, decorator: Google::Apis::ContaineranalysisV1::WindowsUpdate::Representation
      
        end
      end
      
      class Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :epoch, as: 'epoch'
          property :full_name, as: 'fullName'
          property :inclusive, as: 'inclusive'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :revision, as: 'revision'
        end
      end
      
      class Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :path, as: 'path'
        end
      end
      
      class VulnerabilityNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cvss_score, as: 'cvssScore'
          property :cvss_v3, as: 'cvssV3', class: Google::Apis::ContaineranalysisV1::CvsSv3, decorator: Google::Apis::ContaineranalysisV1::CvsSv3::Representation
      
          collection :details, as: 'details', class: Google::Apis::ContaineranalysisV1::Detail, decorator: Google::Apis::ContaineranalysisV1::Detail::Representation
      
          property :severity, as: 'severity'
          property :source_update_time, as: 'sourceUpdateTime'
          collection :windows_details, as: 'windowsDetails', class: Google::Apis::ContaineranalysisV1::WindowsDetail, decorator: Google::Apis::ContaineranalysisV1::WindowsDetail::Representation
      
        end
      end
      
      class VulnerabilityOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cvss_score, as: 'cvssScore'
          property :effective_severity, as: 'effectiveSeverity'
          property :fix_available, as: 'fixAvailable'
          property :long_description, as: 'longDescription'
          collection :package_issue, as: 'packageIssue', class: Google::Apis::ContaineranalysisV1::PackageIssue, decorator: Google::Apis::ContaineranalysisV1::PackageIssue::Representation
      
          collection :related_urls, as: 'relatedUrls', class: Google::Apis::ContaineranalysisV1::RelatedUrl, decorator: Google::Apis::ContaineranalysisV1::RelatedUrl::Representation
      
          property :severity, as: 'severity'
          property :short_description, as: 'shortDescription'
          property :type, as: 'type'
        end
      end
      
      class VulnerabilityOccurrencesSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :counts, as: 'counts', class: Google::Apis::ContaineranalysisV1::FixableTotalByDigest, decorator: Google::Apis::ContaineranalysisV1::FixableTotalByDigest::Representation
      
        end
      end
      
      class WindowsDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpe_uri, as: 'cpeUri'
          property :description, as: 'description'
          collection :fixing_kbs, as: 'fixingKbs', class: Google::Apis::ContaineranalysisV1::KnowledgeBase, decorator: Google::Apis::ContaineranalysisV1::KnowledgeBase::Representation
      
          property :name, as: 'name'
        end
      end
      
      class WindowsUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::ContaineranalysisV1::Category, decorator: Google::Apis::ContaineranalysisV1::Category::Representation
      
          property :description, as: 'description'
          property :identity, as: 'identity', class: Google::Apis::ContaineranalysisV1::Identity, decorator: Google::Apis::ContaineranalysisV1::Identity::Representation
      
          collection :kb_article_ids, as: 'kbArticleIds'
          property :last_published_timestamp, as: 'lastPublishedTimestamp'
          property :support_url, as: 'supportUrl'
          property :title, as: 'title'
        end
      end
    end
  end
end