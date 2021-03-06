public class sfab_ParentRelationshipNode implements sfab_FabricatedSObjectNode {
    private String fieldName;
    private sfab_FabricatedSObject parent;

    public sfab_ParentRelationshipNode(String fieldName, sfab_FabricatedSObject parent) {
        this.fieldName = fieldName;
        this.parent = parent;
    }
    
    public sfab_ParentRelationshipNode(Schema.SObjectField field, sfab_FabricatedSObject parent) {
        this(field.getDescribe().getRelationshipName(), parent);
    }

    public Map<String, Object> serialize() {
        return new Map<String, Object> { fieldName => parent.serialize() };
    }
}