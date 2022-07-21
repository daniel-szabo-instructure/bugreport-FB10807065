# bugreport-FB10807065
FB10807065-bugreport-demo-app

## Description:
`userInterfaceLevel` property on UITraitCollection, returns always `.elevated` value instead of `.base` when using app in split-screen mode on iPad. 

## Steps to reproduce: 
- Run the demo application on iPad 
- The center label displays `base` 
- Open another application split-screen 
- The center label changes to `elevated` Expected behavior: 
- The center label should stay on `base` 

## Environment:
iPadOS version: 15.6 (19G71) 
Device: iPad Pro (12.9-inch) (5th generation) 
Xcode: 13.4.1 (13F100)
