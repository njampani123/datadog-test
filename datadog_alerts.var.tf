variable "newrelic_api_key" {
	description = "The NewRelic API Key"
	type        = string
}

variable "service" {
	description = "The service to create alerts for"
	type = object({
		name                       = string
		component		   = string
		duration                   = number
		cpu_threshold              = number
		response_time_threshold    = number
		error_percentage_threshold = number
		throughput_threshold       = number
	})

	default = {
      		name                       = "CCExtensibility"
		component		   = "Scanning"
		duration                   = 5
		cpu_threshold              = 5
		response_time_threshold    = 5
		error_percentage_threshold = 10
		throughput_threshold       = 10
    }

	}


variable "app_ids" {
	description = "The App IDs"
	type        = list(number)
	default     = [272296171]
}
