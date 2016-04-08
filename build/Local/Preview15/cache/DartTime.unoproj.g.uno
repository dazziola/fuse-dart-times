sealed class DartTime_FuseReactiveEach_object_Items_Property: Uno.UX.Property<object>
{
    Fuse.Reactive.Each _obj;
    public DartTime_FuseReactiveEach_object_Items_Property(Fuse.Reactive.Each obj) { _obj = obj;  }
    protected override object OnGet() { return _obj.Items; }
    protected override void OnSet(object v, object origin) { _obj.Items = v; }
}
sealed class DartTime_FuseControlsShape_FuseDrawingBrush_Fill_Property: Uno.UX.Property<Fuse.Drawing.Brush>
{
    Fuse.Controls.Shape _obj;
    public DartTime_FuseControlsShape_FuseDrawingBrush_Fill_Property(Fuse.Controls.Shape obj) { _obj = obj;  }
    protected override Fuse.Drawing.Brush OnGet() { return _obj.Fill; }
    protected override void OnSet(Fuse.Drawing.Brush v, object origin) { _obj.Fill = v; }
}
sealed class DartTime_FuseTranslation_float_Y_Property: Uno.UX.Property<float>
{
    Fuse.Translation _obj;
    public DartTime_FuseTranslation_float_Y_Property(Fuse.Translation obj) { _obj = obj;  }
    protected override float OnGet() { return _obj.Y; }
    protected override void OnSet(float v, object origin) { _obj.Y = v; }
}
sealed class DartTime_FuseControlsTextControl_string_Value_Property: Uno.UX.Property<string>
{
    Fuse.Controls.TextControl _obj;
    public DartTime_FuseControlsTextControl_string_Value_Property(Fuse.Controls.TextControl obj) { _obj = obj; obj.ValueChanged += this.OnValueChanged; }
    protected override string OnGet() { return _obj.Value; }
    protected override void OnSet(string v, object origin) { _obj.SetValue(v, origin); }
    protected override void OnAddListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.ValueChanged += listener; }
    protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.ValueChanged -= listener; }
}
sealed class DartTime_FuseControlsTextControl_float4_TextColor_Property: Uno.UX.Property<float4>
{
    Fuse.Controls.TextControl _obj;
    public DartTime_FuseControlsTextControl_float4_TextColor_Property(Fuse.Controls.TextControl obj) { _obj = obj;  }
    protected override float4 OnGet() { return _obj.TextColor; }
    protected override void OnSet(float4 v, object origin) { _obj.TextColor = v; }
}
