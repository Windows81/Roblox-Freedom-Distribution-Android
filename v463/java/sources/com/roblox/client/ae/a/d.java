package com.roblox.client.ae.a;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.view.View;
import com.roblox.client.RobloxWebActivity;
import com.roblox.client.p;
import com.roblox.client.x;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected long f5633c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5634d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f5635e;

    public d(String str, Context context, String str2, int i, int i2) {
        this(str, context, str2, i, i2, false, null);
    }

    public d(String str, Context context, String str2, int i, int i2, boolean z, String str3) {
        super(str, context, str2, i, i2);
        this.f5633c = 0L;
        this.f5634d = z;
        this.f5635e = str3;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        if (a("clickableSpan") && d()) {
            if (this.f5634d) {
                x.b(this.f5629b, this.f5628a);
            } else {
                a(this.f5629b, this.f5628a, e());
            }
        }
    }

    private String e() {
        String str = this.f5635e;
        return str != null ? str : a();
    }

    protected boolean a(String str) {
        p.a(str, "span");
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.f5633c < 1000) {
            return false;
        }
        this.f5633c = jElapsedRealtime;
        return true;
    }

    protected boolean d() {
        return (this.f5629b == null || this.f5628a == null) ? false : true;
    }

    private void a(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) RobloxWebActivity.class);
        intent.putExtra("URL_EXTRA", str);
        intent.putExtra("TITLE_EXTRA", str2);
        context.startActivity(intent);
    }
}
