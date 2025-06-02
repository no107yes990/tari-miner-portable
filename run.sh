#!/bin/bash
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

echo "🚀 Menjalankan Tari Miner..."
mkdir -p ~/.tari/config

if [ ! -f ~/.tari/config/config.toml ]; then
  echo "⚙️ Membuat konfigurasi default..."
  cat > ~/.tari/config/config.toml <<EOL
[wallet]
public_address = "12PTtTLvcmyTmZcJdtNRxWnSgfJh9arhpH2UMhebMvmP7w1ZKtfHwDRvKXVrgDTYebHWyz2oVqRXywudhntehFaqeaG"
EOL
fi

"$SCRIPT_DIR/bin/tari_miner"
