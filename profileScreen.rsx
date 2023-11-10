<Screen
  id="profileScreen"
  gap={8}
  padding={{
    ordered: [{ left: 12 }, { right: 12 }, { top: 0 }, { bottom: 0 }],
  }}
  title="My Profile"
>
  <Container
    id="container9"
    align="flex-start"
    cornerType="square"
    elevation="raised"
    justify="center"
    layout="column"
    padding={{
      ordered: [{ left: 0 }, { right: 0 }, { top: 32 }, { bottom: 32 }],
    }}
    style={{ ordered: [{ background: "rgb(86, 123, 87)" }] }}
    widthGrowFactor={1}
  >
    <Image
      id="userImage"
      cornerType="square"
      mode="contain"
      ratio={2}
      src="{{ current_user.profilePhotoUrl ?? 'https://d1ck6wafzo5hkl.cloudfront.net/profile-icon.png'}}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addItem"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Image>
  </Container>
  <KeyValue
    id="userKeyValue"
    _rowKeysFormatted={{
      ordered: [
        { groups: "👥  Groups" },
        { email: "📩  Email" },
        { lastName: "Last Name" },
        { firstName: "First Name" },
      ],
    }}
    _rowValuesFormatted={{
      ordered: [
        {
          groups:
            "{{ \n  item\n    .map(({ name }) => _.startCase(name))\n    .join(', ')\n}}",
        },
      ],
    }}
    allowTextWrapping={true}
    data="{{ current_user }}"
    direction="vertical"
    header="{{ self.data.fullName }}"
    rows={[
      "a",
      "b",
      "c",
      "email",
      "groups",
      "lastName",
      "profilePhotoUrl",
      "sid",
      "metadata",
      "fullName",
      "firstName",
      "id",
      "name",
      "externalIdentifier",
      "locales",
    ]}
    rowVisibility={{
      ordered: [
        { a: true },
        { lastName: true },
        { b: true },
        { c: true },
        { profilePhotoUrl: false },
        { name: false },
        { sid: false },
        { metadata: false },
        { groups: false },
        { externalIdentifier: false },
        { locales: false },
        { fullName: false },
        { id: false },
        { firstName: true },
        { email: true },
      ],
    }}
    showSeparator={true}
    valueHorizontalAlignment="right"
    valueWidth="50%"
  />
</Screen>
