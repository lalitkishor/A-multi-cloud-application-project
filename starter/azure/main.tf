data "azurerm_resource_group" "udacity" {
  name     = "Regroup_3tdGrwp0TouTd"
}

resource "azurerm_container_group" "udacity" {
  name                = "udacity-continst"
  location            = data.azurerm_resource_group.udacity.location
  resource_group_name = data.azurerm_resource_group.udacity.name
  ip_address_type     = "Public"
  dns_name_label      = "udacity-lalit-azure"
  os_type             = "Linux"

  container {
    name   = "azure-container-app"
    image  = "docker.io/tscotto5/azure_app:1.0"
    cpu    = "0.5"
    memory = "1.5"
    environment_variables = {
      "AWS_S3_BUCKET"       = "udacity-lalit-aws-s3-bucket",
      "AWS_DYNAMO_INSTANCE" = "udacity-lalit-aws-dynamodb"
    }
    ports {
      port     = 3000
      protocol = "TCP"
    }
  }
  tags = {
    environment = "udacity"
  }
}

####### Your Additions Will Start Here ######

resource "azurerm_storage_account" "udacity" {
  name                     = "udacitylalit"
  resource_group_name      = data.azurerm_resource_group.udacity.name
  location                 = data.azurerm_resource_group.udacity.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_sql_server" "udacity" {
  name                         = "udacity-lalit-azure-sql"
  resource_group_name          = data.azurerm_resource_group.udacity.name
  location                     = data.azurerm_resource_group.udacity.location
  version                      = "12.0"
  administrator_login          = "mradministrator12345"
  administrator_login_password = "thisIsDog1112345"

  tags = {
    environment = "Dev"
  }
}

resource "azurerm_resource_group" "udacity" {
  name     = "udacity-lalit-resources"
  location = "West Europe"
}

resource "azurerm_service_plan" "udacity" {
  name                = "udacity-lalit_service-plan"
  resource_group_name = data.azurerm_resource_group.udacity.name
  location            = data.azurerm_resource_group.udacity.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_linux_web_app" "udacity" {
  name                = "udacity-lalit-azure-dotnet-app"
  resource_group_name = data.azurerm_resource_group.udacity.name
  location            = azurerm_service_plan.udacity.location
  service_plan_id     = azurerm_service_plan.udacity.id

  site_config {}
}