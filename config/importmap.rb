# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true

pin "html5sortable", to: "html5sortable.js", preload: true

pin "@rails/request.js", to: "@rails--request.js.js" # @0.0.8
pin "@stimulus-components/sortable", to: "@stimulus-components--sortable.js" # @5.0.1
pin "sortablejs" # @1.15.2

pin "jquery", to: "vendor/jquery-rails/jquery.js"
pin "jquery_ujs", to: "vendor/jquery-rails/jquery_ujs.js"
pin "cocoon", to: "vendor/cocoon/cocoon.js"

pin "gritter", to: "gritter.js"