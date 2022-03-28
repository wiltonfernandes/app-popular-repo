import UIKit
import SnapKit

final class RepositoryViewCell: UITableViewCell {
    private let containerView: CardView = {
        let cardView = CardView()
        cardView.backgroundColor = .white
        return cardView
    }()
    
    private let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 30
        imageView.layer.masksToBounds = true
        imageView.backgroundColor = .darkGray
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.regular)
        label.textColor = .tintColor
        label.backgroundColor = .white
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        label.backgroundColor = .white
        return label
    }()
    
    private let forkImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(systemName: "shuffle")
        imageView.tintColor = .orange
        
        return imageView
    }()
    
    private let numberOfForks: UILabel = {
        let label = UILabel()
        label.text = "123456"
        label.font = .systemFont(ofSize: 20)
        label.textColor = .orange
        return label
    }()
    
    
    private let starImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(systemName: "star.fill")
        imageView.tintColor = .orange
        return imageView
    }()
    
    
    private let numberOfStar: UILabel = {
        let label = UILabel()
        label.text = "1234"
        label.font = .systemFont(ofSize: 20)
        label.textColor = .orange
        return label
    }()
    
    private let userName: UILabel = {
        let label = UILabel()
        label.text = "UserName"
        label.textAlignment = .center
        label.numberOfLines = 3
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.regular)
        label.textColor = .tintColor
        return label
    }()
    
    private lazy var nameAuthor: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.textColor = .gray
        label.text = "Name Actor"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViewCode()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func update(title: String, description: String, overview: String) {
        titleLabel.text = title
        descriptionLabel.text = """
        descrição do repo,descrição do repo,
        descrição do repo, descrição do repo.
        """
        posterImageView.image = UIImage(named: "Avatar.png")
    }
}

extension RepositoryViewCell: ViewCode {
    func buildHierarchy() {
        containerView.addSubviews(
            posterImageView,
            titleLabel,
            descriptionLabel,
            forkImage,
            numberOfForks,
            starImage,
            numberOfStar,
            userName,
            nameAuthor
        )
        contentView.addSubviews(containerView)
    }
    
    func setupConstraints() {
        
    
        containerView.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(1)
            make.bottom.equalTo(contentView.snp.bottom).offset(-1)
            make.left.equalTo(contentView.snp.left).offset(1)
            make.right.equalTo(contentView.snp.right).offset(-1)
        }
        
        posterImageView.snp.makeConstraints { make in
            make.top.equalTo(containerView.snp.top).offset(25)
            make.right.equalTo(containerView.snp.right).offset(-15)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        titleLabel.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(posterImageView.snp.top)
            make.left.equalTo(containerView.snp.left).offset(15)
            make.height.lessThanOrEqualTo(42)
        }


        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            make.right.equalTo(titleLabel.snp.right)
            make.left.equalTo(titleLabel.snp.left)
            make.height.equalTo(50)
            
            
            forkImage.snp.makeConstraints { make in
                make.top.equalTo(descriptionLabel.snp.bottom).offset(10)
                make.left.equalTo(descriptionLabel.snp.left)
                make.size.equalTo(25)
            }
            
            numberOfForks.snp.makeConstraints { make in
                make.top.equalTo(forkImage.snp.top)
                make.left.equalTo(forkImage.snp.right).offset(5)
            }
            
            starImage.snp.makeConstraints { make in
                make.top.equalTo(numberOfForks.snp.top)
                make.left.equalTo(numberOfForks.snp.right).offset(30)
                make.size.equalTo(25)
            }
            
            numberOfStar.snp.makeConstraints { make in
                make.top.equalTo(starImage.snp.top)
                make.left.equalTo(starImage.snp.right).offset(8)
            }
            
            userName.snp.makeConstraints { make in
                make.top.equalTo(posterImageView.snp.bottom).offset(5)
                make.right.equalTo(containerView.snp.right).offset(-2)
                make.width.equalTo(100)
            }
            
            nameAuthor.snp.makeConstraints { make in
                make.top.equalTo(userName.snp.bottom).offset(5)
                make.centerX.equalTo(userName.snp.centerX)
            }
    }
    
    func configureViews() {
        backgroundColor = .black
        selectionStyle = .none
    }
  }

}
