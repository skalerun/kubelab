# # google_client_config and kubernetes provider must be explicitly specified like the following.
# data "google_client_config" "default" {}

# provider "kubernetes" {
#   host                   = "https://${module.gke.endpoint}"
#   token                  = data.google_client_config.default.access_token
#   cluster_ca_certificate = base64decode(module.gke.ca_certificate)
# }

# # ----------------------------------------------------------------------------------------------------------------------
# resource "google_service_account" "service_account" {
#   project      = "sofrecom-kube"
#   display_name = "gke"
# }

# module "gke" {
#   source                     = "terraform-google-modules/kubernetes-engine/google"
#   project_id                 = "sofrecom-kube"
#   name                       = "gke-test-1"
#   region                     = "us-west1"
#   zones                      = ["us-west1-a", "us-west1-b", "us-west1-c"]
#   network                    = "kube-network"
#   subnetwork                 = "kube-subnet-us"
#   ip_range_pods              = "primary"
#   ip_range_services          = "secondary"
#   http_load_balancing        = false
#   network_policy             = false
#   horizontal_pod_autoscaling = true
#   filestore_csi_driver       = false

#   node_pools = [
#     {
#       name                      = "default-node-pool"
#       machine_type              = "e2-medium"
#       node_locations            = "us-west1-b,us-west1-c"
#       min_count                 = 1
#       max_count                 = 100
#       local_ssd_count           = 0
#       spot                      = false
#       disk_size_gb              = 100
#       disk_type                 = "pd-standard"
#       image_type                = "COS_CONTAINERD"
#       enable_gcfs               = false
#       enable_gvnic              = false
#       auto_repair               = true
#       auto_upgrade              = true
#       service_account           = "project-service-account@sofrecom-kube.iam.gserviceaccount.com"
#       preemptible               = false
#       initial_node_count        = 80
#     },
#   ]

# #   node_pools_oauth_scopes = {
# #     all = [
# #       "https://www.googleapis.com/auth/logging.write",
# #       "https://www.googleapis.com/auth/monitoring",
# #     ]
# #   }

# #   node_pools_labels = {
# #     all = {}

# #     default-node-pool = {
# #       default-node-pool = true
# #     }
# #   }

# #   node_pools_metadata = {
# #     all = {}

# #     default-node-pool = {
# #       node-pool-metadata-custom-value = "my-node-pool"
# #     }
# #   }

# #   node_pools_taints = {
# #     all = []

# #     default-node-pool = [
# #       {
# #         key    = "default-node-pool"
# #         value  = true
# #         effect = "PREFER_NO_SCHEDULE"
# #       },
# #     ]
# #   }

# #   node_pools_tags = {
# #     all = []

# #     default-node-pool = [
# #       "default-node-pool",
# #     ]
# #   }
# }