let Registry = ../../v1/Registry.dhall

in  Registry.Package::{
    , name = "prelude"
    , license = Registry.License.MIT
    , repository = Some
        ( Registry.Repo.GitHub
            { owner = "purescript"
            , repo = "purescript-prelude"
            , version = "v3.1.1"
            }
        )
    , targets = toMap
        { src = Registry.Target::{
          , sources = [ "src/**/*.purs" ]
          , dependencies = [] : Registry.Dependencies
          }
        }
    }