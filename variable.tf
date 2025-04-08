variable "varrg" {
    description = "value type of the variable"
  type        = map(any)
    default     = {
        name     = "manch-rg"
        location = "westus"
    }
  
}