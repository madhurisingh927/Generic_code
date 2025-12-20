variable "vms" {
  type = map(object({
    nic_name = string
    name = string
    resource_group_name = string
    location = string
    size = string
    subnet        = string
    vnet           = string
    pip_name          = string
    source_image_reference = map(string)
    }
  ))
}