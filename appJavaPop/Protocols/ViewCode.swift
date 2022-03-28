protocol ViewCode {
    func buildHierarchy()
    func setupConstraints()
    func configureViews()
}

extension ViewCode {
    func configureViews() {}

    func setupViewCode() {
        buildHierarchy()
        setupConstraints()
        configureViews()
    }
}
