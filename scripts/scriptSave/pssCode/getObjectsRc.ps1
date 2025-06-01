
# not part of the deploy scripts
# pull down metadata that is incomplete using standard methods




sf project retrieve start -m DecisionTable  --ignore-conflicts

sf project retrieve start -m DocumentGenerationSetting
sf project retrieve start -m DocumentTemplate



sf project retrieve start -m ExpressionSetDefinition  --ignore-conflicts
sf project retrieve start -m ExpressionSetDefinitionVersion  --ignore-conflicts
sf project retrieve start -m ExpressionSetMessageToken  --ignore-conflicts

sf project retrieve start -m LightningComponentBundle
sf project retrieve start -m OmniInteractionConfig
sf project retrieve start -m OmniInteractionAccessConfig

sf project retrieve start -m OmniDataTransform 
sf project retrieve start -m OmniIntegrationProcedure
sf project retrieve start -m OmniScript
sf project retrieve start -m OmniUiCard 


sf project retrieve start -m Settings 

#sf project retrieve start -m Layout
sf project retrieve start -m Flow
sf project retrieve start -m permissionSet
sf project retrieve start -m FlexiPage
sf project retrieve start -m CustomApplication

sf project retrieve start -m CompactLayouts
sf project retrieve start -m customPermission






