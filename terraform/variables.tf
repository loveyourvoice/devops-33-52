variable "token" {
  type        = string
  default     = "y0_AgAAAAAfi-HGAATuwQAAAAEJYlUlAAA2pEqbHMJN4qZ4MZkuh0xI7QlLHA"
}

variable "cloud_id" {
  type        = string
  default     = "ajegme747a8hnc18mo40"
}

variable "folder_id" {
  type        = string
  default     = "b1grnrodusrjs3sjilsj"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "vpc_name" {
  type        = string
  default     = "develop"
}

variable "public_subnet" {
  type        = string
  default     = "public-subnet"
}