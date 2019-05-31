cask 'kubebuilder' do
  version '2.0.0-alpha.1'
  sha256 'c19887e34f5ff008d89ae3e86aeecd0560002c0dacd36f870b46741e9426b551'

  url "https://github.com/kubernetes-sigs/kubebuilder/releases/download/v#{version}/kubebuilder_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/kubernetes-sigs/kubebuilder/releases.atom'
  name 'Kubebuilder'
  homepage 'https://github.com/kubernetes-sigs/kubebuilder'

  binary "kubebuilder_#{version}_darwin_amd64/bin/kubebuilder", target: 'kubebuilder'
  binary "kubebuilder_#{version}_darwin_amd64/bin/kubectl", target: 'kubectl'
  binary "kubebuilder_#{version}_darwin_amd64/bin/kube-apiserver", target: 'kube-apiserver'
  binary "kubebuilder_#{version}_darwin_amd64/bin/etcd", target: 'etcd'
end
