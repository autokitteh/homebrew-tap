class Autokitteh < Formula
  desc "Durable workflow automation made simple"
  homepage "https://autokitteh.com"
  url "https://github.com/autokitteh/autokitteh/archive/refs/tags/v0.8.8.tar.gz"
  sha256 "fc06d59073549a649c6fd1b8539d9af468b27dcce71db55a5bef41c4781c7f7d"
  license "Apache-2.0"
  head "https://github.com/autokitteh/autokitteh.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X go.autokitteh.dev/autokitteh/internal/version.Version=#{version}
      -X go.autokitteh.dev/autokitteh/internal/version.Time=#{time.iso8601}
      -X go.autokitteh.dev/autokitteh/internal/version.User=Homebrew
      -X go.autokitteh.dev/autokitteh/internal/version.Commit=
    ]
    system "go", "build", *std_go_args(ldflags:), "-o", bin/"ak", "./cmd/ak"
    generate_completions_from_executable(bin/"ak", "completion")
  end

  test do
    assert_match version, shell_output("#{bin}/ak version").strip
  end
end
