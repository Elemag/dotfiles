import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import Graphics.X11.ExtraTypes.XF86
import XMonad.Layout.NoBorders

import qualified Data.Map as Map

xF86XK_AudioMicMute :: KeySym
xF86XK_AudioMicMute = 0x1008FFB2

main = xmonad =<< xmobar myConfig

myConfig = defaultConfig {
        terminal    = "terminator",
        modMask     = mod4Mask,
        borderWidth = 1,

        -- key bindings
        keys = myKeys <+> keys defaultConfig,

        -- layout
        layoutHook = avoidStruts $ smartBorders $ layoutHook defaultConfig,
        manageHook = manageHook defaultConfig <+> manageDocks
    }

myKeys conf@(XConfig {XMonad.modMask = modm}) = Map.fromList $
        [ ((modm, xK_c ), spawn "chromium"),
          ((mod1Mask .|. controlMask, xK_l ), spawn "slock"),
          ((0, xF86XK_MonBrightnessUp), spawn "xbacklight -inc 5"),
          ((0, xF86XK_MonBrightnessDown), spawn "xbacklight -dec 5"),
          ((0, xF86XK_AudioRaiseVolume), spawn "amixer -q set Master 2%+ unmute"),
          ((0, xF86XK_AudioLowerVolume), spawn "amixer -q set Master 2%- unmute"),
          ((0, xF86XK_AudioMute), spawn "amixer -q set Master toggle"),
          ((0, xF86XK_AudioMicMute), spawn "amixer -q set Mic toggle")
        ]
