public partial class MainView: Fuse.App
{
    public partial class Factory: Uno.UX.Factory
    {
        internal readonly MainView __parent;
        public Factory(MainView parent): base(null, false)
        {
            __parent = parent;
        }
        DartTime_FuseControlsTextControl_string_Value_Property temp_Value_inst;
        DartTime_FuseControlsTextControl_float4_TextColor_Property temp_TextColor_inst;
        DartTime_FuseControlsTextControl_string_Value_Property temp1_Value_inst;
        DartTime_FuseControlsShape_FuseDrawingBrush_Fill_Property self_Fill_inst;
        DartTime_FuseTranslation_float_Y_Property temp2_Y_inst;
        static Factory()
        {
        }
        public override object New()
        {
            var self = new Fuse.Controls.Rectangle();
            var temp = new Fuse.Controls.Text();
            temp_Value_inst = new DartTime_FuseControlsTextControl_string_Value_Property(temp);
            temp_TextColor_inst = new DartTime_FuseControlsTextControl_float4_TextColor_Property(temp);
            var temp1 = new Fuse.Controls.Text();
            temp1_Value_inst = new DartTime_FuseControlsTextControl_string_Value_Property(temp1);
            self_Fill_inst = new DartTime_FuseControlsShape_FuseDrawingBrush_Fill_Property(self);
            var temp2 = new Fuse.Translation();
            temp2_Y_inst = new DartTime_FuseTranslation_float_Y_Property(temp2);
            var temp3 = new Fuse.Controls.StackPanel();
            var temp4 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "title");
            var temp5 = new Fuse.Reactive.DataBinding<float4>(temp_TextColor_inst, "textColour");
            var temp6 = new Fuse.Reactive.DataBinding<string>(temp1_Value_inst, "info");
            var temp7 = new Fuse.Drawing.StaticSolidColor(float4(0.9529412f, 0.5647059f, 0.1176471f, 1f));
            var temp8 = new Fuse.Navigation.EnteringAnimation();
            var temp9 = new Fuse.Animations.Move();
            var temp10 = new Fuse.Effects.DropShadow();
            var temp11 = new Fuse.Effects.DropShadow();
            var temp12 = new Fuse.Reactive.DataBinding<Fuse.Drawing.Brush>(self_Fill_inst, "bgColour");
            var temp13 = new Fuse.Reactive.DataBinding<float>(temp2_Y_inst, "ypos");
            self.CornerRadius = float4(10f, 10f, 10f, 10f);
            self.ClipToBounds = true;
            temp2.RelativeTo = Fuse.TranslationModes.Size;
            temp3.Orientation = Fuse.Layouts.Orientation.Vertical;
            global::Fuse.Controls.DockPanel.SetDock(temp3, Fuse.Layouts.Dock.Fill);
            temp3.Children.Add(temp);
            temp3.Children.Add(temp1);
            temp.FontSize = 20f;
            temp.Margin = float4(10f, 20f, 10f, 20f);
            temp.Behaviors.Add(temp4);
            temp.Behaviors.Add(temp5);
            temp1.TextColor = float4(1f, 1f, 1f, 1f);
            temp1.Padding = float4(10f, 10f, 10f, 10f);
            temp1.Background = temp7;
            temp1.Behaviors.Add(temp6);
            temp8.Animators.Add(temp9);
            temp9.Y = 0.3334f;
            temp9.RelativeTo = Fuse.TranslationModes.Size;
            temp10.Size = 10f;
            temp10.Angle = 180f;
            temp10.Distance = 0f;
            temp10.Spread = 0.1f;
            self.Children.Add(temp3);
            self.Effects.Add(temp10);
            self.Effects.Add(temp11);
            self.Behaviors.Add(temp12);
            self.Behaviors.Add(temp13);
            self.Behaviors.Add(temp8);
            self.Transforms.Add(temp2);
            return self;
        }
    }
    DartTime_FuseReactiveEach_object_Items_Property temp_Items_inst;
    [global::Uno.UX.UXGlobalResource("Marknote")] public static readonly Fuse.Reactive.JavaScript Marknote;
    internal Fuse.Navigation.LinearNavigation lnav;
    global::Uno.UX.NameTable __g_nametable;
    static global::Uno.UX.NameTableEntry[] __g_static_nametable = new global::Uno.UX.NameTableEntry[] {
        new global::Uno.UX.NameTableEntry("lnav", "Fuse.Navigation.LinearNavigation")
    };
    static MainView()
    {
        Marknote = new Fuse.Reactive.JavaScript(Uno.UX.NameTable.Empty);
        Marknote.LineNumber = 5;
        Marknote.FileName = "MainView.ux";
        global::Uno.UX.Resource.SetGlobalKey(Marknote, "Marknote");
        Marknote.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../../marknote.js"));
    }
    public MainView()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new Fuse.Reactive.Each();
        temp_Items_inst = new DartTime_FuseReactiveEach_object_Items_Property(temp);
        var temp1 = new Fuse.Controls.DockPanel();
        var temp2 = new Fuse.Reactive.JavaScript(__g_nametable);
        var temp3 = new Fuse.Controls.StackPanel();
        var temp4 = new Fuse.Controls.StatusBarBackground();
        var temp5 = new Fuse.Controls.Text();
        var temp6 = new Fuse.Drawing.StaticSolidColor(float4(0.5450981f, 0.6352941f, 0f, 1f));
        var temp7 = new Fuse.Controls.BottomBarBackground();
        var temp8 = new Fuse.Controls.Panel();
        lnav = new Fuse.Navigation.LinearNavigation();
        var temp9 = new Fuse.Navigation.SwipeNavigate();
        var temp10 = new Factory(this);
        var temp11 = new Fuse.Reactive.DataBinding<object>(temp_Items_inst, "tabs");
        var temp12 = new Fuse.Drawing.StaticSolidColor(float4(0.5450981f, 0.6352941f, 0f, 1f));
        temp1.Children.Add(temp3);
        temp1.Children.Add(temp7);
        temp1.Children.Add(temp8);
        temp1.Behaviors.Add(temp2);
        temp2.LineNumber = 4;
        temp2.FileName = "MainView.ux";
        temp2.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../../MainView.js"));
        global::Fuse.Controls.DockPanel.SetDock(temp3, Fuse.Layouts.Dock.Top);
        temp3.Background = temp6;
        temp3.Children.Add(temp4);
        temp3.Children.Add(temp5);
        temp5.Value = "DART Times";
        temp5.FontSize = 18f;
        temp5.TextColor = float4(1f, 1f, 1f, 1f);
        temp5.Alignment = Fuse.Elements.Alignment.TopLeft;
        temp5.Margin = float4(10f, 20f, 10f, 20f);
        global::Fuse.Controls.DockPanel.SetDock(temp7, Fuse.Layouts.Dock.Bottom);
        temp8.Padding = float4(10f, 10f, 10f, 0f);
        global::Fuse.Controls.DockPanel.SetDock(temp8, Fuse.Layouts.Dock.Fill);
        temp8.Background = temp12;
        temp8.Behaviors.Add(temp11);
        temp8.Behaviors.Add(lnav);
        temp8.Behaviors.Add(temp9);
        temp8.Behaviors.Add(temp);
        lnav.Easing = Fuse.Animations.Easing.QuadraticOut;
        lnav.Duration = 0.3;
        temp9.SwipeEnds = Fuse.Navigation.SwipeEnds.Closed;
        temp9.SwipeDirection = Fuse.Navigation.SwipeDirection.Down;
        temp.Factories.Add(temp10);
        __g_nametable.Objects.Add(lnav);
        this.RootNode = temp1;
        this.Theme = Fuse.NativeTheme.Singleton;
    }
}
