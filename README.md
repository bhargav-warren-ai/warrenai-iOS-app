# Juno Finance App

A Flutter-based personal finance application with AI assistance.

## Features

- 📊 Net worth tracking and visualization
- 💳 Multiple account management (Chase, Robinhood, Wealthfront)
- 💰 Investment setup flow
- 🤖 AI assistant integration ("Ask Juno")
- 📱 Mobile-first responsive design

## Screenshots

[Add screenshots here once deployed]

## Getting Started

### Prerequisites

- Flutter SDK (3.0+)
- Dart SDK (3.0+)
- iOS Simulator or Android Emulator
- VS Code or Android Studio

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Development Setup

1. **Check Flutter installation**
   ```bash
   flutter doctor
   ```
   Fix any issues reported.

2. **Choose your target device**
   ```bash
   flutter devices
   ```

3. **Run on specific device**
   ```bash
   flutter run -d "device-id"
   ```

## Project Structure

```
lib/
  screens/
    home_screen.dart          # Main dashboard with net worth
    accounts_screen.dart      # Account management
    investment_screen.dart    # Investment options
    salary_screen.dart        # Salary confirmation
    investment_period_screen.dart # Investment period setup
  main.dart                   # App entry point
  figma_screen.dart          # Original Figma export (backup)
```

## Navigation Flow

```
Home ↔ Accounts (via tabs)
Home → Investment → Salary → Investment Period → Home
```

## Key Features

### Screens
- **Home Screen**: Net worth chart, recent transactions, overview
- **Accounts Screen**: Chase checking, Robinhood investing, Wealthfront savings
- **Investment Screen**: High-yield savings, account connection, Robinhood setup
- **Salary Screen**: Salary confirmation for investment setup
- **Investment Period Screen**: Investment timeline configuration

### Navigation
- Bottom navigation bar (Home, Transactions, Invest, Credit, Envelopes)
- Tab switching (Overview/Accounts)
- Multi-step investment flow
- Modal dialogs for confirmations

## Contributing

1. **Create a new branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes**

3. **Commit your changes**
   ```bash
   git add .
   git commit -m "Add: description of your changes"
   ```

4. **Push to your branch**
   ```bash
   git push origin feature/your-feature-name
   ```

5. **Create a Pull Request**

## Git Workflow

### Common Commands

```bash
# Pull latest changes
git pull origin main

# Check status
git status

# View changes
git diff

# Add all changes
git add .

# Commit changes
git commit -m "Your commit message"

# Push changes
git push origin branch-name

# Switch branches
git checkout branch-name

# Create new branch
git checkout -b new-branch-name
```

### Commit Message Format

- `Add: new feature or file`
- `Fix: bug fix`
- `Update: changes to existing feature`
- `Remove: deleted feature or file`
- `Refactor: code restructuring`

## Team Setup

### New Team Member Onboarding

1. **Install Flutter**
   - Follow [Flutter installation guide](https://docs.flutter.dev/get-started/install)
   - Run `flutter doctor` to verify setup

2. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
   ```

3. **Install dependencies**
   ```bash
   flutter pub get
   ```

4. **Verify everything works**
   ```bash
   flutter run
   ```

### Branch Protection (Recommended)

- Set up branch protection rules on `main` branch
- Require pull request reviews before merging
- Require status checks to pass

## Troubleshooting

### Common Issues

1. **Dependencies not found**
   ```bash
   flutter clean
   flutter pub get
   ```

2. **iOS build issues**
   ```bash
   cd ios
   pod install
   cd ..
   ```

3. **Android build issues**
   - Ensure Android SDK is properly installed
   - Check Android Studio AVD setup

## Future Enhancements

- [ ] Real form inputs with validation
- [ ] State management (Provider/Riverpod)
- [ ] API integration
- [ ] User authentication
- [ ] Data persistence
- [ ] Push notifications
- [ ] Dark mode support
- [ ] Animations and transitions

## License

[Add your license here]

## Contact

[Your contact information or team contact]