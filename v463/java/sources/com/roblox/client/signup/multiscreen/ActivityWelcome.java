package com.roblox.client.signup.multiscreen;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import com.roblox.client.o;
import com.roblox.client.q;
import com.roblox.client.signup.multiscreen.c.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ActivityWelcome extends q implements f.b {
    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(o.g.activity_welcome_screen);
        Toolbar toolbar = (Toolbar) findViewById(o.f.welcome_screen_toolbar_include);
        if (toolbar != null) {
            a(toolbar);
            toolbar.setBackgroundColor(androidx.core.a.b.c(this, o.c.activityBackground));
        }
        androidx.appcompat.app.a aVarA = a();
        if (aVarA != null) {
            aVarA.c(false);
            aVarA.b(false);
            aVarA.a(false);
        }
        if (bundle == null) {
            j().a().b(o.f.welcome_screen_container, com.roblox.client.signup.multiscreen.c.f.a(com.roblox.client.ad.c.a().e(), com.roblox.client.ad.c.a().g(), com.roblox.client.ad.c.a().h())).d();
        }
    }

    private void q() {
        setResult(-1);
        finish();
        overridePendingTransition(0, o.a.slide_down_short);
    }

    public static Intent b(Context context) {
        return new Intent(context, (Class<?>) ActivityWelcome.class);
    }

    @Override // com.roblox.client.signup.multiscreen.c.f.b
    public void n() {
        q();
    }

    @Override // com.roblox.client.signup.multiscreen.c.f.b
    public void p() {
        q();
    }
}
