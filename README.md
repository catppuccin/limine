<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://limine-bootloader.org/">Limine</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/catppuccin/limine/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/limine?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/limine/issues"><img src="https://img.shields.io/github/issues/catppuccin/limine?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/limine/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/limine?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="assets/preview.webp"/>
</p>

## Previews

<details>
<summary>🌻 Latte</summary>
<img src="assets/latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="assets/frappe.webp"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="assets/macchiato.webp"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="assets/mocha.webp"/>
</details>

## Usage

1. Open the flavor and accent combination of your choice from [`themes/`](./themes/)
2. Paste the contents of that file to the start of your Limine configuration file, which is typically located at `/boot/limine.conf` or `/boot/efi/limine.conf`.

## 🙋 FAQ

- Q: **_"How can I hide the Limine title text like in the screenshot?"_**\
  A: Add `interface_branding:` to your configuration file to set it to an empty string and hide it.

- Q: **_"What other configuration options exist?"_**\
  A: See [Limine CONFIG.md](https://github.com/limine-bootloader/limine/blob/v12.x/CONFIG.md).

- Q: **_"How can I have separate colors for each text element?"_**\
  A: You can use [overrides](https://whiskers.catppuccin.com/concepts/overrides/#frontmatter-overrides) when generating the theme files: `whiskers limine.tera --overrides '{`JSON object`}'`.\
  You will need to [install Whiskers](https://whiskers.catppuccin.com/getting-started/installation/) to generate these.\
  Afterward, new themes will be generated in the `themes/` directory.\
  Valid keys are `interface_branding_color`, `interface_help_color`, `interface_help_color_bright`.\
  Valid values are the Catppuccin colors.\
  See [Limine interface control options](https://github.com/Limine-Bootloader/Limine/blob/v12.x/CONFIG.md#options) for info on these options.\
  For example, you can run `whiskers limine.tera --overrides '{"interface_help_color":"pink"}'` to override the color of the help text to pink.

## 💝 Thanks to

- [sophur](https://github.com/sophuric)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
