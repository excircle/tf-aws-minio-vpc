output "vpc_az_data" {
    value = data.aws_availability_zones.available
}

output "subnets" {
    value = {
        // Public Subnets
        public = values({for k, v in aws_subnet.public: k => v.id})
        // if var.make_private is true, return private subnets
        private = var.make_private ? values({for k, v in aws_subnet.private: k => v.id}) : null
    }
}

output "vpc_id" {
    value = aws_vpc.main.id
}