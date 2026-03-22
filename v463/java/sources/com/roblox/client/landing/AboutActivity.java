package com.roblox.client.landing;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.roblox.client.ae.k;
import com.roblox.client.j;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.q;
import com.roblox.client.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AboutActivity extends q {
    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        k.b("FragmentAbout", "onCreate()");
        setContentView(o.g.fragment_about_app);
        View viewFindViewById = findViewById(o.f.fragment_about_background);
        TextView textView = (TextView) findViewById(o.f.fragment_about_terms_privacy);
        TextView textView2 = (TextView) findViewById(o.f.fragment_about_user_agent);
        TextView textView3 = (TextView) findViewById(o.f.fragment_about_baseURL);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.landing.AboutActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.a("about", "close");
                AboutActivity.this.finish();
                AboutActivity.this.overridePendingTransition(o.a.stay, o.a.slide_down_short);
            }
        });
        com.roblox.client.ae.a.b.a(this, textView);
        textView2.setText(u.t());
        textView3.setText(u.d());
        textView2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.roblox.client.landing.-$$Lambda$AboutActivity$fznbMfPiYaRYKyCsX6L3OaVBJxk
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.a(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(View view) {
        j.a aVarI = j.a().i();
        String strName = aVarI.name();
        int i = AnonymousClass2.f6439a[aVarI.ordinal()];
        if (i == 1) {
            strName = "32-bit";
        } else if (i == 2) {
            strName = "64-bit";
        }
        Toast.makeText(this, strName + " -- Ver:904", 0).show();
        return false;
    }

    /* JADX INFO: renamed from: com.roblox.client.landing.AboutActivity$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6439a;

        static {
            int[] iArr = new int[j.a.values().length];
            f6439a = iArr;
            try {
                iArr[j.a.ARM32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6439a[j.a.ARM64.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    public void onStart() {
        super.onStart();
        p.b("about");
    }
}
