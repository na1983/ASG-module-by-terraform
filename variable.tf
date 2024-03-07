variable "name_prefix" {
    default = "exampl"
}
variable "image_id" {
    default = "ami-03cceb19496c25679"
}
variable "instance_type" {
    default = "t2.micro"
}
variable "availability_zones" {
    default = ["eu-central-1"]

}
variable "desired_capacity" {
    default = "1"
}
variable "max_size" {
    default = "1"
}
variable "min_size" {
    default = "1"
}