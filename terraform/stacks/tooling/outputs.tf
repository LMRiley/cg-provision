output "az1" {
  value = "${var.az1}"
}
output "az2" {
  value = "${var.az2}"
}

/* VPC */
output "vpc_region" {
  value = "${var.aws_default_region}"
}
output "vpc_id" {
  value = "${module.stack.vpc_id}"
}
output "vpc_cidr" {
  value = "${module.stack.vpc_cidr}"
}
output "vpc_cidr_dns" {
  value = "${cidrhost("${module.stack.vpc_cidr}", 2)}"
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

output "private_subnet_az1_cidr" {
  value = "${var.private_cidr_1}"
}
output "private_subnet_az2_cidr" {
  value = "${var.private_cidr_2}"
}

output "private_subnet_az1_zone" {
  value = "${var.az1}"
}
output "private_subnet_az2_zone" {
  value = "${var.az2}"
}

output "private_subnet_az1_reserved" {
  value = "${cidrhost("${var.private_cidr_1}", 0)} - ${cidrhost("${var.private_cidr_1}", 3)}"
}

output "private_subnet_az2_reserved" {
  value = "${cidrhost("${var.private_cidr_2}", 0)} - ${cidrhost("${var.private_cidr_2}", 3)}"
}

output "private_subnet_az1_gateway" {
  value = "${cidrhost("${var.private_cidr_1}", 1)}"
}

output "private_subnet_az2_gateway" {
  value = "${cidrhost("${var.private_cidr_2}", 1)}"
}

output "production_monitoring_subnet_reserved" {
  value = "${cidrhost("${var.monitoring_production_cidr}", 0)} - ${cidrhost("${var.monitoring_production_cidr}", 3)}"
}
output "staging_monitoring_subnet_reserved" {
  value = "${cidrhost("${var.monitoring_staging_cidr}", 0)} - ${cidrhost("${var.monitoring_staging_cidr}", 3)}"
}

output "production_monitoring_subnet_cidr" {
  value = "${var.monitoring_production_cidr}"
}
output "staging_monitoring_subnet_cidr" {
  value = "${var.monitoring_staging_cidr}"
}

output "production_monitoring_subnet_gateway" {
  value = "${cidrhost("${var.monitoring_production_cidr}", 1)}"
}
output "staging_monitoring_subnet_gateway" {
  value = "${cidrhost("${var.monitoring_staging_cidr}", 1)}"
}

output "production_monitoring_riemann_address" {
  value = "${cidrhost("${var.monitoring_production_cidr}", 128)}"
}
output "production_monitoring_influxdb_address" {
  value = "${cidrhost("${var.monitoring_production_cidr}", 129)}"
}
output "staging_monitoring_riemann_address" {
  value = "${cidrhost("${var.monitoring_staging_cidr}", 128)}"
}
output "staging_monitoring_influxdb_address" {
  value = "${cidrhost("${var.monitoring_staging_cidr}", 129)}"
}

output "master_bosh_static_ip" {
  value = "${cidrhost("${var.private_cidr_1}", 6)}"
}
output "tooling_bosh_static_ip" {
  value = "${cidrhost("${var.private_cidr_1}", 7)}"
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
output "nessus_security_group" {
  value = "${aws_security_group.nessus_traffic.id}"
}
output "bosh_uaa_security_group" {
  value = "${aws_security_group.bosh_uaa_traffic.id}"
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

/* Production Concourse */
output "production_concourse_subnet" {
  value = "${module.concourse_production.concourse_subnet}"
}
output "production_concourse_subnet_reserved" {
  value = "${cidrhost("${module.concourse_production.concourse_subnet_cidr}", 0)} - ${cidrhost("${module.concourse_production.concourse_subnet_cidr}", 3)}"
}
output "production_concourse_subnet_cidr" {
  value = "${module.concourse_production.concourse_subnet_cidr}"
}
output "production_concourse_subnet_gateway" {
  value = "${cidrhost("${module.concourse_production.concourse_subnet_cidr}", 1)}"
}
output "production_concourse_security_group" {
  value = "${module.concourse_production.concourse_security_group}"
}
output "production_concourse_rds_identifier" {
  value = "${module.concourse_production.concourse_rds_identifier}"
}
output "production_concourse_rds_name" {
  value = "${module.concourse_production.concourse_rds_name}"
}
output "production_concourse_rds_host" {
  value = "${module.concourse_production.concourse_rds_host}"
}
output "production_concourse_rds_port" {
  value = "${module.concourse_production.concourse_rds_port}"
}
output "production_concourse_rds_url" {
  value = "${module.concourse_production.concourse_rds_url}"
}
output "production_concourse_rds_username" {
  value = "${module.concourse_production.concourse_rds_username}"
}
output "production_concourse_rds_password" {
  value = "${module.concourse_production.concourse_rds_password}"
}
output "production_concourse_elb_dns_name" {
  value = "${module.concourse_production.concourse_elb_dns_name}"
}
output "production_concourse_elb_name" {
  value = "${module.concourse_production.concourse_elb_name}"
}

/* Staging Concourse */
output "staging_concourse_subnet" {
  value = "${module.concourse_staging.concourse_subnet}"
}
output "staging_concourse_subnet_reserved" {
  value = "${cidrhost("${module.concourse_staging.concourse_subnet_cidr}", 0)} - ${cidrhost("${module.concourse_staging.concourse_subnet_cidr}", 3)}"
}
output "staging_concourse_subnet_cidr" {
  value = "${module.concourse_staging.concourse_subnet_cidr}"
}
output "staging_concourse_subnet_gateway" {
  value = "${cidrhost("${module.concourse_staging.concourse_subnet_cidr}", 1)}"
}
output "staging_concourse_security_group" {
  value = "${module.concourse_staging.concourse_security_group}"
}
output "staging_concourse_rds_identifier" {
  value = "${module.concourse_staging.concourse_rds_identifier}"
}
output "staging_concourse_rds_name" {
  value = "${module.concourse_staging.concourse_rds_name}"
}
output "staging_concourse_rds_host" {
  value = "${module.concourse_staging.concourse_rds_host}"
}
output "staging_concourse_rds_port" {
  value = "${module.concourse_staging.concourse_rds_port}"
}
output "staging_concourse_rds_url" {
  value = "${module.concourse_staging.concourse_rds_url}"
}
output "staging_concourse_rds_username" {
  value = "${module.concourse_staging.concourse_rds_username}"
}
output "staging_concourse_rds_password" {
  value = "${module.concourse_staging.concourse_rds_password}"
}
output "staging_concourse_elb_dns_name" {
  value = "${module.concourse_staging.concourse_elb_dns_name}"
}
output "staging_concourse_elb_name" {
  value = "${module.concourse_staging.concourse_elb_name}"
}

/* Production Monitoring */
output "production_monitoring_az" {
  value = "${module.monitoring_production.monitoring_az}"
}
output "production_monitoring_subnet" {
  value = "${module.monitoring_production.monitoring_subnet}"
}
output "production_monitoring_security_group" {
  value = "${module.monitoring_production.monitoring_security_group}"
}
output "production_monitoring_elb_dns_name" {
  value = "${module.monitoring_production.monitoring_elb_dns_name}"
}
output "production_monitoring_elb_name" {
  value = "${module.monitoring_production.monitoring_elb_name}"
}
output "production_monitoring_influxdb_bucket_name" {
  value = "${module.monitoring_production.monitoring_influxdb_backups}"
}
output "production_prometheus_elb_dns_name" {
  value = "${module.monitoring_production.prometheus_elb_dns_name}"
}
output "production_prometheus_elb_name" {
  value = "${module.monitoring_production.prometheus_elb_name}"
}

output "monitoring_security_groups" {
  value = {
    staging = "${module.monitoring_staging.monitoring_security_group}"
    development = "${module.monitoring_staging.monitoring_security_group}"
    production = "${module.monitoring_production.monitoring_security_group}"
  }
}

/* Staging Monitoring */
output "staging_monitoring_az" {
  value = "${module.monitoring_staging.monitoring_az}"
}
output "staging_monitoring_subnet" {
  value = "${module.monitoring_staging.monitoring_subnet}"
}
output "staging_monitoring_security_group" {
  value = "${module.monitoring_staging.monitoring_security_group}"
}
output "staging_monitoring_elb_dns_name" {
  value = "${module.monitoring_staging.monitoring_elb_dns_name}"
}
output "staging_monitoring_elb_name" {
  value = "${module.monitoring_staging.monitoring_elb_name}"
}
output "staging_monitoring_influxdb_bucket_name" {
  value = "${module.monitoring_staging.monitoring_influxdb_backups}"
}
output "staging_prometheus_elb_dns_name" {
  value = "${module.monitoring_staging.prometheus_elb_dns_name}"
}
output "staging_prometheus_elb_name" {
  value = "${module.monitoring_staging.prometheus_elb_name}"
}

/* master bosh user */
output "master_bosh_username" {
  value = "${module.master_bosh_user.username}"
}
output "master_bosh_access_key_id_prev" {
  value = "${module.master_bosh_user.access_key_id_prev}"
}
output "master_bosh_secret_access_key_prev" {
  value = "${module.master_bosh_user.secret_access_key_prev}"
}
output "master_bosh_access_key_id_curr" {
  value = "${module.master_bosh_user.access_key_id_curr}"
}
output "master_bosh_secret_access_key_curr" {
  value = "${module.master_bosh_user.secret_access_key_curr}"
}

/* billing user */
output "billing_username" {
  value = "${module.billing_user.username}"
}
output "billing_access_key_id_prev" {
  value = "${module.billing_user.access_key_id_prev}"
}
output "billing_secret_access_key_prev" {
  value = "${module.billing_user.secret_access_key_prev}"
}
output "billing_access_key_id_curr" {
  value = "${module.billing_user.access_key_id_curr}"
}
output "billing_secret_access_key_curr" {
  value = "${module.billing_user.secret_access_key_curr}"
}

/* ci user to access bosh secrets */
output "ci_username" {
  value = "${module.ci_user.username}"
}
output "ci_access_key_id_prev" {
  value = "${module.ci_user.access_key_id_prev}"
}
output "ci_secret_access_key_prev" {
  value = "${module.ci_user.secret_access_key_prev}"
}
output "ci_access_key_id_curr" {
  value = "${module.ci_user.access_key_id_curr}"
}
output "ci_secret_access_key_curr" {
  value = "${module.ci_user.secret_access_key_curr}"
}

/* ci user to access bosh secrets */
output "ci_east_username" {
  value = "${module.ci_user_east.username}"
}
output "ci_east_access_key_id_prev" {
  value = "${module.ci_user_east.access_key_id_prev}"
}
output "ci_east_secret_access_key_prev" {
  value = "${module.ci_user_east.secret_access_key_prev}"
}
output "ci_east_access_key_id_curr" {
  value = "${module.ci_user_east.access_key_id_curr}"
}
output "ci_east_secret_access_key_curr" {
  value = "${module.ci_user_east.secret_access_key_curr}"
}

/* release user to write release blobs */
output "release_username" {
  value = "${module.release_user.username}"
}
output "release_access_key_id_prev" {
  value = "${module.release_user.access_key_id_prev}"
}
output "release_secret_access_key_prev" {
  value = "${module.release_user.secret_access_key_prev}"
}
output "release_access_key_id_curr" {
  value = "${module.release_user.access_key_id_curr}"
}
output "release_secret_access_key_curr" {
  value = "${module.release_user.secret_access_key_curr}"
}

/* stemcell user */
output "stemcell_username" {
  value = "${module.stemcell_user.username}"
}
output "stemcell_access_key_id_prev" {
  value = "${module.stemcell_user.access_key_id_prev}"
}
output "stemcell_secret_access_key_prev" {
  value = "${module.stemcell_user.secret_access_key_prev}"
}
output "stemcell_access_key_id_curr" {
  value = "${module.stemcell_user.access_key_id_curr}"
}
output "stemcell_secret_access_key_curr" {
  value = "${module.stemcell_user.secret_access_key_curr}"
}

/* limit check user */
output "limit_check_username" {
  value = "${module.limit_check_user.username}"
}
output "limit_check_access_key_id_prev" {
  value = "${module.limit_check_user.access_key_id_prev}"
}
output "limit_check_secret_access_key_prev" {
  value = "${module.limit_check_user.secret_access_key_prev}"
}
output "limit_check_access_key_id_curr" {
  value = "${module.limit_check_user.access_key_id_curr}"
}
output "limit_check_secret_access_key_curr" {
  value = "${module.limit_check_user.secret_access_key_curr}"
}

/* aws broker user */
output "aws_broker_username" {
  value = "${module.aws_broker_user.username}"
}
output "aws_broker_access_key_id_prev" {
  value = "${module.aws_broker_user.access_key_id_prev}"
}
output "aws_broker_secret_access_key_prev" {
  value = "${module.aws_broker_user.secret_access_key_prev}"
}
output "aws_broker_access_key_id_curr" {
  value = "${module.aws_broker_user.access_key_id_curr}"
}
output "aws_broker_secret_access_key_curr" {
  value = "${module.aws_broker_user.secret_access_key_curr}"
}

/* iam roles */
output "default_profile" {
  value = "${module.default_role.profile_name}"
}
output "master_bosh_profile" {
  value = "${module.master_bosh_role.profile_name}"
}
output "bosh_profile" {
  value = "${module.bosh_role.profile_name}"
}
output "bosh_compilation_profile" {
  value = "${module.bosh_compilation_role.profile_name}"
}
output "riemann_monitoring_profile" {
  value = "${module.riemann_monitoring_role.profile_name}"
}
output "influxdb_monitoring_profile" {
  value = "${module.influxdb_monitoring_role.profile_name}"
}
output "concourse_worker_profile" {
  value = "${module.concourse_worker_role.profile_name}"
}
output "concourse_iaas_worker_profile" {
  value = "${module.concourse_iaas_worker_role.profile_name}"
}

/* nessus elb */
output "nessus_elb_dns_name" {
  value = "${aws_elb.nessus_elb.dns_name}"
}

output "nessus_elb_name" {
  value = "${aws_elb.nessus_elb.name}"
}

output "nessus_static_ip" {
  value = "${cidrhost("${var.private_cidr_1}", 71)}"
}

/* BOSH UAA elb */
output "bosh_uaa_elb_dns_name" {
  value = "${aws_elb.bosh_uaa_elb.dns_name}"
}

output "bosh_uaa_elb_name" {
  value = "${aws_elb.bosh_uaa_elb.name}"
}
