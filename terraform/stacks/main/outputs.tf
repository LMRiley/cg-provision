output "az1" {
  value = "${var.az1}"
}
output "az2" {
  value = "${var.az2}"
}

/* VPC */
output "vpc_id" {
  value = "${module.stack.vpc_id}"
}
output "vpc_cidr" {
  value = "${module.stack.vpc_cidr}"
}

/* Private network */
output "private_subnet_az1" {
  value = "${module.stack.private_subnet_az1}"
}
output "private_subnet_az2" {
  value = "${module.stack.private_subnet_az2}"
}
output "private_route_table_az1" {
  value = "${module.stack.private_route_table_az1}"
}
output "private_route_table_az2" {
  value = "${module.stack.private_route_table_az2}"
}

/* Public network */
output "public_subnet_az1" {
  value = "${module.stack.public_subnet_az1}"
}
output "public_subnet_az2" {
  value = "${module.stack.public_subnet_az2}"
}
output "public_route_table" {
  value = "${module.stack.public_route_table}"
}

/* Security Groups */
output "bosh_security_group" {
  value = "${module.stack.bosh_security_group}"
}
output "local_vpc_traffic_security_group" {
    value = "${module.stack.local_vpc_traffic_security_group}"
}
output "web_traffic_security_group" {
  value = "${module.stack.web_traffic_security_group}"
}

/* RDS Network */
output "rds_subnet_az1" {
    value = "${module.stack.rds_subnet_az1}"
}
output "rds_subnet_az2" {
    value = "${module.stack.rds_subnet_az2}"
}
output "rds_subnet_group" {
    value = "${module.stack.rds_subnet_group}"
}
output "rds_mysql_security_group" {
  value = "${module.stack.rds_mysql_security_group}"
}
output "rds_postgres_security_group" {
  value = "${module.stack.rds_postgres_security_group}"
}

/* RDS Bosh Instance */
output "bosh_rds_url_curr" {
  value = "${module.stack.bosh_rds_url_curr}"
}
output "bosh_rds_host_curr" {
  value = "${module.stack.bosh_rds_host_curr}"
}
output "bosh_rds_url_prev" {
  value = "${module.stack.bosh_rds_url_prev}"
}
output "bosh_rds_host_prev" {
  value = "${module.stack.bosh_rds_host_prev}"
}
output "bosh_rds_port" {
  value = "${module.stack.bosh_rds_port}"
}
output "bosh_rds_username" {
  value = "${module.stack.bosh_rds_username}"
}
output "bosh_rds_password" {
  value = "${module.stack.bosh_rds_password}"
}

/* bosh user */
output "bosh_username" {
  value = "${module.stack.bosh_username}"
}
output "bosh_access_key_id_prev" {
  value = "${module.stack.bosh_access_key_id_prev}"
}
output "bosh_secret_access_key_prev" {
  value = "${module.stack.bosh_secret_access_key_prev}"
}
output "bosh_access_key_id_curr" {
  value = "${module.stack.bosh_access_key_id_curr}"
}
output "bosh_secret_access_key_curr" {
  value = "${module.stack.bosh_secret_access_key_curr}"
}

/* CloudFoundry ELBs */
output "cf_main_elb_dns_name" {
  value = "${module.cf.elb_main_dns_name}"
}
output "cf_main_elb_name" {
  value = "${module.cf.elb_main_name}"
}
output "cf_logging_elb_dns_name" {
  value = "${module.cf.elb_logging_dns_name}"
}
output "cf_logging_elb_name" {
  value = "${module.cf.elb_logging_name}"
}
output "cf_apps_elb_dns_name" {
  value = "${module.cf.elb_apps_dns_name}"
}
output "cf_apps_elb_name" {
  value = "${module.cf.elb_apps_name}"
}

/* CloudFoundry RDS */
output "cf_rds_url" {
  value = "${module.cf.cf_rds_url}"
}
output "cf_rds_host" {
  value = "${module.cf.cf_rds_host}"
}
output "cf_rds_port" {
  value = "${module.cf.cf_rds_port}"
}
output "cf_rds_username" {
  value = "${module.cf.cf_rds_username}"
}
output "cf_rds_password" {
  value = "${module.cf.cf_rds_password}"
}
output "cf_rds_engine" {
  value = "${module.cf.cf_rds_engine}"
}

/* Services Subnets */
output "services_subnet_az1" {
  value = "${module.cf.services_subnet_az1}"
}
output "services_subnet_az2" {
  value = "${module.cf.services_subnet_az2}"
}

/* Diego ELB */
output "diego_elb_name" {
  value = "${module.diego.diego_elb_name}"
}

