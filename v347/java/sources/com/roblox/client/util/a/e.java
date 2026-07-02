package com.roblox.client.util.a;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.roblox.client.RobloxWebActivity;
import com.roblox.client.p;

/* JADX INFO: loaded from: classes.dex */
public class e extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f7918c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7919d;

    public e(String str, Context context, String str2, int i, int i2) {
        this(str, context, str2, i, i2, false, null);
    }

    public e(String str, Context context, String str2, int i, int i2, boolean z, String str3) {
        super(str, context, str2, i, i2);
        this.f7918c = z;
        this.f7919d = str3;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        if (this.f7915b != null && this.f7914a != null) {
            if (this.f7918c) {
                p.b(this.f7915b, this.f7914a);
            } else {
                a(this.f7915b, this.f7914a, d());
            }
        }
    }

    private String d() {
        return this.f7919d != null ? this.f7919d : a();
    }

    private void a(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) RobloxWebActivity.class);
        intent.putExtra("URL_EXTRA", str);
        intent.putExtra("TITLE_EXTRA", str2);
        context.startActivity(intent);
    }
}
