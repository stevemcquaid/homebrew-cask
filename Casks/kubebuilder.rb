cask 'kubebuilder' do
  version '2.0.0-alpha.1'
  sha256 '8647fcac60166ae211b9e198596452003c5887dd5b0d8b79427aa4fe3357f125'

  url "https://github.com/kubernetes-sigs/kubebuilder/releases/download/v#{version}/kubebuilder_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/kubernetes-sigs/kubebuilder/releases.atom'
  name 'Kubebuilder'
  homepage 'https://github.com/kubernetes-sigs/kubebuilder'

  binary "kubebuilder_#{version}_darwin_amd64/bin/kubebuilder", target: 'kubebuilder'
  binary "kubebuilder_#{version}_darwin_amd64/bin/kubectl", target: 'kubectl'
  binary "kubebuilder_#{version}_darwin_amd64/bin/kube-apiserver", target: 'kube-apiserver'
  binary "kubebuilder_#{version}_darwin_amd64/bin/etcd", target: 'etcd'
end
