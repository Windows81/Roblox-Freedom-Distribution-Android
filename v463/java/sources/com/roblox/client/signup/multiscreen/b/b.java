package com.roblox.client.signup.multiscreen.b;

import android.text.TextUtils;
import android.util.Patterns;
import androidx.lifecycle.LiveData;
import com.roblox.client.signup.multiscreen.a.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends androidx.lifecycle.p<com.roblox.client.signup.multiscreen.a.b> implements a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.roblox.client.signup.multiscreen.f f7198e;
    private String f;
    private boolean g;

    @Override // com.roblox.client.signup.multiscreen.b.a
    public LiveData<com.roblox.client.signup.multiscreen.a.b> a() {
        return this;
    }

    public b(com.roblox.client.signup.multiscreen.f fVar) {
        this.f7198e = fVar;
    }

    @Override // com.roblox.client.signup.multiscreen.b.a
    public boolean c() {
        return this.g;
    }

    @Override // com.roblox.client.signup.multiscreen.b.a
    public void a(final String str) {
        this.g = false;
        this.f7198e.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.b.1
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(str)) {
                    b.this.a(com.roblox.client.signup.multiscreen.a.b.a(str, b.a.EMPTY_EMAIL));
                    return;
                }
                if (Patterns.EMAIL_ADDRESS.matcher(str).matches()) {
                    b.this.g = true;
                    b.this.f = str;
                    b.this.a(com.roblox.client.signup.multiscreen.a.b.a(str));
                    return;
                }
                b.this.a(com.roblox.client.signup.multiscreen.a.b.a(str, b.a.INVALID_EMAIL_FORMAT));
            }
        });
    }

    @Override // com.roblox.client.signup.multiscreen.b.a
    public String b() {
        return this.f;
    }
}
