![AutoTDD_Banner](https://user-images.githubusercontent.com/58258541/126001012-dac234d9-e242-4ac0-86d1-0b227f237321.png)

---

<p align="center">
  <a href="https://github.com/hpi-swa-teaching/AutoTDD/actions">
    <img src="https://github.com/hpi-swa-teaching/AutoTDD/workflows/CI/badge.svg?branch=dev" />
  </a>
  <a href="https://coveralls.io/github/hpi-swa-teaching/AutoTDD?branch=dev">
    <img src="https://coveralls.io/repos/github/hpi-swa-teaching/AutoTDD/badge.svg?branch=dev" />
  </a>
</p>

## 💡 About

The Test Auto Runner (AutoTDD) is an automated testing tool for continuously monitoring the status of your project's tests. AutoTDD enables you to automatically execute tests upon altering your projects's methods. When a test fails, you will get instant feedback on what went wrong.

![A screenshot of AutoTDD](https://i.imgur.com/EuCCRDX.png)

## 💾 Installation
  
1. Make sure you have [<img src="https://squeak.de/static/img/favicon.png" width="16" height="16"> Metacello-Work](https://github.com/Metacello/metacello) installed.
2. Load the project with:

```smalltalk
Metacello new
  baseline: 'AutoTDD';
  repository: 'github://hpi-swa-teaching/AutoTDD:master/packages';
  onConflict: [:ex | ex allow];
  load
```

You should now be able to open AutoTDD by clicking on <kbd>Test Auto Runner</kbd> via the <kbd>Apps</kbd> menu.

### Upgrading from v2 / v3

If you are upgrading from AutoTDD **v2** or **v3** please make sure to stop **all** currently running tests and close all AutoTDD-related windows.

## ☝️ FAQ

### What permissions are needed for GitHub Actions Tokens?

> GitHub Actions tokens require **repo** and **workflow** permissions. See the image below for a reference.

![Test](https://user-images.githubusercontent.com/38653851/126034965-364d8e97-7de5-47a1-a42c-4ee5a62f73f1.png)

### What kind of tests is AutoTDD suited for?

> AutoTDD runs respective tests as soon as any relevant files undergo changes. As such, your tests will run quite frequently. Due to this, it is not advised to use AutoTDD for obtrusive or long-winded tests. This especially includes GUI tests where windows are opened / closed frequently.

### How can I customize the test-runner?

> AutoTDD supports customization for sounds as well as themes. To change feedback sounds AutoTDD, swap out the respective sound files in the `Resources/AutoTDD/sounds` directory and reload the sound player with:

```smalltalk
ATDDSoundPlayer new generateSoundMethods
```

> AutoTDD also supports various color schemes depending on the currently selected theme in your image. To change the look and feel of the gui, select a new theme from `Extras 🠖 Themes & Colors`


## Documentation

> A more technical documentation can either be found in the class comments or here: [AutoTDD Wiki](https://github.com/hpi-swa-teaching/AutoTDD/wiki).
