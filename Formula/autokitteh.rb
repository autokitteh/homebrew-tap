class Autokitteh < Formula
  desc "Durable workflow automation made simple"
  homepage "https://autokitteh.com"
  url "https://github.com/autokitteh/autokitteh/archive/refs/tags/v0.11.7.tar.gz"
  sha256 "f20f8057cec57c2fcb9a467fc6a6222470a87d84f1996c491ff8f26032bc31a1"
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
