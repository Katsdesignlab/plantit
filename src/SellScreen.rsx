<Screen id="SellScreen" events={[]} refreshing="" title="Sell ">
  <Form
    id="formadditem"
    layout="column"
    requireValidation={true}
    scroll={true}
    showBody={true}
    showBorder={true}
    showFooter={true}
    showHeader={true}
  >
    <Heading id="heading2" size="h2" value="List Plant" />
    <Include src="./body2.rsx" />
    <Button
      id="addNew"
      loading=""
      size="large"
      submit={true}
      submitTargetId="formadditem"
      text="Add New"
    />
    <Event
      event="submit"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="addItem"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Form>
</Screen>
