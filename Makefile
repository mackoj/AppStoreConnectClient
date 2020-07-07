init:
	git config core.hooksPath .githooks
	git config commit.template .githooks/commit_template.txt
	./.githooks/init.sh
	$(MAKE) xcodegen

format:
	swift format --configuration .swift-format --in-place --recursive ./PagesJaunes
	swift format --configuration .swift-format --in-place --recursive ./UnitTests

lint:
	swift lint --configuration .swift-format --in-place --recursive ./PagesJaunes
	swift lint --configuration .swift-format --in-place --recursive ./UnitTests

gitignore-flush:
	git rm -r --cached .
	git add --all
	git commit -am "[conf] Gitignore flush" || true

update-scheme:
	cp PagesJaunes.xcodeproj/xcshareddata/xcschemes/PagesJaunes.xcscheme PagesJaunes.xcscheme

xcodegen:
	echo "Generating PagesJaunes.xcodeproj..."
	# rm PagesJaunes.xcodeproj || true
	killall Xcode || true
	rm -rf PagesJaunes.xcodeproj || true
	xcodegen generate --spec xcodegen.yml
	cp IDETemplateMacros.plist PagesJaunes.xcodeproj/xcshareddata/IDETemplateMacros.plist
	# Essayer avec un autre type de lien symbolique plus flexible
	# ln PagesJaunes.xcscheme PagesJaunes.xcodeproj/xcshareddata/xcschemes/PagesJaunes.xcscheme
	cp PagesJaunes.xcscheme PagesJaunes.xcodeproj/xcshareddata/xcschemes/PagesJaunes.xcscheme
	xed . &

swift-format-dump-configuration:
	swift-format -m dump-configuration > .swift-format.ori

git-flow-init:
	echo "Initializing git-flow"
	git flow init -d
	echo "Re-Configuring gitflow"
	git config gitflow.branch.master master
	git config gitflow.branch.develop develop
	git config gitflow.prefix.feature feature/
	git config gitflow.prefix.bugfix bugfix/
	git config gitflow.prefix.release release/
	git config gitflow.prefix.hotfix hotfix/
	git config gitflow.prefix.support support/
	git config gitflow.prefix.versiontag
	git config gitflow.path.hooks .githooks

doc:
	echo "✅ Cleaning"
	rm -rf Documentation/Generated/
	echo "✅ swift-doc"
	swift-doc generate -n PagesJaunes --output Documentation/Generated/ --format html
	echo "✅ swift-dcov"
	swift-doc coverage PagesJaunes --output Documentation/Generated/dcov.json
	# https://github.com/apple/swift-nio/blob/master/scripts/check_no_api_breakages.sh
	# echo "✅ swift-api-inventory"
	# swift-api-inventory PagesJaunes > Documentation/api.txt
	echo "✅ swift-api-diagram"
	swift-doc diagram PagesJaunes > Documentation/Generated/api.dot
	echo "✅ dot"
	dot -T pdf Documentation/api.dot > Documentation/Generated/api.pdf

update-xcodegen:
	brew upgrade xcodegen