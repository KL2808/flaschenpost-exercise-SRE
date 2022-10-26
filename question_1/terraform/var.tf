variable "azure_rg_name" {
  type    = string
  default = "sre-challenge-flashenpost"
}

variable "azure_rg_location" {
  type    = string
  default = "West Europe"
}

variable "azure_sacc_name" {
  type    = string
  # "srechallengeforflaschenpost" as name would be too long due to the max length of name beeing 24 chars :(
  default = "srechallengeflaschenpost"
}

variable "azure_sacc_tier" {
  type    = string
  default = "Standard"
}

variable "azure_sacc_replication_type" {
  type    = string
  default = "LRS"
}

variable "azure_sacc_access_tier" {
  type    = string
  default = "Hot"
}

variable "azure_sc_name" {
  type    = string
  default = "sre"
}

variable "azure_sc_access_type" {
  type    = string
  default = "private"
}

variable "azure_tags" {
  type = map
  default = {
    "department" = "SRE"
  }
}
