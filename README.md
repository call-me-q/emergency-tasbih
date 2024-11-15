# zikr

> Electronic Dzikr App. (C) 2024 M Tsani Qudsi

---

This program is **free software**: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or (*at your option*) any later version.

This program is distributed in the hope that it will be useful, but **WITHOUT ANY WARRANTY**; without even the implied warranty of
**MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE**.  See the ***GNU Affero General Public License*** for more details.

You should have received a copy of the GNU Affero General Public License along with this program.  If not, see [http://www.gnu.org/licenses/](http://www.gnu.org/licenses/).

---

## Getting Started

This project is a starting point for a Flutter application.

1. **Clone Your Fork**

   - Go to your forked repository and find the green **Code** button.
   - Copy the URL and open your terminal.
   - Run this command:
     ```bash
     git clone https://github.com/YOUR-USERNAME/zikr.git
     ```

     _(Replace `YOUR-USERNAME` with your github username.)_
2. **Install Dependencies**

   - Navigate into the project folder:
     ```bash
     cd REPO-NAME
     ```
   - Install Flutter dependencies by running:
     ```bash
     flutter pub get
     ```
3. **Run the App**

   - Connect a device or start an emulator, then run:
     ```bash
     flutter run
     ```
   - It should've work!

---

### i18n

This project is using [`slang` for easier internasionalization](https://pub.dev/packages/slang).

Currently, the we supports:

- English (`en`)
- Indonesia (`id`)

---

## 🌟 Contributing to zikr

Thank you for your interest in contributing! This guide will walk you through the steps to get started, make changes, and submit them. If you get stuck, don’t worry — just ask questions in the discussions or issue comments.

> Make sure your environment for developing flutter is prepared.
> For help getting started with Flutter development, view the [online documentation](https://docs.flutter.dev/), which offers tutorials, samples, guidance on mobile development, and a full API reference.

### 1. Setting Up Locally (Getting Started)

1. **Fork this Repository**

   - Look for the **Fork** button on the top right corner of this page. **Click it!**
   - This will create a personal copy of the project in your GitHub account.
2. **Clone Your Fork**

   - Go to your forked repository and find the green **Code** button.
   - Copy the URL and open your terminal.
   - Run this command:
     ```bash
     git clone https://github.com/YOUR-USERNAME/zikr.git
     ```

     _(Replace `YOUR-USERNAME` with your github username.)_
3. **Install Dependencies**

   - Navigate into the project folder:
     ```bash
     cd REPO-NAME
     ```
   - Install Flutter dependencies by running:
     ```bash
     flutter pub get
     ```
4. **Run the App**

   - Connect a device or start an emulator, then run:
     ```bash
     flutter run
     ```
   - If it works, you’re ready to start contributing!

---

### 2. Working on an Issue

1. **Find an Issue**

   - Check out the **Issues** tab to see what needs work.
   - Choose one and comment, “I’d like to work on this,” so others know you’re on it.
2. **Create a Branch**

   - **Never work on the `main` branch directly!**
   - Create a new branch with a clear name, like this:
     ```bash
     git checkout -b fix/issue-123
     ```

     _(Replace `123` with the issue number.)_
3. **Make Your Changes**

   - Write code, save files, and check that everything looks good.
4. **Commit Your Changes**

   - Add and commit your changes with a helpful message:
     ```bash
     git add .
     git commit -m "Fixed issue #123: Describe what you did here"
     ```

---

### 3. Code Style and Formatting

- Follow the Dart style guide. If you’re not sure, just run:
  ```bash
  flutter format .
  ```
- Make sure no warnings or errors pop up!

---

### 4. i18n

1. Create new translation based on `assets/i18n/zikr.i18n.yaml`

   - Create new file in `assets/i18n/` folder with a name of `zikr_[new_translation_set].i18n.yaml` (eg: `zikr_fr.i18n.yaml`)
2. Update `info.plist`

   - Go to `ios/Runner/info.plist`.
   - Find the part that looks similar like this:

   ```
   <key>CFBundleLocalizations</key>
   <array>
     <string>en</string>
     <string>id</string>
   </array>
   ```

   - Insert your new translation language in the **array section**

   ```
   <key>CFBundleLocalizations</key>
   <array>
     <string>en</string>
     <string>id</string>
     <string>fr</string>
   </array>
   ```
3. run `dart run slang` to generate the necessary files.

   - It will generate new files under `lib/gen`

---

### 4. Testing

1. Run Existing Tests
   - Check if your code broke anything:

   ```bash
   flutter test
   ```
2. Add Tests for New Features
   - If you added a new feature, write a test for it. (Need help? Ask in discussions or check the testing guide!)

---

### 5. Submitting Your Work

1. Push Your Branch
   - Send your branch to GitHub:

   ```bash
       git push origin fix/issue-123
   ```
2. Create a Pull Request (PR)
   - Go to your fork on GitHub. You’ll see a Compare & pull request button. Click it.
   - Fill out the template, linking any relevant issues (e.g., “Fixes #123”).
   - Be clear about what your code does in the description.

---

### 6. Review Process

1. Wait for Feedback
   - We’ll review your code and may request changes. This is normal! Just make the changes and push to the same branch.
2. Merge
   - Once approved, your code will be merged, and you’ll have contributed to [Your App Name]! 🎉

## 🔥 Need Help?

Got questions? Open a [discussion](https://github.com/call-me-q/zikr/discussions) or comment on the [issue](https://github.com/call-me-q/zikr/issues).

## Assets

- Checkpoint Alarm, [Zen Tone Mid High by Alexander Jauk](https://pixabay.com/sound-effects/zen-tone-mid-high-202557/)
- Switch Sound, [Switch Light 04 by Pixabay](https://pixabay.com/sound-effects/switch-light-04-82204/)
