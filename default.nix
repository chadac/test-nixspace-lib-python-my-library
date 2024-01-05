{
  python3,
}:
python3.pkgs.buildPythonPackage {
  pname = "my-library";
  version = "0.0.1";
  pyproject = true;

  nativeBuildInputs = with python3.pkgs; [
    setuptools
    setuptools-scm
  ];

  propagatedBuildInputs = with python3.pkgs; [
    requests
  ];

  src = ./.;
}
