variable "redis_image_version" {
  description = "The Redis Docker image version to deploy."
  type        = string
  default     = "3.2"
}

variable "nom_metadata_enabled" {
  description = "When enabled, adds NOM pack metadata to the job metadata."
  type        = bool
  default     = true
}

variable "redis_resources" {
  description = "The resources to assign to the Redis task."
  type = object({
    cpu = number
    memory = number
  })
  default = {
    cpu = 500,
    memory = 256
  }
}
