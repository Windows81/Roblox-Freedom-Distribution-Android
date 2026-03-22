package com.roblox.client.components;

import android.R;
import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import com.roblox.client.ReclickableTabHost;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e implements TabHost.OnTabChangeListener, j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Activity f6743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ReclickableTabHost f6744c;
    private TabHost.OnTabChangeListener e;
    private j f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6742a = "NavigationBar";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<a> f6745d = new ArrayList<>();
    private a g = null;
    private boolean h = false;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f6751a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f6752b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f6753c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f6754d;
        public int e;

        public b(int i, int i2, int i3, int i4, int i5) {
            this.f6751a = i;
            this.f6752b = i2;
            this.f6753c = i3;
            this.f6754d = i4;
            this.e = i5;
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private b f6747a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private View f6748b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ImageView f6749c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f6750d;
        private TextView e;
        private String f;
        private int g;
        private int h;

        public a(String str, b bVar) {
            this.f = str;
            this.f6747a = bVar;
        }

        public void a(View view) {
            this.f6748b = view;
            this.f6749c = (ImageView) view.findViewById(R.id.icon);
            this.f6750d = (TextView) view.findViewById(R.id.title);
            this.e = (TextView) view.findViewById(2131231168);
        }

        public String a() {
            return this.f;
        }

        public View b() {
            return this.f6748b;
        }

        public ImageView c() {
            return this.f6749c;
        }

        public TextView d() {
            return this.f6750d;
        }

        public TextView e() {
            return this.e;
        }

        public void a(int i) {
            this.h = i;
        }

        public int f() {
            return this.h;
        }

        public int g() {
            return this.f6747a.f6752b;
        }

        public void a(int i, int i2) {
            this.f6747a.f6752b = i;
            this.f6747a.f6753c = i2;
        }

        public int h() {
            return this.g;
        }

        public void b(int i) {
            this.g = i;
        }

        public int i() {
            return this.f6747a.f6753c;
        }
    }

    public e(Activity activity, int i) {
        this.f6744c = null;
        this.f6743b = activity;
        this.f6744c = (ReclickableTabHost) activity.findViewById(i);
        this.f6744c.setup();
        this.f6744c.setOnTabChangedListener(this);
        this.f6744c.setOnTabReselectedListener(this);
    }

    public void a() {
        this.h = false;
    }

    public void b() {
        this.h = true;
    }

    public void a(j jVar) {
        this.f = jVar;
    }

    public void a(TabHost.OnTabChangeListener onTabChangeListener) {
        this.e = onTabChangeListener;
    }

    @Override // com.roblox.client.components.j
    public void a(String str) {
        this.g = b(str);
        if (this.h && this.f != null) {
            this.f.a(str);
        }
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    public void onTabChanged(String str) {
        if (this.g != null) {
            this.g.c().setImageResource(this.g.g());
            this.g.d().setTextColor(this.g.h());
        }
        a aVarB = b(str);
        if (aVarB != null) {
            aVarB.c().setImageResource(aVarB.i());
            aVarB.d().setTextColor(aVarB.f());
        }
        this.g = aVarB;
        if (this.h && this.e != null) {
            this.e.onTabChanged(str);
        }
    }

    public void a(a aVar) {
        this.f6745d.add(aVar);
        this.f6744c.addTab(this.f6744c.newTabSpec(aVar.a()).setIndicator(aVar.b()).setContent(new TabHost.TabContentFactory() { // from class: com.roblox.client.components.e.1
            @Override // android.widget.TabHost.TabContentFactory
            public View createTabContent(String str) {
                return new View(e.this.f6743b);
            }
        }));
    }

    public a a(int i, String str, int i2, int i3, int i4, int i5, int i6) {
        b bVar = new b(i2, i3, i4, i5, i6);
        View viewA = a(i2, i3, i5);
        viewA.setId(i);
        a aVar = new a(str, bVar);
        aVar.a(viewA);
        aVar.b(this.f6743b.getResources().getColor(i5));
        aVar.a(i3, i4);
        aVar.a(this.f6743b.getResources().getColor(i6));
        return aVar;
    }

    public a b(String str) {
        int iD = d(str);
        if (iD != -1) {
            return this.f6745d.get(iD);
        }
        return null;
    }

    private int d(String str) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f6745d.size()) {
                if (!str.equals(this.f6745d.get(i2).a())) {
                    i = i2 + 1;
                } else {
                    return i2;
                }
            } else {
                return -1;
            }
        }
    }

    public a c() {
        return this.g;
    }

    public String d() {
        if (this.g != null) {
            return this.g.a();
        }
        return null;
    }

    public int c(String str) {
        int iD = d(str);
        if (iD != -1) {
            this.f6744c.setCurrentTab(iD);
        }
        return iD;
    }

    private View a(int i, int i2, int i3) {
        View viewInflate = this.f6743b.getLayoutInflater().inflate(2131361948, (ViewGroup) null, false);
        ((ImageView) viewInflate.findViewById(R.id.icon)).setImageResource(i2);
        TextView textView = (TextView) viewInflate.findViewById(R.id.title);
        textView.setTextColor(android.support.v4.a.c.c(this.f6743b, i3));
        textView.setText(i);
        if (this.f6743b.getResources().getDisplayMetrics().density < 2.0d) {
            textView.setTextSize(2, 8.0f);
        }
        return viewInflate;
    }

    public TabWidget e() {
        return this.f6744c.getTabWidget();
    }

    public void f() {
        a();
        this.f6744c.clearAllTabs();
        this.f6745d.clear();
        b();
    }
}
