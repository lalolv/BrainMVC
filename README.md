# Flex BrainMVC Framework

## How to use
This is a simple MVC framework

## Controller
Controller class base BrainCommand (com.lalolab.brainmvc.controller.BrainCommand).

```actionscript
import com.lalolab.brainmvc.controller.BrainCommand;

public class DemoCommand extends BrainCommand
{
	public function DemoCommand()
	{
		super();
	}
	
	public function Add(demoVo:DemoVo):void
	{
		// send a notice to view
		sendNotify(DemoNotice.ADD_NOTICE, result);
	}
}
```

## Notice
Notice can communicate between command and view.

```actionscript
public class DemoNotice
{
	public static const ADD_NOTICE:String = "ADD_NOTICE";
}
```

## View
Call command in view.

```actionscript
var demoCmd:DemoCommand = new DemoCommand();
demoCmd.Add(demoVo);
```
