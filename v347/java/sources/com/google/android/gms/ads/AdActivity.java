package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.mj;
import com.google.android.gms.internal.ads.r;

/* JADX INFO: loaded from: classes.dex */
public class AdActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private r f2931a;

    private final void a() {
        if (this.f2931a != null) {
            try {
                this.f2931a.l();
            } catch (RemoteException e) {
                mj.d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        try {
            this.f2931a.a(i, i2, intent);
        } catch (Exception e) {
            mj.d("#007 Could not call remote method.", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        boolean zE = true;
        try {
            if (this.f2931a != null) {
                zE = this.f2931a.e();
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
        if (zE) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            this.f2931a.a(com.google.android.gms.b.b.a(configuration));
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f2931a = aoo.b().a(this);
        if (this.f2931a == null) {
            mj.d("#007 Could not call remote method.", null);
            finish();
            return;
        }
        try {
            this.f2931a.a(bundle);
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            if (this.f2931a != null) {
                this.f2931a.k();
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        try {
            if (this.f2931a != null) {
                this.f2931a.i();
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        try {
            if (this.f2931a != null) {
                this.f2931a.f();
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            if (this.f2931a != null) {
                this.f2931a.h();
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        try {
            if (this.f2931a != null) {
                this.f2931a.b(bundle);
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        try {
            if (this.f2931a != null) {
                this.f2931a.g();
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        try {
            if (this.f2931a != null) {
                this.f2931a.j();
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        super.setContentView(i);
        a();
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        a();
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        a();
    }
}
