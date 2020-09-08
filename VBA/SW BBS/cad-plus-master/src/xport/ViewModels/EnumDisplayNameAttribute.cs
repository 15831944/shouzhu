﻿//*********************************************************************
//CAD+ Toolset
//Copyright(C) 2020 Xarial Pty Limited
//Product URL: https://cadplus.xarial.com
//License: https://cadplus.xarial.com/license/
//*********************************************************************

using System;
using System.ComponentModel;

namespace Xarial.CadPlus.Xport.ViewModels
{
    [AttributeUsage(AttributeTargets.Field)]
    public class EnumDisplayNameAttribute : DescriptionAttribute
    {
        public EnumDisplayNameAttribute(string dispName) : base(dispName)
        {
        }
    }
}