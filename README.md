## MDAS - CI

#### Ejecutar build del contenedor:
- `./vendor/bin/sail/build`

#### Inicializar el contenedor: 
- `./vendor/bin/sail/up -d`

#### Ejecutar el contenedor con bash:
- `./vendor/bin/sail/bash`

#### Ejecutar tests unit/feature fuera del contenedor:
- `./vendor/bin/sail test`

#### Ejecutar tests unit/feature dentro del contenedor:
- `php artisan test`

#### Ejecutar analisis de php insights fuera del contenedor:
- `./vendor/bin/phpinsights analyse app/ --min-quality={minQuality} --no-interaction`

#### Ejecutar analisis de php insights dentro del contenedor:
- `php artisan insights --min-quality={minQuality} --no-interaction`

#### Ejecutar analisis de linting (pint):
- `./vendor/bin/pint --test`






