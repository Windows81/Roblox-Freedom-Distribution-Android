package com.roblox.client.t;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.i;
import com.roblox.client.NotificationStreamActivity;
import com.roblox.client.n;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.u;
import com.roblox.client.x;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private androidx.fragment.app.c f7489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.roblox.client.ab.c f7490c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7491d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7492e;
    private MenuItem f;
    private TextView g;

    public d(Fragment fragment) {
        this(fragment, new com.roblox.client.ab.f());
    }

    public d(Fragment fragment, com.roblox.client.ab.c cVar) {
        this.f7488a = "NOTIFICATION_STREAM_TAG";
        this.f7491d = -1;
        androidx.fragment.app.c cVarR = fragment.r();
        this.f7489b = cVarR;
        this.f7490c = cVar;
        Resources resources = cVarR.getResources();
        this.f7492e = resources != null ? resources.getColor(o.c.dark_slate) : -12303292;
    }

    public MenuItem a(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(o.h.menu_button_notification_stream, menu);
        MenuItem menuItemFindItem = menu.findItem(o.f.action_notification_stream);
        this.f = menuItemFindItem;
        View actionView = menuItemFindItem.getActionView();
        ImageView imageView = (ImageView) actionView.findViewById(o.f.notification_button);
        TextView textView = (TextView) actionView.findViewById(o.f.notification_count);
        this.g = textView;
        a(textView, this.f7491d);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.t.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.this.a();
            }
        });
        imageView.setImageResource(c());
        this.g.setBackgroundResource(d());
        this.g.setTextColor(e());
        return this.f;
    }

    /* JADX INFO: renamed from: com.roblox.client.t.d$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f7494a;

        static {
            int[] iArr = new int[com.roblox.client.ab.e.values().length];
            f7494a = iArr;
            try {
                iArr[com.roblox.client.ab.e.LIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7494a[com.roblox.client.ab.e.DARK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private int c() {
        if (AnonymousClass2.f7494a[this.f7490c.c().ordinal()] == 1) {
            return o.e.topbar_ic_notification_light;
        }
        return o.e.topbar_ic_notification_dark;
    }

    private int d() {
        if (AnonymousClass2.f7494a[this.f7490c.c().ordinal()] == 1) {
            return o.e.stream_label_light;
        }
        return o.e.stream_label_dark;
    }

    private int e() {
        if (AnonymousClass2.f7494a[this.f7490c.c().ordinal()] != 1) {
            return this.f7492e;
        }
        return -1;
    }

    public void a() {
        a((i) null);
    }

    public void a(i iVar) {
        if (this.f7489b == null) {
            return;
        }
        if (com.roblox.client.b.be()) {
            p.a(com.roblox.client.ad.c.a().c());
        }
        com.roblox.client.ad.c.a().a(0);
        this.f7491d = 0;
        TextView textView = this.g;
        if (textView != null) {
            textView.setVisibility(8);
        }
        com.roblox.platform.i.a().c().b().a(new com.roblox.platform.http.a.a());
        if (u.j()) {
            Intent intent = new Intent(this.f7489b, (Class<?>) NotificationStreamActivity.class);
            if (iVar != null) {
                intent.putExtra("SEND_DATA_MODEL_FOCUS_EVENTS_EXTRA", true);
            }
            this.f7489b.startActivityForResult(intent, 10110);
            this.f7489b.overridePendingTransition(o.a.slide_up_short, R.anim.fade_out);
            return;
        }
        b(iVar);
    }

    private void a(int i) {
        this.f7491d = i;
        a((TextView) this.f.getActionView().findViewById(o.f.notification_count), this.f7491d);
    }

    private void a(TextView textView, int i) {
        if (i > 0) {
            textView.setVisibility(0);
            if (i > 99) {
                textView.setText(textView.getContext().getString(o.j.CommonUI_Messages_Response_99_Plus));
                return;
            } else {
                textView.setText(com.roblox.client.locale.e.a(i));
                return;
            }
        }
        textView.setVisibility(8);
    }

    private void b(i iVar) {
        Point pointA = x.a((Context) this.f7489b);
        int dimensionPixelSize = this.f7489b.getResources().getDimensionPixelSize(o.d.mainToolbarHeight);
        int dimensionPixelSize2 = this.f7489b.getResources().getDimensionPixelSize(o.d.mainTabWidgetHeight);
        int iA = (int) x.a((Context) this.f7489b, 80);
        int iA2 = (int) x.a((Context) this.f7489b, 420);
        int i = ((pointA.y - dimensionPixelSize2) - dimensionPixelSize) - iA;
        int iA3 = (int) x.a((Context) this.f7489b, 15);
        n nVar = new n();
        nVar.a(2, 0);
        Bundle bundle = new Bundle();
        nVar.getClass();
        bundle.putInt("dialogWidth", iA2);
        nVar.getClass();
        bundle.putInt("dialogHeight", i);
        nVar.getClass();
        bundle.putInt("dialogGravity", 53);
        nVar.getClass();
        bundle.putInt("dialogOffsetY", dimensionPixelSize);
        nVar.getClass();
        bundle.putInt("dialogOffsetX", iA3);
        bundle.putString("DEFAULT_URL", u.ak());
        nVar.g(bundle);
        if (iVar != null) {
            nVar.g().a(iVar);
        }
        nVar.a(this.f7489b.j(), "NOTIFICATION_STREAM_TAG");
    }

    public void b() {
        Fragment fragmentA = this.f7489b.j().a("NOTIFICATION_STREAM_TAG");
        if (fragmentA != null && fragmentA.A()) {
            com.roblox.client.ad.c.a().a(0);
        }
        a(com.roblox.client.ad.c.a().c());
    }
}
