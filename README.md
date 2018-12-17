# composer_init.sh
This Shell Script will automatically create a composer.json into the current folder.

## Usage
```
composer_init.sh [ TYPE ] [ USER ] [ PROJECT ] [ DESCRIPTION ] [ LICENSE ]
```

## Parameters
1 [TYPE]: This parameter defines which type of composer json the script will setup. You can use here "lib" and "project". If you use another input it will automatically use "project" as fallback.
```json
"type": "project"
```

2 [USER]: First parameter of name value.
```json
"name": "USER/..."
```

3 [PROJECT]: Secound parameter of name value.
```json
"name": ".../PROJECT"
```

4 [DESCRIPTION]: Description parameter.
```json
"description": "DESCRIPTION"
```

5 [LICENSE]: License parameter.
```json
"license": "LICENSE"
```

## Output [Project]
```json
{
	"name": "USER/PROJECT",
	"description": "DESCRIPTION",
	"keywords": [],
	"license": "LICENSE",
	"type": "project",
	"homepage": "",
	"authors": [
		{
			"name": "",
			"email": ""
		},
	],
	"require": {
		"php": "^7.1.3"
	},
	"autoload": {
		"classmap": [
			"Path/To/Mapped/Source"
		],
		"psr-4": {
			"Class\\\\\\": "Path/To/Mapped/Source"
		},
		"minimum-stability": "dev"
	},
	"config": {
		"sort-packages": true,
		"optimize-autoloader": true
	}
}
```

## Output [Library]
```json
{
	"name": "USER/PROJECT",
	"description": "DESCRIPTION",
	"keywords": [],
	"license": "LICENSE",
	"type": "library",
	"homepage": "",
	"authors": [
		{
			"name": "",
			"email": ""
		},
	],
	"require": {
		"php": "^7.1.3"
	},
	"autoload": {
		"psr-4": {
			"Class\\\\\\": "Path/To/Mapped/Source"
		},
		"minimum-stability": "dev"
	}
}
```
