<Screen
  id="SearchScreen"
  events={[
    {
      ordered: [
        { event: "load" },
        { type: "datasource" },
        { method: "trigger" },
        { pluginId: "getItems" },
        { targetId: null },
        { params: { ordered: [] } },
        { waitType: "debounce" },
        { waitMs: "0" },
      ],
    },
  ]}
  gap={8}
  headerRightActions={[
    {
      ordered: [
        { type: "icon" },
        { value: "bold/interface-setting-cog" },
        {
          event: {
            ordered: [
              { event: "click" },
              { method: "navigateTo" },
              { pluginId: "" },
              { type: "navigator" },
              { waitMs: 0 },
              { waitType: "debounce" },
              { params: { ordered: [{ screenPluginId: "MyListings" }] } },
            ],
          },
        },
      ],
    },
  ]}
  padding={{
    ordered: [{ left: 12 }, { right: 12 }, { top: 0 }, { bottom: 0 }],
  }}
  title="Discover"
>
  <Container
    id="discover"
    align="flex-start"
    cornerType="square"
    justify="flex-start"
    layout="column"
    padding={{
      ordered: [{ left: 0 }, { right: 0 }, { top: 16 }, { bottom: 16 }],
    }}
    style={{ ordered: [{ background: "rgba(169, 189, 161, 0.5)" }] }}
    widthGrowFactor={1}
  >
    <Heading
      id="leafyfriends"
      size="h1"
      style={{ ordered: [{ text: "rgb(86, 123, 87)" }] }}
      textAlign="center"
      value="Discover Leafy Friends"
    />
    <Container
      id="search"
      align="flex-start"
      cornerType="square"
      gap={8}
      justify="flex-start"
      layout="column"
      padding={{
        ordered: [{ left: 0 }, { right: 0 }, { top: 16 }, { bottom: 16 }],
      }}
      style={{ ordered: [{ background: "rgba(0, 0, 0, 0)" }] }}
      widthGrowFactor={1}
    >
      <TextArea
        id="searchBar1"
        iconBefore="bold/interface-search"
        label={null}
        minLines={1}
        placeholder="Search..."
      />
      <Container
        id="Background"
        align="flex-start"
        cornerType="square"
        gap={8}
        justify="flex-start"
        layout="column"
        padding={{
          ordered: [{ left: 0 }, { right: 0 }, { top: 0 }, { bottom: 0 }],
        }}
        style={{ ordered: [{ background: "rgba(0, 0, 0, 0)" }] }}
        widthGrowFactor={1}
      >
        <CollectionView
          id="itemCollection"
          _paginatedData={{ array: [] }}
          bodyByIndex=""
          cardSize="half"
          cardStyle="elevated"
          cardType="media"
          data="{{ getItems.data }}"
          prefixDividerByIndex=""
          prefixIconByIndex="bold/interface-user-single"
          prefixImageFitByIndex="cover"
          prefixImageShapeByIndex="square"
          prefixImageSizeByIndex="2 to 1"
          prefixImageSourceByIndex="{{ item.image }}"
          prefixTypeByIndex="image"
          selectedItem="{}"
          showSeparator={true}
          subtitleByIndex=""
          subtitleLengthByIndex=""
          suffixDividerByIndex=""
          suffixIconByIndex=""
          suffixTextByIndex="${{ item.price }}"
          suffixTypeByIndex="button"
          suffixValueByIndex=""
          titleByIndex="{{ item.name }}"
        >
          <Event
            event="press"
            method="navigateTo"
            params={{ ordered: [{ screenPluginId: "detailScreen" }] }}
            pluginId=""
            type="navigator"
            waitMs="0"
            waitType="debounce"
          />
        </CollectionView>
      </Container>
    </Container>
  </Container>
</Screen>
