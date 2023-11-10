<GlobalFunctions>
  <SqlQueryUnified
    id="getItems"
    playgroundQueryUuid={null}
    query={include("./lib/getItems.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="6af246fb-637d-49fc-b25b-0038260235f1"
    resourceTypeOverride=""
    tableName="images"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="updateItem"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"quantity","value":"{{ quantityInput.value }}"},{"key":"price","value":"{{ priceInput.value }}"}]'
    }
    changesetIsObject={true}
    changesetObject="{{editlisiting.data}}"
    doNotThrowOnNoOp={true}
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{editlisiting.data.id}}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    query={include("./lib/updateItem.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="6af246fb-637d-49fc-b25b-0038260235f1"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    tableName="plants"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="navigateTo"
      params={{ ordered: [{ screenPluginId: "MyListings" }] }}
      pluginId=""
      type="navigator"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getUserItems"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getItems"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "error" },
                { title: "Error" },
                { description: "Could not update this listing" },
                { duration: "3" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getItem"
    isMultiplayerEdited={false}
    playgroundQueryUuid={null}
    query={include("./lib/getItem.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="6af246fb-637d-49fc-b25b-0038260235f1"
    resourceTypeOverride=""
    tableName="images"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="addItem"
    actionType="INSERT"
    changeset={
      '[{"key":"name","value":"{{ Name.value}}"},{"key":"description","value":"{{Description.value}}"},{"key":"price","value":"{{price.value}}"},{"key":"image","value":"{{imagelink.value}}"},{"key":"email","value":"{{email.value}}"}]'
    }
    changesetObject="{{ formadditem.data }}"
    editorMode="gui"
    filterBy={
      '[{"key":"name","value":"{{formadditem.name }}","operation":"="},{"key":"description","value":"{{formadditem.description }}","operation":"="},{"key":"image","value":"{{formadditem.image}}","operation":"="},{"key":"price","value":"{{formadditem.price}}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    resourceDisplayName="retool_db"
    resourceName="6af246fb-637d-49fc-b25b-0038260235f1"
    runWhenModelUpdates={false}
    tableName="plants"
  >
    <Event
      event="success"
      method="navigateTo"
      params={{ ordered: [{ screenPluginId: "SearchScreen" }] }}
      pluginId=""
      type="navigator"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getItems"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="resetValue"
      params={{ ordered: [] }}
      pluginId="Name"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="resetValue"
      params={{ ordered: [] }}
      pluginId="Description"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="resetValue"
      params={{ ordered: [] }}
      pluginId="price"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="resetValue"
      params={{ ordered: [] }}
      pluginId="imagelink"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="open"
      params={{
        ordered: [
          { title: "Incomplete Form" },
          { description: "Fill out every section to submit" },
          {
            actionItems: [
              {
                ordered: [
                  { label: "OK" },
                  {
                    event: {
                      ordered: [
                        { event: "click" },
                        { method: "trigger" },
                        { pluginId: "" },
                        { type: "datasource" },
                        { waitMs: 0 },
                        { waitType: "debounce" },
                      ],
                    },
                  },
                ],
              },
              {
                ordered: [
                  { label: "Cancel" },
                  {
                    event: {
                      ordered: [
                        { event: "click" },
                        { method: "trigger" },
                        { pluginId: "" },
                        { type: "datasource" },
                        { waitMs: 0 },
                        { waitType: "debounce" },
                      ],
                    },
                  },
                ],
              },
            ],
          },
        ],
      }}
      pluginId=""
      type="alert"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getUserItems"
    query={include("./lib/getUserItems.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="6af246fb-637d-49fc-b25b-0038260235f1"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="deleteItem"
    actionType="DELETE_BY"
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{editlisiting.data.id}}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    query={include("./lib/deleteItem.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="6af246fb-637d-49fc-b25b-0038260235f1"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    tableName="plants"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="navigateTo"
      params={{ ordered: [{ screenPluginId: "MyListings" }] }}
      pluginId=""
      type="navigator"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getUserItems"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getItems"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "info" },
                { title: "Error" },
                {
                  description: "There are some issues in removing the listing",
                },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getSearch"
    enableTransformer={true}
    query={include("./lib/getSearch.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="6af246fb-637d-49fc-b25b-0038260235f1"
    runWhenModelUpdates={false}
    tableName="plants"
    warningCodes={[]}
  />
</GlobalFunctions>
