variable "naming_options" {
  type        = any
  default     = {}
  description = "(Required) The naming options to generate the name of the resource group. Must be unique on your Azure subscription."
}
variable "location" {
  type        = string
  description = "(Required) The location where the resource group should be created. For a list of all Azure locations, please consult this link or run az account list-locations --output table."
}
variable "tags" {
  type        = map(string)
  default     = {}
  description = "(Optional) A mapping of tags to assign to the resource."
}
