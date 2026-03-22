package com.roblox.client.components;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.roblox.client.ab.d;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RobloxToolbar extends Toolbar implements d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f5847a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f5848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f5849c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f5850d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f5851e;
    private g f;
    private h g;
    private f h;
    private com.roblox.client.ab.e i;
    private com.roblox.client.ab.c j;

    public interface d {
        int a(com.roblox.client.ab.e eVar);
    }

    public interface g {
        int a(com.roblox.client.ab.e eVar);

        int b(com.roblox.client.ab.e eVar);
    }

    /* JADX INFO: renamed from: com.roblox.client.components.RobloxToolbar$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f5852a;

        static {
            int[] iArr = new int[com.roblox.client.ab.e.values().length];
            f5852a = iArr;
            try {
                iArr[com.roblox.client.ab.e.DARK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5852a[com.roblox.client.ab.e.LIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class a implements d {
        @Override // com.roblox.client.components.RobloxToolbar.d
        public int a(com.roblox.client.ab.e eVar) {
            int i = AnonymousClass1.f5852a[eVar.ordinal()];
            if (i == 1) {
                return o.e.topbar_ic_back_dark;
            }
            if (i == 2) {
                return o.e.topbar_ic_back_light;
            }
            return o.e.topbar_ic_back;
        }
    }

    public static class b implements d {
        @Override // com.roblox.client.components.RobloxToolbar.d
        public int a(com.roblox.client.ab.e eVar) {
            int i = AnonymousClass1.f5852a[eVar.ordinal()];
            if (i == 1) {
                return o.e.topbar_ic_close_dark;
            }
            if (i == 2) {
                return o.e.topbar_ic_close_light;
            }
            return o.e.topbar_ic_close;
        }
    }

    public static class c implements g {
        @Override // com.roblox.client.components.RobloxToolbar.g
        public int a(com.roblox.client.ab.e eVar) {
            if (AnonymousClass1.f5852a[eVar.ordinal()] == 1) {
                return o.c.darkThemeToolbar;
            }
            return o.c.lightThemeToolbar;
        }

        @Override // com.roblox.client.components.RobloxToolbar.g
        public int b(com.roblox.client.ab.e eVar) {
            if (AnonymousClass1.f5852a[eVar.ordinal()] == 1) {
                return o.c.lightThemeToolbar;
            }
            return o.c.lightThemeToolbar;
        }
    }

    public static class e implements g {
        @Override // com.roblox.client.components.RobloxToolbar.g
        public int a(com.roblox.client.ab.e eVar) {
            if (AnonymousClass1.f5852a[eVar.ordinal()] == 1) {
                return o.c.darkThemeSecondToolbar;
            }
            return o.c.lightThemeSecondToolbar;
        }

        @Override // com.roblox.client.components.RobloxToolbar.g
        public int b(com.roblox.client.ab.e eVar) {
            if (AnonymousClass1.f5852a[eVar.ordinal()] == 1) {
                return o.c.lightThemeSecondToolbar;
            }
            return o.c.darkThemeSecondToolbar;
        }
    }

    public static class i implements g {
        @Override // com.roblox.client.components.RobloxToolbar.g
        public int a(com.roblox.client.ab.e eVar) {
            int i = AnonymousClass1.f5852a[eVar.ordinal()];
            if (i == 1) {
                return o.c.darkThemeToolbar;
            }
            if (i == 2) {
                return o.c.lightThemeToolbar;
            }
            return o.c.RbxBlue3;
        }

        @Override // com.roblox.client.components.RobloxToolbar.g
        public int b(com.roblox.client.ab.e eVar) {
            if (AnonymousClass1.f5852a[eVar.ordinal()] == 2) {
                return o.c.darkThemeToolbar;
            }
            return o.c.white;
        }
    }

    public static class h {
        public String a(com.roblox.client.ab.e eVar) {
            int i = AnonymousClass1.f5852a[eVar.ordinal()];
            return (i == 1 || i == 2) ? "GothamSSm-Medium.otf" : "SourceSansPro-Semibold.ttf";
        }
    }

    public static class f {
        public String a(com.roblox.client.ab.e eVar) {
            int i = AnonymousClass1.f5852a[eVar.ordinal()];
            return (i == 1 || i == 2) ? "GothamSSm-Medium.otf" : "SourceSansPro-Regular.ttf";
        }
    }

    public RobloxToolbar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5849c = null;
        this.f5850d = null;
        this.j = new com.roblox.client.ab.f();
        this.f5851e = new a();
        this.f = new i();
        this.g = new h();
        this.h = new f();
    }

    public void setIconDelegate(d dVar) {
        this.f5851e = dVar;
    }

    public void setThemeColorDelegate(g gVar) {
        this.f = gVar;
    }

    public void setThemeChooser(com.roblox.client.ab.c cVar) {
        this.j = cVar;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(int i2) {
        a();
        this.f5847a.setText(i2);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
        a();
        this.f5847a.setText(charSequence);
    }

    private void a() {
        if (this.f5847a == null) {
            TextView textView = (TextView) findViewById(o.f.toolbar_title);
            this.f5847a = textView;
            textView.setVisibility(0);
            Integer num = this.f5849c;
            if (num != null) {
                this.f5847a.setTextColor(num.intValue());
            }
            a(this.f5847a, getTitleFont());
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
        b();
        this.f5848b.setText(charSequence);
    }

    private void b() {
        if (this.f5848b == null) {
            TextView textView = (TextView) findViewById(o.f.toolbar_subtitle);
            this.f5848b = textView;
            textView.setVisibility(0);
            Integer num = this.f5850d;
            if (num != null) {
                this.f5848b.setTextColor(num.intValue());
            }
            a(this.f5848b, getSubTitleFont());
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitleTextColor(int i2) {
        this.f5849c = Integer.valueOf(i2);
        TextView textView = this.f5847a;
        if (textView != null) {
            textView.setTextColor(i2);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitleTextColor(int i2) {
        this.f5850d = Integer.valueOf(i2);
        TextView textView = this.f5848b;
        if (textView != null) {
            textView.setTextColor(i2);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        super.setNavigationOnClickListener(onClickListener);
        a(onClickListener != null);
    }

    private void a(boolean z) {
        if (z) {
            setNavigationIcon(b(this.i));
        } else {
            setNavigationIcon((Drawable) null);
        }
    }

    private int b(com.roblox.client.ab.e eVar) {
        if (eVar == null) {
            eVar = this.j.c();
        }
        return this.f5851e.a(eVar);
    }

    @Override // com.roblox.client.ab.d.a
    public void a(com.roblox.client.ab.e eVar) {
        if (eVar == this.i) {
            return;
        }
        this.i = eVar;
        int backgroundColor = getBackgroundColor();
        int foregroundColor = getForegroundColor();
        setBackgroundColor(backgroundColor);
        setTitleTextColor(foregroundColor);
        setSubtitleTextColor(foregroundColor);
        a(this.f5847a, getTitleFont());
        a(this.f5848b, getSubTitleFont());
        a(getNavigationIcon() != null);
    }

    public int getBackgroundColor() {
        return getResources().getColor(this.f.a(this.j.c()));
    }

    public int getForegroundColor() {
        return getResources().getColor(this.f.b(this.j.c()));
    }

    private String getTitleFont() {
        return this.g.a(this.j.c());
    }

    private String getSubTitleFont() {
        return this.h.a(this.j.c());
    }

    private void a(TextView textView, String str) {
        if (textView == null || com.roblox.client.components.h.a(textView, str)) {
            return;
        }
        com.roblox.client.components.h.a(textView, getContext(), str);
    }
}
