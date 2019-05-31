cask 'kubebuilder' do
  version '2.0.0-alpha.1'
  sha256 'c19887e34f5ff008d89ae3e86aeecd0560002c0dacd36f870b46741e9426b551'

  url "https://github.com/kubernetes-sigs/kubebuilder/releases/download/v#{version}/kubebuilder_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/kubernetes-sigs/kubebuilder/releases.atom'
  name 'Kubebuilder'
  homepage 'https://github.com/kubernetes-sigs/kubebuilder'

  binary "kubebuilder_#{version}_darwin_amd64/bin/kubebuilder", target: '/usr/local/bin/kubebuilder/bin/kubebuilder'
  binary "kubebuilder_#{version}_darwin_amd64/bin/kubectl", target: '/usr/local/bin/kubebuilder/bin/kubectl'
  binary "kubebuilder_#{version}_darwin_amd64/bin/kube-apiserver", target: '/usr/local/bin/kubebuilder/bin/kube-apiserver'
  binary "kubebuilder_#{version}_darwin_amd64/bin/etcd", target: '/usr/local/bin/kubebuilder/bin/etcd'

  caveats "kubebuilder testing expects a path of: /usr/local/kubebuilder. Might need to `export KUBEBUILDER_ASSETS=/usr/local/bin/kubebuilder/bin/`."

end
