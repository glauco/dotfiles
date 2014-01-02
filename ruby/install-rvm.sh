# Installs RVM, if necessary
if hash rvm 2> /dev/null; then
    echo >&2 "RVM is already installed";
else
    curl -sSL https://get.rvm.io | bash -s stable
fi
