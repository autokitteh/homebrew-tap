class Autokitteh < Formula
  desc "Durable workflow automation made simple"
  homepage "https://autokitteh.com"
  url "https://github.com/autokitteh/autokitteh/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "340ccdf2fc6c53ba712edc5c4bc9e8f98550cde3e56bb7c0e773fad400df4d29"
  license "Apache-2.0"
  head "https://github.com/autokitteh/autokitteh.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X go.autokitteh.dev/autokitteh/internal/version.Version=#{version}
      -X go.autokitteh.dev/autokitteh/internal/version.Time=#{time.iso8601}
      -X go.autokitteh.dev/autokitteh/internal/version.User=brew
      -X go.autokitteh.dev/autokitteh/internal/version.Commit=
    ]
    system "go", "build", *std_go_args(ldflags:), "-o", bin/"ak", "./cmd/ak"
    generate_completions_from_executable(bin/"ak", "completion")
  end

  test do
    assert_match version, shell_output("#{bin}/ak version").strip
  end
end