output "diego_elb_dns_name" {
  value = "${module.diego.diego_elb_dns_name}"
}

/* Diego subnets */
output "diego_services_subnet_az1" {
  value = "${module.diego.diego_services_subnet_az1}"
}
output "diego_services_subnet_az2" {
  value = "${module.diego.diego_services_subnet_az2}"
}

/* Kubernetes network */
output "kubernetes_elb_name" {
  value = "${module.kubernetes.kubernetes_elb_name}"
}
output "kubernetes_elb_dns_name" {
  value = "${module.kubernetes.kubernetes_elb_dns_name}"
}
output "kubernetes_elb_security_group" {
  value = "${module.kubernetes.kubernetes_elb_security_group}"
}
output "kubernetes_ec2_security_group" {
  value = "${module.kubernetes.kubernetes_ec2_security_group}"
}

/* S3 broker user */
output "s3_broker_username" {
  value = "${module.cf.s3_broker_username}"
}
output "s3_broker_access_key_id_prev" {
  value = "${module.cf.s3_broker_access_key_id_prev}"
}
output "s3_broker_secret_access_key_prev" {
  value = "${module.cf.s3_broker_secret_access_key_prev}"
}
output "s3_broker_access_key_id_curr" {
  value = "${module.cf.s3_broker_access_key_id_curr}"
}
output "s3_broker_secret_access_key_curr" {
  value = "${module.cf.s3_broker_secret_access_key_curr}"
}

/* Client ELBs */
output "client_elb_star_18f_gov_name" {
  value = "${module.client-elbs.star_18f_gov_elb_name}"
}

output "client_elb_star_18f_gov_dns_name" {
  value = "${module.client-elbs.star_18f_gov_elb_dns_name}"
}

/* Shibboleth Proxy ELB */
output "shibboleth_elb_name" {
  value = "${module.shibboleth.shibboleth_elb_name}"
}

output "shibboleth_elb_dns_name" {
  value = "${module.shibboleth.shibboleth_elb_dns_name}"
}

output "shibboleth_elb_zone_id" {
  value = "${module.shibboleth.shibboleth_elb_zone_id}"
}

/* Concourse */
output "concourse_subnet" {
  value = "${module.concourse.concourse_subnet}"
}
output "concourse_subnet_cidr" {
  value = "${module.concourse.concourse_subnet_cidr}"
}
output "concourse_subnet_gateway" {
  value = "${cidrhost("${module.concourse.concourse_subnet_cidr}", 1)}"
}
output "concourse_security_group" {
  value = "${module.concourse.concourse_security_group}"
}
output "concourse_rds_identifier" {
  value = "${module.concourse.concourse_rds_identifier}"
}
output "concourse_rds_name" {
  value = "${module.concourse.concourse_rds_name}"
}
output "concourse_rds_url" {
  value = "${module.concourse.concourse_rds_url}"
}
output "concourse_rds_username" {
  value = "${module.concourse.concourse_rds_username}"
}
output "concourse_rds_password" {
  value = "${module.concourse.concourse_rds_password}"
}
output "concourse_elb_dns_name" {
  value = "${module.concourse.concourse_elb_dns_name}"
}
output "concourse_elb_name" {
  value = "${module.concourse.concourse_elb_name}"
}
output "concourse_elb_zone_id" {
  value = "${module.concourse.concourse_elb_zone_id}"
}

/* iam roles */
output "default_profile" {
  value = "${module.default_role.profile_name}"
}
output "bosh_profile" {
  value = "${module.bosh_role.profile_name}"
}
output "bosh_compilation_profile" {
  value = "${module.bosh_compilation_role.profile_name}"
}
output "logsearch_ingestor_profile" {
  value = "${module.logsearch_ingestor_role.profile_name}"
}
output "kubernetes_master_profile" {
  value = "${module.kubernetes_master_role.profile_name}"
}
output "kubernetes_minion_profile" {
  value = "${module.kubernetes_minion_role.profile_name}"
}
output "kubernetes_node_profile" {
  value = "${module.kubernetes_node_role.profile_name}"
}
output "kubernetes_logger_profile" {
  value = "${module.kubernetes_logger_role.profile_name}"
}
output "etcd_backup_profile" {
  value = "${module.etcd_backup_role.profile_name}"
}
output "cf_blobstore_profile" {
  value = "${module.cf_blobstore_role.profile_name}"
}

// Expose upstream bosh profile
output "upstream_bosh_compilation_profile" {
  value = "${data.terraform_remote_state.target_vpc.bosh_compilation_profile}"
}

/* Static proxy */
output "static_proxy_ip" {
  value = "${module.static_proxy.static_ip}"
}
