/*
 * Tooling stack
 *
 * This stack relies on defaults heavily. Please look through
 * all the module sources, and specifically, the variables.tf
 * in each module, which declares these defaults.
 */

module "stack" {
    source = "../../modules/stack/base"

    stack_description = "${var.stack_description}"
    vpc_cidr = "${var.vpc_cidr}"
    az1 = "${var.az1}"
    az2 = "${var.az2}"
    public_cidr_1 = "${var.public_cidr_1}"
    public_cidr_2 = "${var.public_cidr_2}"
    private_cidr_1 = "${var.private_cidr_1}"
    private_cidr_2 = "${var.private_cidr_2}"
    rds_private_cidr_1 = "${var.rds_private_cidr_1}"
    rds_private_cidr_2 = "${var.rds_private_cidr_2}"
    rds_password = "${var.rds_password}"

}

module "concourse_production" {
  source = "../../modules/concourse"
    stack_description = "${var.stack_description}"
    vpc_id = "${module.stack.vpc_id}"
    concourse_cidr = "${var.concourse_prod_cidr}"
    concourse_az = "${var.az1}"
    route_table_id = "${module.stack.private_route_table_az1}"
    rds_password = "${var.concourse_prod_rds_password}"
    rds_subnet_group = "${module.stack.rds_subnet_group}"
    rds_security_groups = "${module.stack.rds_postgres_security_group},${module.stack.rds_mysql_security_group}"
    account_id = "${var.account_id}"
    elb_cert_name = "${var.concourse_prod_elb_cert_name}"
    elb_subnets = "${module.stack.public_subnet_az1}"
    elb_security_groups = "${module.stack.web_traffic_security_group}"
}

module "concourse_staging" {
  source = "../../modules/concourse"
    stack_description = "${var.stack_description}"
    vpc_id = "${module.stack.vpc_id}"
    concourse_cidr = "${var.concourse_staging_cidr}"
    concourse_az = "${var.az2}"
    route_table_id = "${module.stack.private_route_table_az2}"
    rds_password = "${var.concourse_staging_rds_password}"
    rds_subnet_group = "${module.stack.rds_subnet_group}"
    rds_security_groups = "${module.stack.rds_postgres_security_group},${module.stack.rds_mysql_security_group}"
    account_id = "${var.account_id}"
    elb_cert_name = "${var.concourse_staging_elb_cert_name}"
    elb_subnets = "${module.stack.public_subnet_az2}"
    elb_security_groups = "${module.stack.web_traffic_security_group}"
}

module "tooling_bosh_user" {
    source = "../../modules/iam_user/bosh_user"
    username = "bosh-tooling"
}

module "master_bosh_user" {
    source = "../../modules/iam_user/bosh_user"
    username = "bosh-master"
}