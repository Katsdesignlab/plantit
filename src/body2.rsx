<Container
  id="body2"
  align="center"
  cornerType="square"
  justify="flex-start"
  layout="column"
  padding={{ ordered: [{ left: 0 }, { right: 0 }, { top: 0 }, { bottom: 0 }] }}
  widthGrowFactor={1}
>
  <TextArea
    id="Name"
    formDataKey="name"
    label="Name"
    minLines={4}
    placeholder="Name of plant...
"
    required={true}
  />
  <TextArea
    id="Description"
    formDataKey="description"
    label="Description"
    minLines={4}
    placeholder="About plant..."
    required={true}
  />
  <NumberInput
    id="price"
    formDataKey="price"
    hidden=""
    label="Price in NZD"
    placeholder=""
    required={true}
    stepSize={1}
    value=""
  />
  <TextArea
    id="imagelink"
    formDataKey="image"
    label="Image Link"
    minLines={4}
    placeholder="Type Image Link..."
    required={true}
  />
  <TextArea
    id="email"
    disabled=""
    formDataKey="email"
    hidden="true"
    label="email"
    minLines={1}
    placeholder="Email"
    value="kajapet888@gmail.com"
  />
</Container>
