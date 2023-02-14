## MDAS - CI

## Inicializar proyecto:

#### Generar variables de entorno:
- `cp .env.example .env`

#### Generar clave de aplicacion:
- `php artisan key:generate`

#### Instalar dependencias con composer:
- `composer install`

## Utilizar proyecto:
#### Ejecutar build del contenedor:
- `./vendor/bin/sail/build`

#### Inicializar el contenedor: 
- `./vendor/bin/sail/up -d`

#### Ejecutar tests unit:
- `php artisan test --testsuite Unit`

#### Ejecutar tests feature:
- `php artisan test --testsuite Feature`

#### Ejecutar analisis de php insights:
- `php artisan insights --min-quality={minQuality} --no-interaction`

#### Ejecutar analisis de linting (pint):
- `./vendor/bin/pint`






