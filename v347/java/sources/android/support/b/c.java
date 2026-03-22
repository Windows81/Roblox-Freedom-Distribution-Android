package android.support.b;

import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Intent f187a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bundle f188b;

    private c(Intent intent, Bundle bundle) {
        this.f187a = intent;
        this.f188b = bundle;
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Intent f189a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ArrayList<Bundle> f190b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Bundle f191c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ArrayList<Bundle> f192d;
        private boolean e;

        public a() {
            this(null);
        }

        public a(e eVar) {
            this.f189a = new Intent("android.intent.action.VIEW");
            this.f190b = null;
            this.f191c = null;
            this.f192d = null;
            this.e = true;
            if (eVar != null) {
                this.f189a.setPackage(eVar.b().getPackageName());
            }
            Bundle bundle = new Bundle();
            android.support.v4.app.f.a(bundle, "android.support.customtabs.extra.SESSION", eVar != null ? eVar.a() : null);
            this.f189a.putExtras(bundle);
        }

        public c a() {
            if (this.f190b != null) {
                this.f189a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", this.f190b);
            }
            if (this.f192d != null) {
                this.f189a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", this.f192d);
            }
            this.f189a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.e);
            return new c(this.f189a, this.f191c);
        }
    }
}
