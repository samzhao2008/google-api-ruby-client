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
      
      # An alias to a repo revision.
      class AliasContext
        include Google::Apis::Core::Hashable
      
        # The alias kind.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The alias name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Artifact describes a build product.
      class Artifact
        include Google::Apis::Core::Hashable
      
        # Hash or checksum value of a binary, or Docker Registry 2.0 digest of a
        # container.
        # Corresponds to the JSON property `checksum`
        # @return [String]
        attr_accessor :checksum
      
        # Artifact ID, if any; for container images, this will be a URL by digest like `
        # gcr.io/projectID/imagename@sha256:123456`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Related artifact names. This may be the path to a binary or jar file, or in
        # the case of a container build, the name used to push the container image to
        # Google Container Registry, as presented to `docker push`. Note that a single
        # Artifact ID can have multiple names, for example if two tags are applied to
        # one image.
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checksum = args[:checksum] if args.key?(:checksum)
          @id = args[:id] if args.key?(:id)
          @names = args[:names] if args.key?(:names)
        end
      end
      
      # Note kind that represents a logical attestation "role" or "authority". For
      # example, an organization might have one `Authority` for "QA" and one for "
      # build". This note is intended to act strictly as a grouping mechanism for the
      # attached occurrences (Attestations). This grouping mechanism also provides a
      # security boundary, since IAM ACLs gate the ability for a principle to attach
      # an occurrence to a given note. It also provides a single point of lookup to
      # find all attached attestation occurrences, even if they don't all live in the
      # same project.
      class AttestationNote
        include Google::Apis::Core::Hashable
      
        # This submessage provides human-readable hints about the purpose of the
        # authority. Because the name of a note acts as its resource reference, it is
        # important to disambiguate the canonical name of the Note (which might be a
        # UUID for security purposes) from "readable" names more suitable for debug
        # output. Note that these hints should not be used to look up authorities in
        # security sensitive contexts, such as when looking up attestations to verify.
        # Corresponds to the JSON property `hint`
        # @return [Google::Apis::ContaineranalysisV1::Hint]
        attr_accessor :hint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hint = args[:hint] if args.key?(:hint)
        end
      end
      
      # Occurrence that represents a single "attestation". The authenticity of an
      # attestation can be verified using the attached signature. If the verifier
      # trusts the public key of the signer, then verifying the signature is
      # sufficient to establish trust. In this circumstance, the authority to which
      # this attestation is attached is primarily useful for lookup (how to find this
      # attestation if you already know the authority and artifact to be verified) and
      # intent (for which authority this attestation was intended to sign.
      class AttestationOccurrence
        include Google::Apis::Core::Hashable
      
        # One or more JWTs encoding a self-contained attestation. Each JWT encodes the
        # payload that it verifies within the JWT itself. Verifier implementation SHOULD
        # ignore the `serialized_payload` field when verifying these JWTs. If only JWTs
        # are present on this AttestationOccurrence, then the `serialized_payload`
        # SHOULD be left empty. Each JWT SHOULD encode a claim specific to the `
        # resource_uri` of this Occurrence, but this is not validated by Grafeas
        # metadata API implementations. The JWT itself is opaque to Grafeas.
        # Corresponds to the JSON property `jwts`
        # @return [Array<Google::Apis::ContaineranalysisV1::Jwt>]
        attr_accessor :jwts
      
        # Required. The serialized payload that is verified by one or more `signatures`.
        # Corresponds to the JSON property `serializedPayload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :serialized_payload
      
        # One or more signatures over `serialized_payload`. Verifier implementations
        # should consider this attestation message verified if at least one `signature`
        # verifies `serialized_payload`. See `Signature` in common.proto for more
        # details on signature structure and verification.
        # Corresponds to the JSON property `signatures`
        # @return [Array<Google::Apis::ContaineranalysisV1::Signature>]
        attr_accessor :signatures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jwts = args[:jwts] if args.key?(:jwts)
          @serialized_payload = args[:serialized_payload] if args.key?(:serialized_payload)
          @signatures = args[:signatures] if args.key?(:signatures)
        end
      end
      
      # Request to create notes in batch.
      class BatchCreateNotesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The notes to create. Max allowed length is 1000.
        # Corresponds to the JSON property `notes`
        # @return [Hash<String,Google::Apis::ContaineranalysisV1::Note>]
        attr_accessor :notes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @notes = args[:notes] if args.key?(:notes)
        end
      end
      
      # Response for creating notes in batch.
      class BatchCreateNotesResponse
        include Google::Apis::Core::Hashable
      
        # The notes that were created.
        # Corresponds to the JSON property `notes`
        # @return [Array<Google::Apis::ContaineranalysisV1::Note>]
        attr_accessor :notes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @notes = args[:notes] if args.key?(:notes)
        end
      end
      
      # Request to create occurrences in batch.
      class BatchCreateOccurrencesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The occurrences to create. Max allowed length is 1000.
        # Corresponds to the JSON property `occurrences`
        # @return [Array<Google::Apis::ContaineranalysisV1::Occurrence>]
        attr_accessor :occurrences
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @occurrences = args[:occurrences] if args.key?(:occurrences)
        end
      end
      
      # Response for creating occurrences in batch.
      class BatchCreateOccurrencesResponse
        include Google::Apis::Core::Hashable
      
        # The occurrences that were created.
        # Corresponds to the JSON property `occurrences`
        # @return [Array<Google::Apis::ContaineranalysisV1::Occurrence>]
        attr_accessor :occurrences
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @occurrences = args[:occurrences] if args.key?(:occurrences)
        end
      end
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::ContaineranalysisV1::Expr]
        attr_accessor :condition
      
        # Specifies the identities requesting access for a Cloud Platform resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. * `
        # user:`emailid``: An email address that represents a specific Google account.
        # For example, `alice@example.com` . * `serviceAccount:`emailid``: An email
        # address that represents a service account. For example, `my-other-app@appspot.
        # gserviceaccount.com`. * `group:`emailid``: An email address that represents a
        # Google group. For example, `admins@example.com`. * `deleted:user:`emailid`?uid=
        # `uniqueid``: An email address (plus unique identifier) representing a user
        # that has been recently deleted. For example, `alice@example.com?uid=
        # 123456789012345678901`. If the user is recovered, this value reverts to `user:`
        # emailid`` and the recovered user retains the role in the binding. * `deleted:
        # serviceAccount:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a service account that has been recently deleted. For
        # example, `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`.
        # If the service account is undeleted, this value reverts to `serviceAccount:`
        # emailid`` and the undeleted service account retains the role in the binding. *
        # `deleted:group:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a Google group that has been recently deleted. For
        # example, `admins@example.com?uid=123456789012345678901`. If the group is
        # recovered, this value reverts to `group:`emailid`` and the recovered group
        # retains the role in the binding. * `domain:`domain``: The G Suite domain (
        # primary) that represents all the users of that domain. For example, `google.
        # com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`. For example, `roles/viewer`, `roles/editor`
        # , or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Note holding the version of the provider's builder and the signature of the
      # provenance message in the build details occurrence.
      class BuildNote
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Version of the builder which produced this build.
        # Corresponds to the JSON property `builderVersion`
        # @return [String]
        attr_accessor :builder_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @builder_version = args[:builder_version] if args.key?(:builder_version)
        end
      end
      
      # Details of a build occurrence.
      class BuildOccurrence
        include Google::Apis::Core::Hashable
      
        # In-toto Provenance representation as defined in spec.
        # Corresponds to the JSON property `intotoProvenance`
        # @return [Google::Apis::ContaineranalysisV1::InTotoProvenance]
        attr_accessor :intoto_provenance
      
        # Provenance of a build. Contains all information needed to verify the full
        # details about the build from source to completion.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::ContaineranalysisV1::BuildProvenance]
        attr_accessor :provenance
      
        # Serialized JSON representation of the provenance, used in generating the build
        # signature in the corresponding build note. After verifying the signature, `
        # provenance_bytes` can be unmarshalled and compared to the provenance to
        # confirm that it is unchanged. A base64-encoded string representation of the
        # provenance bytes is used for the signature in order to interoperate with
        # openssl which expects this format for signature verification. The serialized
        # form is captured both to avoid ambiguity in how the provenance is marshalled
        # to json as well to prevent incompatibilities with future changes.
        # Corresponds to the JSON property `provenanceBytes`
        # @return [String]
        attr_accessor :provenance_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intoto_provenance = args[:intoto_provenance] if args.key?(:intoto_provenance)
          @provenance = args[:provenance] if args.key?(:provenance)
          @provenance_bytes = args[:provenance_bytes] if args.key?(:provenance_bytes)
        end
      end
      
      # Provenance of a build. Contains all information needed to verify the full
      # details about the build from source to completion.
      class BuildProvenance
        include Google::Apis::Core::Hashable
      
        # Special options applied to this build. This is a catch-all field where build
        # providers can enter any desired additional details.
        # Corresponds to the JSON property `buildOptions`
        # @return [Hash<String,String>]
        attr_accessor :build_options
      
        # Version string of the builder at the time this build was executed.
        # Corresponds to the JSON property `builderVersion`
        # @return [String]
        attr_accessor :builder_version
      
        # Output of the build.
        # Corresponds to the JSON property `builtArtifacts`
        # @return [Array<Google::Apis::ContaineranalysisV1::Artifact>]
        attr_accessor :built_artifacts
      
        # Commands requested by the build.
        # Corresponds to the JSON property `commands`
        # @return [Array<Google::Apis::ContaineranalysisV1::Command>]
        attr_accessor :commands
      
        # Time at which the build was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # E-mail address of the user who initiated this build. Note that this was the
        # user's e-mail address at the time the build was initiated; this address may
        # not represent the same end-user for all time.
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # Time at which execution of the build was finished.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. Unique identifier of the build.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # URI where any logs for this provenance were written.
        # Corresponds to the JSON property `logsUri`
        # @return [String]
        attr_accessor :logs_uri
      
        # ID of the project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Source describes the location of the source used for the build.
        # Corresponds to the JSON property `sourceProvenance`
        # @return [Google::Apis::ContaineranalysisV1::Source]
        attr_accessor :source_provenance
      
        # Time at which execution of the build was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Trigger identifier if the build was triggered automatically; empty if not.
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_options = args[:build_options] if args.key?(:build_options)
          @builder_version = args[:builder_version] if args.key?(:builder_version)
          @built_artifacts = args[:built_artifacts] if args.key?(:built_artifacts)
          @commands = args[:commands] if args.key?(:commands)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @end_time = args[:end_time] if args.key?(:end_time)
          @id = args[:id] if args.key?(:id)
          @logs_uri = args[:logs_uri] if args.key?(:logs_uri)
          @project_id = args[:project_id] if args.key?(:project_id)
          @source_provenance = args[:source_provenance] if args.key?(:source_provenance)
          @start_time = args[:start_time] if args.key?(:start_time)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
        end
      end
      
      # A step in the build pipeline.
      class BuildStep
        include Google::Apis::Core::Hashable
      
        # A list of arguments that will be presented to the step when it is started. If
        # the image used to run the step's container has an entrypoint, the `args` are
        # used as arguments to that entrypoint. If the image does not define an
        # entrypoint, the first element in args is used as the entrypoint, and the
        # remainder will be used as arguments.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Working directory to use when running this step's container. If this value is
        # a relative path, it is relative to the build's working directory. If this
        # value is absolute, it may be outside the build's working directory, in which
        # case the contents of the path may not be persisted across build step
        # executions, unless a `volume` for that path is specified. If the build
        # specifies a `RepoSource` with `dir` and a step with a `dir`, which specifies
        # an absolute path, the `RepoSource` `dir` is ignored for the step's execution.
        # Corresponds to the JSON property `dir`
        # @return [String]
        attr_accessor :dir
      
        # Entrypoint to be used instead of the build step image's default entrypoint. If
        # unset, the image's default entrypoint is used.
        # Corresponds to the JSON property `entrypoint`
        # @return [String]
        attr_accessor :entrypoint
      
        # A list of environment variable definitions to be used when running a step. The
        # elements are of the form "KEY=VALUE" for the environment variable "KEY" being
        # given the value "VALUE".
        # Corresponds to the JSON property `env`
        # @return [Array<String>]
        attr_accessor :env
      
        # Unique identifier for this build step, used in `wait_for` to reference this
        # build step as a dependency.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. The name of the container image that will run this particular build
        # step. If the image is available in the host's Docker daemon's cache, it will
        # be run directly. If not, the host will attempt to pull the image first, using
        # the builder service account's credentials if necessary. The Docker daemon's
        # cache will already have the latest versions of all of the officially supported
        # build steps ([https://github.com/GoogleCloudPlatform/cloud-builders](https://
        # github.com/GoogleCloudPlatform/cloud-builders)). The Docker daemon will also
        # have cached many of the layers for some popular images, like "ubuntu", "debian"
        # , but they will be refreshed at the time you attempt to use them. If you built
        # an image in a previous build step, it will be stored in the host's Docker
        # daemon's cache and is available to use as the name for a later build step.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `pullTiming`
        # @return [Google::Apis::ContaineranalysisV1::TimeSpan]
        attr_accessor :pull_timing
      
        # A shell script to be executed in the step. When script is provided, the user
        # cannot specify the entrypoint or args.
        # Corresponds to the JSON property `script`
        # @return [String]
        attr_accessor :script
      
        # A list of environment variables which are encrypted using a Cloud Key
        # Management Service crypto key. These values must be specified in the build's `
        # Secret`.
        # Corresponds to the JSON property `secretEnv`
        # @return [Array<String>]
        attr_accessor :secret_env
      
        # Output only. Status of the build step. At this time, build step status is only
        # updated on build completion; step status is not updated in real-time as the
        # build progresses.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Time limit for executing this build step. If not defined, the step has no time
        # limit and will be allowed to continue to run until either it completes or the
        # build itself times out.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `timing`
        # @return [Google::Apis::ContaineranalysisV1::TimeSpan]
        attr_accessor :timing
      
        # List of volumes to mount into the build step. Each volume is created as an
        # empty volume prior to execution of the build step. Upon completion of the
        # build, volumes and their contents are discarded. Using a named volume in only
        # one step is not valid as it is indicative of a build request with an incorrect
        # configuration.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::ContaineranalysisV1::Volume>]
        attr_accessor :volumes
      
        # The ID(s) of the step(s) that this build step depends on. This build step will
        # not start until all the build steps in `wait_for` have completed successfully.
        # If `wait_for` is empty, this build step will start when all previous build
        # steps in the `Build.Steps` list have completed successfully.
        # Corresponds to the JSON property `waitFor`
        # @return [Array<String>]
        attr_accessor :wait_for
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @dir = args[:dir] if args.key?(:dir)
          @entrypoint = args[:entrypoint] if args.key?(:entrypoint)
          @env = args[:env] if args.key?(:env)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @pull_timing = args[:pull_timing] if args.key?(:pull_timing)
          @script = args[:script] if args.key?(:script)
          @secret_env = args[:secret_env] if args.key?(:secret_env)
          @status = args[:status] if args.key?(:status)
          @timeout = args[:timeout] if args.key?(:timeout)
          @timing = args[:timing] if args.key?(:timing)
          @volumes = args[:volumes] if args.key?(:volumes)
          @wait_for = args[:wait_for] if args.key?(:wait_for)
        end
      end
      
      # 
      class BuilderConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Common Vulnerability Scoring System version 3. For details, see https://www.
      # first.org/cvss/specification-document
      class CvsSv3
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attackComplexity`
        # @return [String]
        attr_accessor :attack_complexity
      
        # Base Metrics Represents the intrinsic characteristics of a vulnerability that
        # are constant over time and across user environments.
        # Corresponds to the JSON property `attackVector`
        # @return [String]
        attr_accessor :attack_vector
      
        # 
        # Corresponds to the JSON property `availabilityImpact`
        # @return [String]
        attr_accessor :availability_impact
      
        # The base score is a function of the base metric scores.
        # Corresponds to the JSON property `baseScore`
        # @return [Float]
        attr_accessor :base_score
      
        # 
        # Corresponds to the JSON property `confidentialityImpact`
        # @return [String]
        attr_accessor :confidentiality_impact
      
        # 
        # Corresponds to the JSON property `exploitabilityScore`
        # @return [Float]
        attr_accessor :exploitability_score
      
        # 
        # Corresponds to the JSON property `impactScore`
        # @return [Float]
        attr_accessor :impact_score
      
        # 
        # Corresponds to the JSON property `integrityImpact`
        # @return [String]
        attr_accessor :integrity_impact
      
        # 
        # Corresponds to the JSON property `privilegesRequired`
        # @return [String]
        attr_accessor :privileges_required
      
        # 
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # 
        # Corresponds to the JSON property `userInteraction`
        # @return [String]
        attr_accessor :user_interaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attack_complexity = args[:attack_complexity] if args.key?(:attack_complexity)
          @attack_vector = args[:attack_vector] if args.key?(:attack_vector)
          @availability_impact = args[:availability_impact] if args.key?(:availability_impact)
          @base_score = args[:base_score] if args.key?(:base_score)
          @confidentiality_impact = args[:confidentiality_impact] if args.key?(:confidentiality_impact)
          @exploitability_score = args[:exploitability_score] if args.key?(:exploitability_score)
          @impact_score = args[:impact_score] if args.key?(:impact_score)
          @integrity_impact = args[:integrity_impact] if args.key?(:integrity_impact)
          @privileges_required = args[:privileges_required] if args.key?(:privileges_required)
          @scope = args[:scope] if args.key?(:scope)
          @user_interaction = args[:user_interaction] if args.key?(:user_interaction)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The category to which the update belongs.
      class Category
        include Google::Apis::Core::Hashable
      
        # The identifier of the category.
        # Corresponds to the JSON property `categoryId`
        # @return [String]
        attr_accessor :category_id
      
        # The localized name of the category.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category_id = args[:category_id] if args.key?(:category_id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A compliance check that is a CIS benchmark.
      class CisBenchmark
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `profileLevel`
        # @return [Fixnum]
        attr_accessor :profile_level
      
        # 
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @profile_level = args[:profile_level] if args.key?(:profile_level)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # A CloudRepoSourceContext denotes a particular revision in a Google Cloud
      # Source Repo.
      class CloudRepoSourceContext
        include Google::Apis::Core::Hashable
      
        # An alias to a repo revision.
        # Corresponds to the JSON property `aliasContext`
        # @return [Google::Apis::ContaineranalysisV1::AliasContext]
        attr_accessor :alias_context
      
        # A unique identifier for a Cloud Repo.
        # Corresponds to the JSON property `repoId`
        # @return [Google::Apis::ContaineranalysisV1::RepoId]
        attr_accessor :repo_id
      
        # A revision ID.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias_context = args[:alias_context] if args.key?(:alias_context)
          @repo_id = args[:repo_id] if args.key?(:repo_id)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # Command describes a step performed as part of the build pipeline.
      class Command
        include Google::Apis::Core::Hashable
      
        # Command-line arguments used when executing this command.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Working directory (relative to project source root) used when running this
        # command.
        # Corresponds to the JSON property `dir`
        # @return [String]
        attr_accessor :dir
      
        # Environment variables set before running this command.
        # Corresponds to the JSON property `env`
        # @return [Array<String>]
        attr_accessor :env
      
        # Optional unique identifier for this command, used in wait_for to reference
        # this command as a dependency.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. Name of the command, as presented on the command line, or if the
        # command is packaged as a Docker container, as presented to `docker pull`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID(s) of the command(s) that this command depends on.
        # Corresponds to the JSON property `waitFor`
        # @return [Array<String>]
        attr_accessor :wait_for
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @dir = args[:dir] if args.key?(:dir)
          @env = args[:env] if args.key?(:env)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @wait_for = args[:wait_for] if args.key?(:wait_for)
        end
      end
      
      # Indicates that the builder claims certain fields in this message to be
      # complete.
      class Completeness
        include Google::Apis::Core::Hashable
      
        # If true, the builder claims that recipe.arguments is complete, meaning that
        # all external inputs are properly captured in the recipe.
        # Corresponds to the JSON property `arguments`
        # @return [Boolean]
        attr_accessor :arguments
        alias_method :arguments?, :arguments
      
        # If true, the builder claims that recipe.environment is claimed to be complete.
        # Corresponds to the JSON property `environment`
        # @return [Boolean]
        attr_accessor :environment
        alias_method :environment?, :environment
      
        # If true, the builder claims that materials are complete, usually through some
        # controls to prevent network access. Sometimes called "hermetic".
        # Corresponds to the JSON property `materials`
        # @return [Boolean]
        attr_accessor :materials
        alias_method :materials?, :materials
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arguments = args[:arguments] if args.key?(:arguments)
          @environment = args[:environment] if args.key?(:environment)
          @materials = args[:materials] if args.key?(:materials)
        end
      end
      
      # 
      class ComplianceNote
        include Google::Apis::Core::Hashable
      
        # A compliance check that is a CIS benchmark.
        # Corresponds to the JSON property `cisBenchmark`
        # @return [Google::Apis::ContaineranalysisV1::CisBenchmark]
        attr_accessor :cis_benchmark
      
        # A description about this compliance check.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A rationale for the existence of this compliance check.
        # Corresponds to the JSON property `rationale`
        # @return [String]
        attr_accessor :rationale
      
        # A description of remediation steps if the compliance check fails.
        # Corresponds to the JSON property `remediation`
        # @return [String]
        attr_accessor :remediation
      
        # Serialized scan instructions with a predefined format.
        # Corresponds to the JSON property `scanInstructions`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :scan_instructions
      
        # The title that identifies this compliance check.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The OS and config versions the benchmark applies to.
        # Corresponds to the JSON property `version`
        # @return [Array<Google::Apis::ContaineranalysisV1::ComplianceVersion>]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cis_benchmark = args[:cis_benchmark] if args.key?(:cis_benchmark)
          @description = args[:description] if args.key?(:description)
          @rationale = args[:rationale] if args.key?(:rationale)
          @remediation = args[:remediation] if args.key?(:remediation)
          @scan_instructions = args[:scan_instructions] if args.key?(:scan_instructions)
          @title = args[:title] if args.key?(:title)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # An indication that the compliance checks in the associated ComplianceNote were
      # not satisfied for particular resources or a specified reason.
      class ComplianceOccurrence
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nonComplianceReason`
        # @return [String]
        attr_accessor :non_compliance_reason
      
        # 
        # Corresponds to the JSON property `nonCompliantFiles`
        # @return [Array<Google::Apis::ContaineranalysisV1::NonCompliantFile>]
        attr_accessor :non_compliant_files
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @non_compliance_reason = args[:non_compliance_reason] if args.key?(:non_compliance_reason)
          @non_compliant_files = args[:non_compliant_files] if args.key?(:non_compliant_files)
        end
      end
      
      # Describes the CIS benchmark version that is applicable to a given OS and os
      # version.
      class ComplianceVersion
        include Google::Apis::Core::Hashable
      
        # The CPE URI (https://cpe.mitre.org/specification/) this benchmark is
        # applicable to.
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # The version of the benchmark. This is set to the version of the OS-specific
        # CIS document the benchmark is defined in.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class DsseAttestationNote
        include Google::Apis::Core::Hashable
      
        # This submessage provides human-readable hints about the purpose of the
        # authority. Because the name of a note acts as its resource reference, it is
        # important to disambiguate the canonical name of the Note (which might be a
        # UUID for security purposes) from "readable" names more suitable for debug
        # output. Note that these hints should not be used to look up authorities in
        # security sensitive contexts, such as when looking up attestations to verify.
        # Corresponds to the JSON property `hint`
        # @return [Google::Apis::ContaineranalysisV1::DsseHint]
        attr_accessor :hint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hint = args[:hint] if args.key?(:hint)
        end
      end
      
      # 
      class DsseAttestationOccurrence
        include Google::Apis::Core::Hashable
      
        # MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.
        # proto. An authenticated message of arbitrary type.
        # Corresponds to the JSON property `envelope`
        # @return [Google::Apis::ContaineranalysisV1::Envelope]
        attr_accessor :envelope
      
        # Spec defined at https://github.com/in-toto/attestation/tree/main/spec#
        # statement The serialized InTotoStatement will be stored as Envelope.payload.
        # Envelope.payloadType is always "application/vnd.in-toto+json".
        # Corresponds to the JSON property `statement`
        # @return [Google::Apis::ContaineranalysisV1::InTotoStatement]
        attr_accessor :statement
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @envelope = args[:envelope] if args.key?(:envelope)
          @statement = args[:statement] if args.key?(:statement)
        end
      end
      
      # This submessage provides human-readable hints about the purpose of the
      # authority. Because the name of a note acts as its resource reference, it is
      # important to disambiguate the canonical name of the Note (which might be a
      # UUID for security purposes) from "readable" names more suitable for debug
      # output. Note that these hints should not be used to look up authorities in
      # security sensitive contexts, such as when looking up attestations to verify.
      class DsseHint
        include Google::Apis::Core::Hashable
      
        # Required. The human readable name of this attestation authority, for example "
        # cloudbuild-prod".
        # Corresponds to the JSON property `humanReadableName`
        # @return [String]
        attr_accessor :human_readable_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @human_readable_name = args[:human_readable_name] if args.key?(:human_readable_name)
        end
      end
      
      # An artifact that can be deployed in some runtime.
      class DeploymentNote
        include Google::Apis::Core::Hashable
      
        # Required. Resource URI for the artifact being deployed.
        # Corresponds to the JSON property `resourceUri`
        # @return [Array<String>]
        attr_accessor :resource_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
        end
      end
      
      # The period during which some deployable was active in a runtime.
      class DeploymentOccurrence
        include Google::Apis::Core::Hashable
      
        # Address of the runtime element hosting this deployment.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Configuration used to create this deployment.
        # Corresponds to the JSON property `config`
        # @return [String]
        attr_accessor :config
      
        # Required. Beginning of the lifetime of this deployment.
        # Corresponds to the JSON property `deployTime`
        # @return [String]
        attr_accessor :deploy_time
      
        # Platform hosting this deployment.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # Output only. Resource URI for the artifact being deployed taken from the
        # deployable field with the same name.
        # Corresponds to the JSON property `resourceUri`
        # @return [Array<String>]
        attr_accessor :resource_uri
      
        # End of the lifetime of this deployment.
        # Corresponds to the JSON property `undeployTime`
        # @return [String]
        attr_accessor :undeploy_time
      
        # Identity of the user that triggered this deployment.
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @config = args[:config] if args.key?(:config)
          @deploy_time = args[:deploy_time] if args.key?(:deploy_time)
          @platform = args[:platform] if args.key?(:platform)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @undeploy_time = args[:undeploy_time] if args.key?(:undeploy_time)
          @user_email = args[:user_email] if args.key?(:user_email)
        end
      end
      
      # A detail for a distro and package affected by this vulnerability and its
      # associated fix (if one is available).
      class Detail
        include Google::Apis::Core::Hashable
      
        # Required. The [CPE URI](https://cpe.mitre.org/specification/) this
        # vulnerability affects.
        # Corresponds to the JSON property `affectedCpeUri`
        # @return [String]
        attr_accessor :affected_cpe_uri
      
        # Required. The package this vulnerability affects.
        # Corresponds to the JSON property `affectedPackage`
        # @return [String]
        attr_accessor :affected_package
      
        # Version contains structured information about the version of a package.
        # Corresponds to the JSON property `affectedVersionEnd`
        # @return [Google::Apis::ContaineranalysisV1::Version]
        attr_accessor :affected_version_end
      
        # Version contains structured information about the version of a package.
        # Corresponds to the JSON property `affectedVersionStart`
        # @return [Google::Apis::ContaineranalysisV1::Version]
        attr_accessor :affected_version_start
      
        # A vendor-specific description of this vulnerability.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The distro recommended [CPE URI](https://cpe.mitre.org/specification/) to
        # update to that contains a fix for this vulnerability. It is possible for this
        # to be different from the affected_cpe_uri.
        # Corresponds to the JSON property `fixedCpeUri`
        # @return [String]
        attr_accessor :fixed_cpe_uri
      
        # The distro recommended package to update to that contains a fix for this
        # vulnerability. It is possible for this to be different from the
        # affected_package.
        # Corresponds to the JSON property `fixedPackage`
        # @return [String]
        attr_accessor :fixed_package
      
        # Version contains structured information about the version of a package.
        # Corresponds to the JSON property `fixedVersion`
        # @return [Google::Apis::ContaineranalysisV1::Version]
        attr_accessor :fixed_version
      
        # Whether this detail is obsolete. Occurrences are expected not to point to
        # obsolete details.
        # Corresponds to the JSON property `isObsolete`
        # @return [Boolean]
        attr_accessor :is_obsolete
        alias_method :is_obsolete?, :is_obsolete
      
        # The type of package; whether native or non native (e.g., ruby gems, node.js
        # packages, etc.).
        # Corresponds to the JSON property `packageType`
        # @return [String]
        attr_accessor :package_type
      
        # The distro assigned severity of this vulnerability.
        # Corresponds to the JSON property `severityName`
        # @return [String]
        attr_accessor :severity_name
      
        # The source from which the information in this Detail was obtained.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # The time this information was last changed at the source. This is an upstream
        # timestamp from the underlying information source - e.g. Ubuntu security
        # tracker.
        # Corresponds to the JSON property `sourceUpdateTime`
        # @return [String]
        attr_accessor :source_update_time
      
        # The name of the vendor of the product.
        # Corresponds to the JSON property `vendor`
        # @return [String]
        attr_accessor :vendor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affected_cpe_uri = args[:affected_cpe_uri] if args.key?(:affected_cpe_uri)
          @affected_package = args[:affected_package] if args.key?(:affected_package)
          @affected_version_end = args[:affected_version_end] if args.key?(:affected_version_end)
          @affected_version_start = args[:affected_version_start] if args.key?(:affected_version_start)
          @description = args[:description] if args.key?(:description)
          @fixed_cpe_uri = args[:fixed_cpe_uri] if args.key?(:fixed_cpe_uri)
          @fixed_package = args[:fixed_package] if args.key?(:fixed_package)
          @fixed_version = args[:fixed_version] if args.key?(:fixed_version)
          @is_obsolete = args[:is_obsolete] if args.key?(:is_obsolete)
          @package_type = args[:package_type] if args.key?(:package_type)
          @severity_name = args[:severity_name] if args.key?(:severity_name)
          @source = args[:source] if args.key?(:source)
          @source_update_time = args[:source_update_time] if args.key?(:source_update_time)
          @vendor = args[:vendor] if args.key?(:vendor)
        end
      end
      
      # A note that indicates a type of analysis a provider would perform. This note
      # exists in a provider's project. A `Discovery` occurrence is created in a
      # consumer's project at the start of analysis.
      class DiscoveryNote
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The kind of analysis that is handled by this discovery.
        # Corresponds to the JSON property `analysisKind`
        # @return [String]
        attr_accessor :analysis_kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_kind = args[:analysis_kind] if args.key?(:analysis_kind)
        end
      end
      
      # Provides information about the analysis status of a discovered resource.
      class DiscoveryOccurrence
        include Google::Apis::Core::Hashable
      
        # The status of discovery for the resource.
        # Corresponds to the JSON property `analysisStatus`
        # @return [String]
        attr_accessor :analysis_status
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `analysisStatusError`
        # @return [Google::Apis::ContaineranalysisV1::Status]
        attr_accessor :analysis_status_error
      
        # Whether the resource is continuously analyzed.
        # Corresponds to the JSON property `continuousAnalysis`
        # @return [String]
        attr_accessor :continuous_analysis
      
        # The CPE of the resource being scanned.
        # Corresponds to the JSON property `cpe`
        # @return [String]
        attr_accessor :cpe
      
        # The last time this resource was scanned.
        # Corresponds to the JSON property `lastScanTime`
        # @return [String]
        attr_accessor :last_scan_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_status = args[:analysis_status] if args.key?(:analysis_status)
          @analysis_status_error = args[:analysis_status_error] if args.key?(:analysis_status_error)
          @continuous_analysis = args[:continuous_analysis] if args.key?(:continuous_analysis)
          @cpe = args[:cpe] if args.key?(:cpe)
          @last_scan_time = args[:last_scan_time] if args.key?(:last_scan_time)
        end
      end
      
      # This represents a particular channel of distribution for a given package. E.g.,
      # Debian's jessie-backports dpkg mirror.
      class Distribution
        include Google::Apis::Core::Hashable
      
        # The CPU architecture for which packages in this distribution channel were
        # built.
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # Required. The cpe_uri in [CPE format](https://cpe.mitre.org/specification/)
        # denoting the package manager version distributing a package.
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # The distribution channel-specific description of this package.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Version contains structured information about the version of a package.
        # Corresponds to the JSON property `latestVersion`
        # @return [Google::Apis::ContaineranalysisV1::Version]
        attr_accessor :latest_version
      
        # A freeform string denoting the maintainer of this package.
        # Corresponds to the JSON property `maintainer`
        # @return [String]
        attr_accessor :maintainer
      
        # The distribution channel-specific homepage for this package.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @description = args[:description] if args.key?(:description)
          @latest_version = args[:latest_version] if args.key?(:latest_version)
          @maintainer = args[:maintainer] if args.key?(:maintainer)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.
      # proto. An authenticated message of arbitrary type.
      class Envelope
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `payload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `payloadType`
        # @return [String]
        attr_accessor :payload_type
      
        # 
        # Corresponds to the JSON property `signatures`
        # @return [Array<Google::Apis::ContaineranalysisV1::EnvelopeSignature>]
        attr_accessor :signatures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
          @payload_type = args[:payload_type] if args.key?(:payload_type)
          @signatures = args[:signatures] if args.key?(:signatures)
        end
      end
      
      # 
      class EnvelopeSignature
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `keyid`
        # @return [String]
        attr_accessor :keyid
      
        # 
        # Corresponds to the JSON property `sig`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sig
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keyid = args[:keyid] if args.key?(:keyid)
          @sig = args[:sig] if args.key?(:sig)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Container message for hashes of byte content of files, used in source messages
      # to verify integrity of source input to the build.
      class FileHashes
        include Google::Apis::Core::Hashable
      
        # Required. Collection of file hashes.
        # Corresponds to the JSON property `fileHash`
        # @return [Array<Google::Apis::ContaineranalysisV1::HashProp>]
        attr_accessor :file_hash
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_hash = args[:file_hash] if args.key?(:file_hash)
        end
      end
      
      # A set of properties that uniquely identify a given Docker image.
      class Fingerprint
        include Google::Apis::Core::Hashable
      
        # Required. The layer ID of the final layer in the Docker image's v1
        # representation.
        # Corresponds to the JSON property `v1Name`
        # @return [String]
        attr_accessor :v1_name
      
        # Required. The ordered list of v2 blobs that represent a given image.
        # Corresponds to the JSON property `v2Blob`
        # @return [Array<String>]
        attr_accessor :v2_blob
      
        # Output only. The name of the image's v2 blobs computed via: [bottom] :=
        # v2_blobbottom := sha256(v2_blob[N] + " " + v2_name[N+1]) Only the name of the
        # final blob is kept.
        # Corresponds to the JSON property `v2Name`
        # @return [String]
        attr_accessor :v2_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @v1_name = args[:v1_name] if args.key?(:v1_name)
          @v2_blob = args[:v2_blob] if args.key?(:v2_blob)
          @v2_name = args[:v2_name] if args.key?(:v2_name)
        end
      end
      
      # Per resource and severity counts of fixable and total vulnerabilities.
      class FixableTotalByDigest
        include Google::Apis::Core::Hashable
      
        # The number of fixable vulnerabilities associated with this resource.
        # Corresponds to the JSON property `fixableCount`
        # @return [Fixnum]
        attr_accessor :fixable_count
      
        # The affected resource.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # The severity for this count. SEVERITY_UNSPECIFIED indicates total across all
        # severities.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # The total number of vulnerabilities associated with this resource.
        # Corresponds to the JSON property `totalCount`
        # @return [Fixnum]
        attr_accessor :total_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixable_count = args[:fixable_count] if args.key?(:fixable_count)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @severity = args[:severity] if args.key?(:severity)
          @total_count = args[:total_count] if args.key?(:total_count)
        end
      end
      
      # A SourceContext referring to a Gerrit project.
      class GerritSourceContext
        include Google::Apis::Core::Hashable
      
        # An alias to a repo revision.
        # Corresponds to the JSON property `aliasContext`
        # @return [Google::Apis::ContaineranalysisV1::AliasContext]
        attr_accessor :alias_context
      
        # The full project name within the host. Projects may be nested, so "project/
        # subproject" is a valid project name. The "repo name" is the hostURI/project.
        # Corresponds to the JSON property `gerritProject`
        # @return [String]
        attr_accessor :gerrit_project
      
        # The URI of a running Gerrit instance.
        # Corresponds to the JSON property `hostUri`
        # @return [String]
        attr_accessor :host_uri
      
        # A revision (commit) ID.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias_context = args[:alias_context] if args.key?(:alias_context)
          @gerrit_project = args[:gerrit_project] if args.key?(:gerrit_project)
          @host_uri = args[:host_uri] if args.key?(:host_uri)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::ContaineranalysisV1::GetPolicyOptions]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Encapsulates settings provided to GetIamPolicy.
      class GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The policy format version to be returned. Valid values are 0, 1, and
        # 3. Requests specifying an invalid value will be rejected. Requests for
        # policies with any conditional bindings must specify version 3. Policies
        # without any conditional bindings may specify any valid value or leave the
        # field unset. To learn which resources support conditions in their IAM policies,
        # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
        # resource-policies).
        # Corresponds to the JSON property `requestedPolicyVersion`
        # @return [Fixnum]
        attr_accessor :requested_policy_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requested_policy_version = args[:requested_policy_version] if args.key?(:requested_policy_version)
        end
      end
      
      # A GitSourceContext denotes a particular revision in a third party Git
      # repository (e.g., GitHub).
      class GitSourceContext
        include Google::Apis::Core::Hashable
      
        # Git commit hash.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # Git repository URL.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Metadata for all operations used and required for all operations that created
      # by Container Analysis Providers
      class GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time this operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time that this operation was marked completed or failed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
        end
      end
      
      # Container message for hash values.
      class HashProp
        include Google::Apis::Core::Hashable
      
        # Required. The type of hash that was performed, e.g. "SHA-256".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Required. The hash value.
        # Corresponds to the JSON property `value`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # This submessage provides human-readable hints about the purpose of the
      # authority. Because the name of a note acts as its resource reference, it is
      # important to disambiguate the canonical name of the Note (which might be a
      # UUID for security purposes) from "readable" names more suitable for debug
      # output. Note that these hints should not be used to look up authorities in
      # security sensitive contexts, such as when looking up attestations to verify.
      class Hint
        include Google::Apis::Core::Hashable
      
        # Required. The human readable name of this attestation authority, for example "
        # qa".
        # Corresponds to the JSON property `humanReadableName`
        # @return [String]
        attr_accessor :human_readable_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @human_readable_name = args[:human_readable_name] if args.key?(:human_readable_name)
        end
      end
      
      # The unique identifier of the update.
      class Identity
        include Google::Apis::Core::Hashable
      
        # The revision number of the update.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # The revision independent identifier of the update.
        # Corresponds to the JSON property `updateId`
        # @return [String]
        attr_accessor :update_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @revision = args[:revision] if args.key?(:revision)
          @update_id = args[:update_id] if args.key?(:update_id)
        end
      end
      
      # Basis describes the base image portion (Note) of the DockerImage relationship.
      # Linked occurrences are derived from this or an equivalent image via: FROM Or
      # an equivalent reference, e.g., a tag of the resource_url.
      class ImageNote
        include Google::Apis::Core::Hashable
      
        # A set of properties that uniquely identify a given Docker image.
        # Corresponds to the JSON property `fingerprint`
        # @return [Google::Apis::ContaineranalysisV1::Fingerprint]
        attr_accessor :fingerprint
      
        # Required. Immutable. The resource_url for the resource representing the basis
        # of associated occurrence images.
        # Corresponds to the JSON property `resourceUrl`
        # @return [String]
        attr_accessor :resource_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @resource_url = args[:resource_url] if args.key?(:resource_url)
        end
      end
      
      # Details of the derived image portion of the DockerImage relationship. This
      # image would be produced from a Dockerfile with FROM .
      class ImageOccurrence
        include Google::Apis::Core::Hashable
      
        # Output only. This contains the base image URL for the derived image occurrence.
        # Corresponds to the JSON property `baseResourceUrl`
        # @return [String]
        attr_accessor :base_resource_url
      
        # Output only. The number of layers by which this image differs from the
        # associated image basis.
        # Corresponds to the JSON property `distance`
        # @return [Fixnum]
        attr_accessor :distance
      
        # A set of properties that uniquely identify a given Docker image.
        # Corresponds to the JSON property `fingerprint`
        # @return [Google::Apis::ContaineranalysisV1::Fingerprint]
        attr_accessor :fingerprint
      
        # This contains layer-specific metadata, if populated it has length "distance"
        # and is ordered with [distance] being the layer immediately following the base
        # image and [1] being the final layer.
        # Corresponds to the JSON property `layerInfo`
        # @return [Array<Google::Apis::ContaineranalysisV1::Layer>]
        attr_accessor :layer_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_resource_url = args[:base_resource_url] if args.key?(:base_resource_url)
          @distance = args[:distance] if args.key?(:distance)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @layer_info = args[:layer_info] if args.key?(:layer_info)
        end
      end
      
      # 
      class InTotoProvenance
        include Google::Apis::Core::Hashable
      
        # required
        # Corresponds to the JSON property `builderConfig`
        # @return [Google::Apis::ContaineranalysisV1::BuilderConfig]
        attr_accessor :builder_config
      
        # The collection of artifacts that influenced the build including sources,
        # dependencies, build tools, base images, and so on. This is considered to be
        # incomplete unless metadata.completeness.materials is true. Unset or null is
        # equivalent to empty.
        # Corresponds to the JSON property `materials`
        # @return [Array<String>]
        attr_accessor :materials
      
        # Other properties of the build.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ContaineranalysisV1::Metadata]
        attr_accessor :metadata
      
        # Steps taken to build the artifact. For a TaskRun, typically each container
        # corresponds to one step in the recipe.
        # Corresponds to the JSON property `recipe`
        # @return [Google::Apis::ContaineranalysisV1::Recipe]
        attr_accessor :recipe
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @builder_config = args[:builder_config] if args.key?(:builder_config)
          @materials = args[:materials] if args.key?(:materials)
          @metadata = args[:metadata] if args.key?(:metadata)
          @recipe = args[:recipe] if args.key?(:recipe)
        end
      end
      
      # Spec defined at https://github.com/in-toto/attestation/tree/main/spec#
      # statement The serialized InTotoStatement will be stored as Envelope.payload.
      # Envelope.payloadType is always "application/vnd.in-toto+json".
      class InTotoStatement
        include Google::Apis::Core::Hashable
      
        # "https://in-toto.io/Provenance/v0.1" for InTotoProvenance.
        # Corresponds to the JSON property `predicateType`
        # @return [String]
        attr_accessor :predicate_type
      
        # 
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::ContaineranalysisV1::InTotoProvenance]
        attr_accessor :provenance
      
        # 
        # Corresponds to the JSON property `subject`
        # @return [Array<Google::Apis::ContaineranalysisV1::Subject>]
        attr_accessor :subject
      
        # Always "https://in-toto.io/Statement/v0.1".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @predicate_type = args[:predicate_type] if args.key?(:predicate_type)
          @provenance = args[:provenance] if args.key?(:provenance)
          @subject = args[:subject] if args.key?(:subject)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class Jwt
        include Google::Apis::Core::Hashable
      
        # The compact encoding of a JWS, which is always three base64 encoded strings
        # joined by periods. For details, see: https://tools.ietf.org/html/rfc7515.html#
        # section-3.1
        # Corresponds to the JSON property `compactJwt`
        # @return [String]
        attr_accessor :compact_jwt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compact_jwt = args[:compact_jwt] if args.key?(:compact_jwt)
        end
      end
      
      # 
      class KnowledgeBase
        include Google::Apis::Core::Hashable
      
        # The KB name (generally of the form KB[0-9]+ (e.g., KB123456)).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A link to the KB in the [Windows update catalog] (https://www.catalog.update.
        # microsoft.com/).
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Layer holds metadata specific to a layer of a Docker image.
      class Layer
        include Google::Apis::Core::Hashable
      
        # The recovered arguments to the Dockerfile directive.
        # Corresponds to the JSON property `arguments`
        # @return [String]
        attr_accessor :arguments
      
        # Required. The recovered Dockerfile directive used to construct this layer. See
        # https://docs.docker.com/engine/reference/builder/ for more information.
        # Corresponds to the JSON property `directive`
        # @return [String]
        attr_accessor :directive
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arguments = args[:arguments] if args.key?(:arguments)
          @directive = args[:directive] if args.key?(:directive)
        end
      end
      
      # Response for listing occurrences for a note.
      class ListNoteOccurrencesResponse
        include Google::Apis::Core::Hashable
      
        # Token to provide to skip to a particular spot in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The occurrences attached to the specified note.
        # Corresponds to the JSON property `occurrences`
        # @return [Array<Google::Apis::ContaineranalysisV1::Occurrence>]
        attr_accessor :occurrences
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @occurrences = args[:occurrences] if args.key?(:occurrences)
        end
      end
      
      # Response for listing notes.
      class ListNotesResponse
        include Google::Apis::Core::Hashable
      
        # The next pagination token in the list response. It should be used as `
        # page_token` for the following request. An empty value means no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The notes requested.
        # Corresponds to the JSON property `notes`
        # @return [Array<Google::Apis::ContaineranalysisV1::Note>]
        attr_accessor :notes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @notes = args[:notes] if args.key?(:notes)
        end
      end
      
      # Response for listing occurrences.
      class ListOccurrencesResponse
        include Google::Apis::Core::Hashable
      
        # The next pagination token in the list response. It should be used as `
        # page_token` for the following request. An empty value means no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The occurrences requested.
        # Corresponds to the JSON property `occurrences`
        # @return [Array<Google::Apis::ContaineranalysisV1::Occurrence>]
        attr_accessor :occurrences
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @occurrences = args[:occurrences] if args.key?(:occurrences)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ContaineranalysisV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # An occurrence of a particular package installation found within a system's
      # filesystem. E.g., glibc was found in `/var/lib/dpkg/status`.
      class Location
        include Google::Apis::Core::Hashable
      
        # Required. The CPE URI in [CPE format](https://cpe.mitre.org/specification/)
        # denoting the package manager version distributing a package.
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # The path from which we gathered that this package/version is installed.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Version contains structured information about the version of a package.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::ContaineranalysisV1::Version]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @path = args[:path] if args.key?(:path)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Other properties of the build.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # The timestamp of when the build completed.
        # Corresponds to the JSON property `buildFinishedOn`
        # @return [String]
        attr_accessor :build_finished_on
      
        # Identifies the particular build invocation, which can be useful for finding
        # associated logs or other ad-hoc analysis. The value SHOULD be globally unique,
        # per in-toto Provenance spec.
        # Corresponds to the JSON property `buildInvocationId`
        # @return [String]
        attr_accessor :build_invocation_id
      
        # The timestamp of when the build started.
        # Corresponds to the JSON property `buildStartedOn`
        # @return [String]
        attr_accessor :build_started_on
      
        # Indicates that the builder claims certain fields in this message to be
        # complete.
        # Corresponds to the JSON property `completeness`
        # @return [Google::Apis::ContaineranalysisV1::Completeness]
        attr_accessor :completeness
      
        # If true, the builder claims that running the recipe on materials will produce
        # bit-for-bit identical output.
        # Corresponds to the JSON property `reproducible`
        # @return [Boolean]
        attr_accessor :reproducible
        alias_method :reproducible?, :reproducible
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_finished_on = args[:build_finished_on] if args.key?(:build_finished_on)
          @build_invocation_id = args[:build_invocation_id] if args.key?(:build_invocation_id)
          @build_started_on = args[:build_started_on] if args.key?(:build_started_on)
          @completeness = args[:completeness] if args.key?(:completeness)
          @reproducible = args[:reproducible] if args.key?(:reproducible)
        end
      end
      
      # Details about files that caused a compliance check to fail.
      class NonCompliantFile
        include Google::Apis::Core::Hashable
      
        # Command to display the non-compliant files.
        # Corresponds to the JSON property `displayCommand`
        # @return [String]
        attr_accessor :display_command
      
        # display_command is a single command that can be used to display a list of non
        # compliant files. When there is no such command, we can also iterate a list of
        # non compliant file using 'path'. Empty if `display_command` is set.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Explains why a file is non compliant for a CIS check.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_command = args[:display_command] if args.key?(:display_command)
          @path = args[:path] if args.key?(:path)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # A type of analysis that can be done for a resource.
      class Note
        include Google::Apis::Core::Hashable
      
        # Note kind that represents a logical attestation "role" or "authority". For
        # example, an organization might have one `Authority` for "QA" and one for "
        # build". This note is intended to act strictly as a grouping mechanism for the
        # attached occurrences (Attestations). This grouping mechanism also provides a
        # security boundary, since IAM ACLs gate the ability for a principle to attach
        # an occurrence to a given note. It also provides a single point of lookup to
        # find all attached attestation occurrences, even if they don't all live in the
        # same project.
        # Corresponds to the JSON property `attestation`
        # @return [Google::Apis::ContaineranalysisV1::AttestationNote]
        attr_accessor :attestation
      
        # Note holding the version of the provider's builder and the signature of the
        # provenance message in the build details occurrence.
        # Corresponds to the JSON property `build`
        # @return [Google::Apis::ContaineranalysisV1::BuildNote]
        attr_accessor :build
      
        # A note describing a compliance check.
        # Corresponds to the JSON property `compliance`
        # @return [Google::Apis::ContaineranalysisV1::ComplianceNote]
        attr_accessor :compliance
      
        # Output only. The time this note was created. This field can be used as a
        # filter in list requests.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # An artifact that can be deployed in some runtime.
        # Corresponds to the JSON property `deployment`
        # @return [Google::Apis::ContaineranalysisV1::DeploymentNote]
        attr_accessor :deployment
      
        # A note that indicates a type of analysis a provider would perform. This note
        # exists in a provider's project. A `Discovery` occurrence is created in a
        # consumer's project at the start of analysis.
        # Corresponds to the JSON property `discovery`
        # @return [Google::Apis::ContaineranalysisV1::DiscoveryNote]
        attr_accessor :discovery
      
        # A note describing a dsse attestation note.
        # Corresponds to the JSON property `dsseAttestation`
        # @return [Google::Apis::ContaineranalysisV1::DsseAttestationNote]
        attr_accessor :dsse_attestation
      
        # Time of expiration for this note. Empty if note does not expire.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # Basis describes the base image portion (Note) of the DockerImage relationship.
        # Linked occurrences are derived from this or an equivalent image via: FROM Or
        # an equivalent reference, e.g., a tag of the resource_url.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::ContaineranalysisV1::ImageNote]
        attr_accessor :image
      
        # Output only. The type of analysis. This field can be used as a filter in list
        # requests.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A detailed description of this note.
        # Corresponds to the JSON property `longDescription`
        # @return [String]
        attr_accessor :long_description
      
        # Output only. The name of the note in the form of `projects/[PROVIDER_ID]/notes/
        # [NOTE_ID]`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # This represents a particular package that is distributed over various channels.
        # E.g., glibc (aka libc6) is distributed by many, at various versions.
        # Corresponds to the JSON property `package`
        # @return [Google::Apis::ContaineranalysisV1::PackageNote]
        attr_accessor :package
      
        # Other notes related to this note.
        # Corresponds to the JSON property `relatedNoteNames`
        # @return [Array<String>]
        attr_accessor :related_note_names
      
        # URLs associated with this note.
        # Corresponds to the JSON property `relatedUrl`
        # @return [Array<Google::Apis::ContaineranalysisV1::RelatedUrl>]
        attr_accessor :related_url
      
        # A one sentence description of this note.
        # Corresponds to the JSON property `shortDescription`
        # @return [String]
        attr_accessor :short_description
      
        # Output only. The time this note was last updated. This field can be used as a
        # filter in list requests.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # An Upgrade Note represents a potential upgrade of a package to a given version.
        # For each package version combination (i.e. bash 4.0, bash 4.1, bash 4.1.2),
        # there will be an Upgrade Note. For Windows, windows_update field represents
        # the information related to the update.
        # Corresponds to the JSON property `upgrade`
        # @return [Google::Apis::ContaineranalysisV1::UpgradeNote]
        attr_accessor :upgrade
      
        # A security vulnerability that can be found in resources.
        # Corresponds to the JSON property `vulnerability`
        # @return [Google::Apis::ContaineranalysisV1::VulnerabilityNote]
        attr_accessor :vulnerability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attestation = args[:attestation] if args.key?(:attestation)
          @build = args[:build] if args.key?(:build)
          @compliance = args[:compliance] if args.key?(:compliance)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deployment = args[:deployment] if args.key?(:deployment)
          @discovery = args[:discovery] if args.key?(:discovery)
          @dsse_attestation = args[:dsse_attestation] if args.key?(:dsse_attestation)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @image = args[:image] if args.key?(:image)
          @kind = args[:kind] if args.key?(:kind)
          @long_description = args[:long_description] if args.key?(:long_description)
          @name = args[:name] if args.key?(:name)
          @package = args[:package] if args.key?(:package)
          @related_note_names = args[:related_note_names] if args.key?(:related_note_names)
          @related_url = args[:related_url] if args.key?(:related_url)
          @short_description = args[:short_description] if args.key?(:short_description)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upgrade = args[:upgrade] if args.key?(:upgrade)
          @vulnerability = args[:vulnerability] if args.key?(:vulnerability)
        end
      end
      
      # An instance of an analysis type that has been found on a resource.
      class Occurrence
        include Google::Apis::Core::Hashable
      
        # Occurrence that represents a single "attestation". The authenticity of an
        # attestation can be verified using the attached signature. If the verifier
        # trusts the public key of the signer, then verifying the signature is
        # sufficient to establish trust. In this circumstance, the authority to which
        # this attestation is attached is primarily useful for lookup (how to find this
        # attestation if you already know the authority and artifact to be verified) and
        # intent (for which authority this attestation was intended to sign.
        # Corresponds to the JSON property `attestation`
        # @return [Google::Apis::ContaineranalysisV1::AttestationOccurrence]
        attr_accessor :attestation
      
        # Details of a build occurrence.
        # Corresponds to the JSON property `build`
        # @return [Google::Apis::ContaineranalysisV1::BuildOccurrence]
        attr_accessor :build
      
        # An indication that the compliance checks in the associated ComplianceNote were
        # not satisfied for particular resources or a specified reason.
        # Corresponds to the JSON property `compliance`
        # @return [Google::Apis::ContaineranalysisV1::ComplianceOccurrence]
        attr_accessor :compliance
      
        # Output only. The time this occurrence was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The period during which some deployable was active in a runtime.
        # Corresponds to the JSON property `deployment`
        # @return [Google::Apis::ContaineranalysisV1::DeploymentOccurrence]
        attr_accessor :deployment
      
        # Provides information about the analysis status of a discovered resource.
        # Corresponds to the JSON property `discovery`
        # @return [Google::Apis::ContaineranalysisV1::DiscoveryOccurrence]
        attr_accessor :discovery
      
        # Describes an attestation of an artifact using dsse.
        # Corresponds to the JSON property `dsseAttestation`
        # @return [Google::Apis::ContaineranalysisV1::DsseAttestationOccurrence]
        attr_accessor :dsse_attestation
      
        # MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.
        # proto. An authenticated message of arbitrary type.
        # Corresponds to the JSON property `envelope`
        # @return [Google::Apis::ContaineranalysisV1::Envelope]
        attr_accessor :envelope
      
        # Details of the derived image portion of the DockerImage relationship. This
        # image would be produced from a Dockerfile with FROM .
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::ContaineranalysisV1::ImageOccurrence]
        attr_accessor :image
      
        # Output only. This explicitly denotes which of the occurrence details are
        # specified. This field can be used as a filter in list requests.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. The name of the occurrence in the form of `projects/[PROJECT_ID]/
        # occurrences/[OCCURRENCE_ID]`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. The analysis note associated with this occurrence, in the
        # form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a
        # filter in list requests.
        # Corresponds to the JSON property `noteName`
        # @return [String]
        attr_accessor :note_name
      
        # Details on how a particular software package was installed on a system.
        # Corresponds to the JSON property `package`
        # @return [Google::Apis::ContaineranalysisV1::PackageOccurrence]
        attr_accessor :package
      
        # A description of actions that can be taken to remedy the note.
        # Corresponds to the JSON property `remediation`
        # @return [String]
        attr_accessor :remediation
      
        # Required. Immutable. A URI that represents the resource for which the
        # occurrence applies. For example, `https://gcr.io/project/image@sha256:123abc`
        # for a Docker image.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # Output only. The time this occurrence was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # An Upgrade Occurrence represents that a specific resource_url could install a
        # specific upgrade. This presence is supplied via local sources (i.e. it is
        # present in the mirror and the running system has noticed its availability).
        # For Windows, both distribution and windows_update contain information for the
        # Windows update.
        # Corresponds to the JSON property `upgrade`
        # @return [Google::Apis::ContaineranalysisV1::UpgradeOccurrence]
        attr_accessor :upgrade
      
        # An occurrence of a severity vulnerability on a resource.
        # Corresponds to the JSON property `vulnerability`
        # @return [Google::Apis::ContaineranalysisV1::VulnerabilityOccurrence]
        attr_accessor :vulnerability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attestation = args[:attestation] if args.key?(:attestation)
          @build = args[:build] if args.key?(:build)
          @compliance = args[:compliance] if args.key?(:compliance)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deployment = args[:deployment] if args.key?(:deployment)
          @discovery = args[:discovery] if args.key?(:discovery)
          @dsse_attestation = args[:dsse_attestation] if args.key?(:dsse_attestation)
          @envelope = args[:envelope] if args.key?(:envelope)
          @image = args[:image] if args.key?(:image)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @note_name = args[:note_name] if args.key?(:note_name)
          @package = args[:package] if args.key?(:package)
          @remediation = args[:remediation] if args.key?(:remediation)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upgrade = args[:upgrade] if args.key?(:upgrade)
          @vulnerability = args[:vulnerability] if args.key?(:vulnerability)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ContaineranalysisV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # A detail for a distro and package this vulnerability occurrence was found in
      # and its associated fix (if one is available).
      class PackageIssue
        include Google::Apis::Core::Hashable
      
        # Required. The [CPE URI](https://cpe.mitre.org/specification/) this
        # vulnerability was found in.
        # Corresponds to the JSON property `affectedCpeUri`
        # @return [String]
        attr_accessor :affected_cpe_uri
      
        # Required. The package this vulnerability was found in.
        # Corresponds to the JSON property `affectedPackage`
        # @return [String]
        attr_accessor :affected_package
      
        # Version contains structured information about the version of a package.
        # Corresponds to the JSON property `affectedVersion`
        # @return [Google::Apis::ContaineranalysisV1::Version]
        attr_accessor :affected_version
      
        # Output only. The distro or language system assigned severity for this
        # vulnerability when that is available and note provider assigned severity when
        # it is not available.
        # Corresponds to the JSON property `effectiveSeverity`
        # @return [String]
        attr_accessor :effective_severity
      
        # Output only. Whether a fix is available for this package.
        # Corresponds to the JSON property `fixAvailable`
        # @return [Boolean]
        attr_accessor :fix_available
        alias_method :fix_available?, :fix_available
      
        # The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was
        # fixed in. It is possible for this to be different from the affected_cpe_uri.
        # Corresponds to the JSON property `fixedCpeUri`
        # @return [String]
        attr_accessor :fixed_cpe_uri
      
        # The package this vulnerability was fixed in. It is possible for this to be
        # different from the affected_package.
        # Corresponds to the JSON property `fixedPackage`
        # @return [String]
        attr_accessor :fixed_package
      
        # Version contains structured information about the version of a package.
        # Corresponds to the JSON property `fixedVersion`
        # @return [Google::Apis::ContaineranalysisV1::Version]
        attr_accessor :fixed_version
      
        # The type of package (e.g. OS, MAVEN, GO).
        # Corresponds to the JSON property `packageType`
        # @return [String]
        attr_accessor :package_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affected_cpe_uri = args[:affected_cpe_uri] if args.key?(:affected_cpe_uri)
          @affected_package = args[:affected_package] if args.key?(:affected_package)
          @affected_version = args[:affected_version] if args.key?(:affected_version)
          @effective_severity = args[:effective_severity] if args.key?(:effective_severity)
          @fix_available = args[:fix_available] if args.key?(:fix_available)
          @fixed_cpe_uri = args[:fixed_cpe_uri] if args.key?(:fixed_cpe_uri)
          @fixed_package = args[:fixed_package] if args.key?(:fixed_package)
          @fixed_version = args[:fixed_version] if args.key?(:fixed_version)
          @package_type = args[:package_type] if args.key?(:package_type)
        end
      end
      
      # This represents a particular package that is distributed over various channels.
      # E.g., glibc (aka libc6) is distributed by many, at various versions.
      class PackageNote
        include Google::Apis::Core::Hashable
      
        # The various channels by which a package is distributed.
        # Corresponds to the JSON property `distribution`
        # @return [Array<Google::Apis::ContaineranalysisV1::Distribution>]
        attr_accessor :distribution
      
        # Required. Immutable. The name of the package.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distribution = args[:distribution] if args.key?(:distribution)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Details on how a particular software package was installed on a system.
      class PackageOccurrence
        include Google::Apis::Core::Hashable
      
        # Required. All of the places within the filesystem versions of this package
        # have been found.
        # Corresponds to the JSON property `location`
        # @return [Array<Google::Apis::ContaineranalysisV1::Location>]
        attr_accessor :location
      
        # Output only. The name of the installed package.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members` to a single `role`. Members can be
      # user accounts, service accounts, Google groups, and domains (such as G Suite).
      # A `role` is a named list of permissions; each `role` can be an IAM predefined
      # role or a user-created custom role. For some types of Google Cloud resources,
      # a `binding` can also specify a `condition`, which is a logical expression that
      # allows access to a resource only if the expression evaluates to `true`. A
      # condition can add constraints based on attributes of the request, the resource,
      # or both. To learn which resources support conditions in their IAM policies,
      # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
      # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
      # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
      # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
      # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
      # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
      # title": "expirable access", "description": "Does not grant access after Sep
      # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
      # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
      # members: - user:mike@example.com - group:admins@example.com - domain:google.
      # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
      # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
      # roles/resourcemanager.organizationViewer condition: title: expirable access
      # description: Does not grant access after Sep 2020 expression: request.time <
      # timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a
      # description of IAM and its features, see the [IAM documentation](https://cloud.
      # google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Associates a list of `members` to a `role`. Optionally, may specify a `
        # condition` that determines how and when the `bindings` are applied. Each of
        # the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::ContaineranalysisV1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31)
      # and a repo name within that project.
      class ProjectRepoId
        include Google::Apis::Core::Hashable
      
        # The ID of the project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The name of the repo. Leave empty for the default repo.
        # Corresponds to the JSON property `repoName`
        # @return [String]
        attr_accessor :repo_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
          @repo_name = args[:repo_name] if args.key?(:repo_name)
        end
      end
      
      # Steps taken to build the artifact. For a TaskRun, typically each container
      # corresponds to one step in the recipe.
      class Recipe
        include Google::Apis::Core::Hashable
      
        # Collection of all external inputs that influenced the build on top of recipe.
        # definedInMaterial and recipe.entryPoint. For example, if the recipe type were "
        # make", then this might be the flags passed to make aside from the target,
        # which is captured in recipe.entryPoint. Since the arguments field can greatly
        # vary in structure, depending on the builder and recipe type, this is of form "
        # Any".
        # Corresponds to the JSON property `arguments`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :arguments
      
        # Index in materials containing the recipe steps that are not implied by recipe.
        # type. For example, if the recipe type were "make", then this would point to
        # the source containing the Makefile, not the make program itself. Set to -1 if
        # the recipe doesn't come from a material, as zero is default unset value for
        # int64.
        # Corresponds to the JSON property `definedInMaterial`
        # @return [Fixnum]
        attr_accessor :defined_in_material
      
        # String identifying the entry point into the build. This is often a path to a
        # configuration file and/or a target label within that file. The syntax and
        # meaning are defined by recipe.type. For example, if the recipe type were "make"
        # , then this would reference the directory in which to run make as well as
        # which target to use.
        # Corresponds to the JSON property `entryPoint`
        # @return [String]
        attr_accessor :entry_point
      
        # Any other builder-controlled inputs necessary for correctly evaluating the
        # recipe. Usually only needed for reproducing the build but not evaluated as
        # part of policy. Since the environment field can greatly vary in structure,
        # depending on the builder and recipe type, this is of form "Any".
        # Corresponds to the JSON property `environment`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :environment
      
        # URI indicating what type of recipe was performed. It determines the meaning of
        # recipe.entryPoint, recipe.arguments, recipe.environment, and materials.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arguments = args[:arguments] if args.key?(:arguments)
          @defined_in_material = args[:defined_in_material] if args.key?(:defined_in_material)
          @entry_point = args[:entry_point] if args.key?(:entry_point)
          @environment = args[:environment] if args.key?(:environment)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Metadata for any related URL information.
      class RelatedUrl
        include Google::Apis::Core::Hashable
      
        # Label to describe usage of the URL.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Specific URL associated with the resource.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A unique identifier for a Cloud Repo.
      class RepoId
        include Google::Apis::Core::Hashable
      
        # Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31)
        # and a repo name within that project.
        # Corresponds to the JSON property `projectRepoId`
        # @return [Google::Apis::ContaineranalysisV1::ProjectRepoId]
        attr_accessor :project_repo_id
      
        # A server-assigned, globally unique identifier.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_repo_id = args[:project_repo_id] if args.key?(:project_repo_id)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members` to a single `role`. Members can be
        # user accounts, service accounts, Google groups, and domains (such as G Suite).
        # A `role` is a named list of permissions; each `role` can be an IAM predefined
        # role or a user-created custom role. For some types of Google Cloud resources,
        # a `binding` can also specify a `condition`, which is a logical expression that
        # allows access to a resource only if the expression evaluates to `true`. A
        # condition can add constraints based on attributes of the request, the resource,
        # or both. To learn which resources support conditions in their IAM policies,
        # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
        # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
        # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
        # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
        # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
        # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
        # title": "expirable access", "description": "Does not grant access after Sep
        # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
        # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
        # members: - user:mike@example.com - group:admins@example.com - domain:google.
        # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
        # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
        # roles/resourcemanager.organizationViewer condition: title: expirable access
        # description: Does not grant access after Sep 2020 expression: request.time <
        # timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a
        # description of IAM and its features, see the [IAM documentation](https://cloud.
        # google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::ContaineranalysisV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # Verifiers (e.g. Kritis implementations) MUST verify signatures with respect to
      # the trust anchors defined in policy (e.g. a Kritis policy). Typically this
      # means that the verifier has been configured with a map from `public_key_id` to
      # public key material (and any required parameters, e.g. signing algorithm). In
      # particular, verification implementations MUST NOT treat the signature `
      # public_key_id` as anything more than a key lookup hint. The `public_key_id`
      # DOES NOT validate or authenticate a public key; it only provides a mechanism
      # for quickly selecting a public key ALREADY CONFIGURED on the verifier through
      # a trusted channel. Verification implementations MUST reject signatures in any
      # of the following circumstances: * The `public_key_id` is not recognized by the
      # verifier. * The public key that `public_key_id` refers to does not verify the
      # signature with respect to the payload. The `signature` contents SHOULD NOT be "
      # attached" (where the payload is included with the serialized `signature` bytes)
      # . Verifiers MUST ignore any "attached" payload and only verify signatures with
      # respect to explicitly provided payload (e.g. a `payload` field on the proto
      # message that holds this Signature, or the canonical serialization of the proto
      # message that holds this signature).
      class Signature
        include Google::Apis::Core::Hashable
      
        # The identifier for the public key that verifies this signature. * The `
        # public_key_id` is required. * The `public_key_id` SHOULD be an RFC3986
        # conformant URI. * When possible, the `public_key_id` SHOULD be an immutable
        # reference, such as a cryptographic digest. Examples of valid `public_key_id`s:
        # OpenPGP V4 public key fingerprint: * "openpgp4fpr:
        # 74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA" See https://www.iana.org/assignments/
        # uri-schemes/prov/openpgp4fpr for more details on this scheme. RFC6920 digest-
        # named SubjectPublicKeyInfo (digest of the DER serialization): * "ni:///sha-256;
        # cD9o9Cq6LG3jD0iKXqEi_vdjJGecm_iXkbqVoScViaU" * "nih:///sha-256;
        # 703f68f42aba2c6de30f488a5ea122fef76324679c9bf89791ba95a1271589a5"
        # Corresponds to the JSON property `publicKeyId`
        # @return [String]
        attr_accessor :public_key_id
      
        # The content of the signature, an opaque bytestring. The payload that this
        # signature verifies MUST be unambiguously provided with the Signature during
        # verification. A wrapper message might provide the payload explicitly.
        # Alternatively, a message might have a canonical serialization that can always
        # be unambiguously computed to derive the payload.
        # Corresponds to the JSON property `signature`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :signature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @public_key_id = args[:public_key_id] if args.key?(:public_key_id)
          @signature = args[:signature] if args.key?(:signature)
        end
      end
      
      # Source describes the location of the source used for the build.
      class Source
        include Google::Apis::Core::Hashable
      
        # If provided, some of the source code used for the build may be found in these
        # locations, in the case where the source repository had multiple remotes or
        # submodules. This list will not include the context specified in the context
        # field.
        # Corresponds to the JSON property `additionalContexts`
        # @return [Array<Google::Apis::ContaineranalysisV1::SourceContext>]
        attr_accessor :additional_contexts
      
        # If provided, the input binary artifacts for the build came from this location.
        # Corresponds to the JSON property `artifactStorageSourceUri`
        # @return [String]
        attr_accessor :artifact_storage_source_uri
      
        # A SourceContext is a reference to a tree of files. A SourceContext together
        # with a path point to a unique revision of a single file or directory.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::ContaineranalysisV1::SourceContext]
        attr_accessor :context
      
        # Hash(es) of the build source, which can be used to verify that the original
        # source integrity was maintained in the build. The keys to this map are file
        # paths used as build source and the values contain the hash values for those
        # files. If the build source came in a single package such as a gzipped tarfile (
        # .tar.gz), the FileHash will be for the single path to that file.
        # Corresponds to the JSON property `fileHashes`
        # @return [Hash<String,Google::Apis::ContaineranalysisV1::FileHashes>]
        attr_accessor :file_hashes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_contexts = args[:additional_contexts] if args.key?(:additional_contexts)
          @artifact_storage_source_uri = args[:artifact_storage_source_uri] if args.key?(:artifact_storage_source_uri)
          @context = args[:context] if args.key?(:context)
          @file_hashes = args[:file_hashes] if args.key?(:file_hashes)
        end
      end
      
      # A SourceContext is a reference to a tree of files. A SourceContext together
      # with a path point to a unique revision of a single file or directory.
      class SourceContext
        include Google::Apis::Core::Hashable
      
        # A CloudRepoSourceContext denotes a particular revision in a Google Cloud
        # Source Repo.
        # Corresponds to the JSON property `cloudRepo`
        # @return [Google::Apis::ContaineranalysisV1::CloudRepoSourceContext]
        attr_accessor :cloud_repo
      
        # A SourceContext referring to a Gerrit project.
        # Corresponds to the JSON property `gerrit`
        # @return [Google::Apis::ContaineranalysisV1::GerritSourceContext]
        attr_accessor :gerrit
      
        # A GitSourceContext denotes a particular revision in a third party Git
        # repository (e.g., GitHub).
        # Corresponds to the JSON property `git`
        # @return [Google::Apis::ContaineranalysisV1::GitSourceContext]
        attr_accessor :git
      
        # Labels with user defined metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_repo = args[:cloud_repo] if args.key?(:cloud_repo)
          @gerrit = args[:gerrit] if args.key?(:gerrit)
          @git = args[:git] if args.key?(:git)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # 
      class Subject
        include Google::Apis::Core::Hashable
      
        # "": ""
        # Corresponds to the JSON property `digest`
        # @return [Hash<String,String>]
        attr_accessor :digest
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @digest = args[:digest] if args.key?(:digest)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as '*' or 'storage.*') are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Start and end times for a build execution phase.
      class TimeSpan
        include Google::Apis::Core::Hashable
      
        # End of time span.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Start of time span.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The Upgrade Distribution represents metadata about the Upgrade for each
      # operating system (CPE). Some distributions have additional metadata around
      # updates, classifying them into various categories and severities.
      class UpgradeDistribution
        include Google::Apis::Core::Hashable
      
        # The operating system classification of this Upgrade, as specified by the
        # upstream operating system upgrade feed. For Windows the classification is one
        # of the category_ids listed at https://docs.microsoft.com/en-us/previous-
        # versions/windows/desktop/ff357803(v=vs.85)
        # Corresponds to the JSON property `classification`
        # @return [String]
        attr_accessor :classification
      
        # Required - The specific operating system this metadata applies to. See https://
        # cpe.mitre.org/specification/.
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # The cve tied to this Upgrade.
        # Corresponds to the JSON property `cve`
        # @return [Array<String>]
        attr_accessor :cve
      
        # The severity as specified by the upstream operating system.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classification = args[:classification] if args.key?(:classification)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @cve = args[:cve] if args.key?(:cve)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # An Upgrade Note represents a potential upgrade of a package to a given version.
      # For each package version combination (i.e. bash 4.0, bash 4.1, bash 4.1.2),
      # there will be an Upgrade Note. For Windows, windows_update field represents
      # the information related to the update.
      class UpgradeNote
        include Google::Apis::Core::Hashable
      
        # Metadata about the upgrade for each specific operating system.
        # Corresponds to the JSON property `distributions`
        # @return [Array<Google::Apis::ContaineranalysisV1::UpgradeDistribution>]
        attr_accessor :distributions
      
        # Required for non-Windows OS. The package this Upgrade is for.
        # Corresponds to the JSON property `package`
        # @return [String]
        attr_accessor :package
      
        # Version contains structured information about the version of a package.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::ContaineranalysisV1::Version]
        attr_accessor :version
      
        # Windows Update represents the metadata about the update for the Windows
        # operating system. The fields in this message come from the Windows Update API
        # documented at https://docs.microsoft.com/en-us/windows/win32/api/wuapi/nn-
        # wuapi-iupdate.
        # Corresponds to the JSON property `windowsUpdate`
        # @return [Google::Apis::ContaineranalysisV1::WindowsUpdate]
        attr_accessor :windows_update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distributions = args[:distributions] if args.key?(:distributions)
          @package = args[:package] if args.key?(:package)
          @version = args[:version] if args.key?(:version)
          @windows_update = args[:windows_update] if args.key?(:windows_update)
        end
      end
      
      # An Upgrade Occurrence represents that a specific resource_url could install a
      # specific upgrade. This presence is supplied via local sources (i.e. it is
      # present in the mirror and the running system has noticed its availability).
      # For Windows, both distribution and windows_update contain information for the
      # Windows update.
      class UpgradeOccurrence
        include Google::Apis::Core::Hashable
      
        # The Upgrade Distribution represents metadata about the Upgrade for each
        # operating system (CPE). Some distributions have additional metadata around
        # updates, classifying them into various categories and severities.
        # Corresponds to the JSON property `distribution`
        # @return [Google::Apis::ContaineranalysisV1::UpgradeDistribution]
        attr_accessor :distribution
      
        # Required for non-Windows OS. The package this Upgrade is for.
        # Corresponds to the JSON property `package`
        # @return [String]
        attr_accessor :package
      
        # Version contains structured information about the version of a package.
        # Corresponds to the JSON property `parsedVersion`
        # @return [Google::Apis::ContaineranalysisV1::Version]
        attr_accessor :parsed_version
      
        # Windows Update represents the metadata about the update for the Windows
        # operating system. The fields in this message come from the Windows Update API
        # documented at https://docs.microsoft.com/en-us/windows/win32/api/wuapi/nn-
        # wuapi-iupdate.
        # Corresponds to the JSON property `windowsUpdate`
        # @return [Google::Apis::ContaineranalysisV1::WindowsUpdate]
        attr_accessor :windows_update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distribution = args[:distribution] if args.key?(:distribution)
          @package = args[:package] if args.key?(:package)
          @parsed_version = args[:parsed_version] if args.key?(:parsed_version)
          @windows_update = args[:windows_update] if args.key?(:windows_update)
        end
      end
      
      # Version contains structured information about the version of a package.
      class Version
        include Google::Apis::Core::Hashable
      
        # Used to correct mistakes in the version numbering scheme.
        # Corresponds to the JSON property `epoch`
        # @return [Fixnum]
        attr_accessor :epoch
      
        # Human readable version string. This string is of the form :- and is only set
        # when kind is NORMAL.
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        # Whether this version is specifying part of an inclusive range. Grafeas does
        # not have the capability to specify version ranges; instead we have fields that
        # specify start version and end versions. At times this is insufficient - we
        # also need to specify whether the version is included in the range or is
        # excluded from the range. This boolean is expected to be set to true when the
        # version is included in a range.
        # Corresponds to the JSON property `inclusive`
        # @return [Boolean]
        attr_accessor :inclusive
        alias_method :inclusive?, :inclusive
      
        # Required. Distinguishes between sentinel MIN/MAX versions and normal versions.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Required only when version kind is NORMAL. The main part of the version name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The iteration of the package build from the above version.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @epoch = args[:epoch] if args.key?(:epoch)
          @full_name = args[:full_name] if args.key?(:full_name)
          @inclusive = args[:inclusive] if args.key?(:inclusive)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @revision = args[:revision] if args.key?(:revision)
        end
      end
      
      # Volume describes a Docker container volume which is mounted into build steps
      # in order to persist files across build step execution.
      class Volume
        include Google::Apis::Core::Hashable
      
        # Name of the volume to mount. Volume names must be unique per build step and
        # must be valid names for Docker volumes. Each named volume must be used by at
        # least two build steps.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Path at which to mount the volume. Paths must be absolute and cannot conflict
        # with other volume paths on the same build step or with certain reserved volume
        # paths.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # A security vulnerability that can be found in resources.
      class VulnerabilityNote
        include Google::Apis::Core::Hashable
      
        # The CVSS score of this vulnerability. CVSS score is on a scale of 0 - 10 where
        # 0 indicates low severity and 10 indicates high severity.
        # Corresponds to the JSON property `cvssScore`
        # @return [Float]
        attr_accessor :cvss_score
      
        # Common Vulnerability Scoring System version 3. For details, see https://www.
        # first.org/cvss/specification-document
        # Corresponds to the JSON property `cvssV3`
        # @return [Google::Apis::ContaineranalysisV1::CvsSv3]
        attr_accessor :cvss_v3
      
        # Details of all known distros and packages affected by this vulnerability.
        # Corresponds to the JSON property `details`
        # @return [Array<Google::Apis::ContaineranalysisV1::Detail>]
        attr_accessor :details
      
        # The note provider assigned severity of this vulnerability.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # The time this information was last changed at the source. This is an upstream
        # timestamp from the underlying information source - e.g. Ubuntu security
        # tracker.
        # Corresponds to the JSON property `sourceUpdateTime`
        # @return [String]
        attr_accessor :source_update_time
      
        # Windows details get their own format because the information format and model
        # don't match a normal detail. Specifically Windows updates are done as patches,
        # thus Windows vulnerabilities really are a missing package, rather than a
        # package being at an incorrect version.
        # Corresponds to the JSON property `windowsDetails`
        # @return [Array<Google::Apis::ContaineranalysisV1::WindowsDetail>]
        attr_accessor :windows_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cvss_score = args[:cvss_score] if args.key?(:cvss_score)
          @cvss_v3 = args[:cvss_v3] if args.key?(:cvss_v3)
          @details = args[:details] if args.key?(:details)
          @severity = args[:severity] if args.key?(:severity)
          @source_update_time = args[:source_update_time] if args.key?(:source_update_time)
          @windows_details = args[:windows_details] if args.key?(:windows_details)
        end
      end
      
      # An occurrence of a severity vulnerability on a resource.
      class VulnerabilityOccurrence
        include Google::Apis::Core::Hashable
      
        # Output only. The CVSS score of this vulnerability. CVSS score is on a scale of
        # 0 - 10 where 0 indicates low severity and 10 indicates high severity.
        # Corresponds to the JSON property `cvssScore`
        # @return [Float]
        attr_accessor :cvss_score
      
        # The distro assigned severity for this vulnerability when it is available,
        # otherwise this is the note provider assigned severity. When there are multiple
        # PackageIssues for this vulnerability, they can have different effective
        # severities because some might be provided by the distro while others are
        # provided by the language ecosystem for a language pack. For this reason, it is
        # advised to use the effective severity on the PackageIssue level. In the case
        # where multiple PackageIssues have differing effective severities, this field
        # should be the highest severity for any of the PackageIssues.
        # Corresponds to the JSON property `effectiveSeverity`
        # @return [String]
        attr_accessor :effective_severity
      
        # Output only. Whether at least one of the affected packages has a fix available.
        # Corresponds to the JSON property `fixAvailable`
        # @return [Boolean]
        attr_accessor :fix_available
        alias_method :fix_available?, :fix_available
      
        # Output only. A detailed description of this vulnerability.
        # Corresponds to the JSON property `longDescription`
        # @return [String]
        attr_accessor :long_description
      
        # Required. The set of affected locations and their fixes (if available) within
        # the associated resource.
        # Corresponds to the JSON property `packageIssue`
        # @return [Array<Google::Apis::ContaineranalysisV1::PackageIssue>]
        attr_accessor :package_issue
      
        # Output only. URLs related to this vulnerability.
        # Corresponds to the JSON property `relatedUrls`
        # @return [Array<Google::Apis::ContaineranalysisV1::RelatedUrl>]
        attr_accessor :related_urls
      
        # Output only. The note provider assigned severity of this vulnerability.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Output only. A one sentence description of this vulnerability.
        # Corresponds to the JSON property `shortDescription`
        # @return [String]
        attr_accessor :short_description
      
        # The type of package; whether native or non native (e.g., ruby gems, node.js
        # packages, etc.).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cvss_score = args[:cvss_score] if args.key?(:cvss_score)
          @effective_severity = args[:effective_severity] if args.key?(:effective_severity)
          @fix_available = args[:fix_available] if args.key?(:fix_available)
          @long_description = args[:long_description] if args.key?(:long_description)
          @package_issue = args[:package_issue] if args.key?(:package_issue)
          @related_urls = args[:related_urls] if args.key?(:related_urls)
          @severity = args[:severity] if args.key?(:severity)
          @short_description = args[:short_description] if args.key?(:short_description)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A summary of how many vulnerability occurrences there are per resource and
      # severity type.
      class VulnerabilityOccurrencesSummary
        include Google::Apis::Core::Hashable
      
        # A listing by resource of the number of fixable and total vulnerabilities.
        # Corresponds to the JSON property `counts`
        # @return [Array<Google::Apis::ContaineranalysisV1::FixableTotalByDigest>]
        attr_accessor :counts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @counts = args[:counts] if args.key?(:counts)
        end
      end
      
      # 
      class WindowsDetail
        include Google::Apis::Core::Hashable
      
        # Required. The [CPE URI](https://cpe.mitre.org/specification/) this
        # vulnerability affects.
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # The description of this vulnerability.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The names of the KBs which have hotfixes to mitigate this
        # vulnerability. Note that there may be multiple hotfixes (and thus multiple KBs)
        # that mitigate a given vulnerability. Currently any listed KBs presence is
        # considered a fix.
        # Corresponds to the JSON property `fixingKbs`
        # @return [Array<Google::Apis::ContaineranalysisV1::KnowledgeBase>]
        attr_accessor :fixing_kbs
      
        # Required. The name of this vulnerability.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @description = args[:description] if args.key?(:description)
          @fixing_kbs = args[:fixing_kbs] if args.key?(:fixing_kbs)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Windows Update represents the metadata about the update for the Windows
      # operating system. The fields in this message come from the Windows Update API
      # documented at https://docs.microsoft.com/en-us/windows/win32/api/wuapi/nn-
      # wuapi-iupdate.
      class WindowsUpdate
        include Google::Apis::Core::Hashable
      
        # The list of categories to which the update belongs.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::ContaineranalysisV1::Category>]
        attr_accessor :categories
      
        # The localized description of the update.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The unique identifier of the update.
        # Corresponds to the JSON property `identity`
        # @return [Google::Apis::ContaineranalysisV1::Identity]
        attr_accessor :identity
      
        # The Microsoft Knowledge Base article IDs that are associated with the update.
        # Corresponds to the JSON property `kbArticleIds`
        # @return [Array<String>]
        attr_accessor :kb_article_ids
      
        # The last published timestamp of the update.
        # Corresponds to the JSON property `lastPublishedTimestamp`
        # @return [String]
        attr_accessor :last_published_timestamp
      
        # The hyperlink to the support information for the update.
        # Corresponds to the JSON property `supportUrl`
        # @return [String]
        attr_accessor :support_url
      
        # The localized title of the update.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @description = args[:description] if args.key?(:description)
          @identity = args[:identity] if args.key?(:identity)
          @kb_article_ids = args[:kb_article_ids] if args.key?(:kb_article_ids)
          @last_published_timestamp = args[:last_published_timestamp] if args.key?(:last_published_timestamp)
          @support_url = args[:support_url] if args.key?(:support_url)
          @title = args[:title] if args.key?(:title)
        end
      end
    end
  end
end