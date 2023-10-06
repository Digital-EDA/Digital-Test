# Digital-Test

DIDE 项目开发使用的测试项目文件。

为了避免测试负载过大，使用默认的property.json:

```json
{
	"toolChain": "xilinx",
	"prjName": {
		"PL": "template"
	},
	"soc": {
		"core": "cortexM3"
	},
	"enableShowLog": false,
	"device": "none"
}
```

也就是说，只有`./user/Hardware/src`下的文件会被解析。如果需要测试具体的任务，请自行更换ppy的配置参数。