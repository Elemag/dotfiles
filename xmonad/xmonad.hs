import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
import Graphics.X11.ExtraTypes.XF86

import qualified Data.Map        as M

xF86XK_AudioMicMute :: KeySym
xF86XK_AudioMicMute = 0x1008FFB2

main = xmonad =<< xmobar myConfig

myConfig = defaultConfig {
        terminal    = "terminator",
        modMask     = mod4Mask,
        borderWidth = 1,

        -- key bindings
        keys = myKeys <+> keys defaultConfig
    }

myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $
        [ ((modm, xK_c ), spawn "chromium"),
          ((modm .|. shiftMask, xK_l ), spawn "slock"),
          ((0, xF86XK_MonBrightnessUp), spawn "xbacklight -inc 5"),
          ((0, xF86XK_MonBrightnessDown), spawn "xbacklight -dec 5"),
          ((0, xF86XK_AudioRaiseVolume), spawn "amixer -q set Master 2%+ unmute"),
          ((0, xF86XK_AudioLowerVolume), spawn "amixer -q set Master 2%- unmute"),
          ((0, xF86XK_AudioMute), spawn "amixer -q set Master toggle"),
          ((0, xF86XK_AudioMicMute), spawn "amixer -q set Mic toggle")
        ]
