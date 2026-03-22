package androidx.core.app;

import android.app.RemoteInput;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1349a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CharSequence f1350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CharSequence[] f1351c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f1352d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Bundle f1353e;
    private final Set<String> f;

    m(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, Bundle bundle, Set<String> set) {
        this.f1349a = str;
        this.f1350b = charSequence;
        this.f1351c = charSequenceArr;
        this.f1352d = z;
        this.f1353e = bundle;
        this.f = set;
    }

    public String a() {
        return this.f1349a;
    }

    public CharSequence b() {
        return this.f1350b;
    }

    public CharSequence[] c() {
        return this.f1351c;
    }

    public Set<String> d() {
        return this.f;
    }

    public boolean e() {
        return (f() || (c() != null && c().length != 0) || d() == null || d().isEmpty()) ? false : true;
    }

    public boolean f() {
        return this.f1352d;
    }

    public Bundle g() {
        return this.f1353e;
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f1354a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CharSequence f1357d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private CharSequence[] f1358e;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Set<String> f1355b = new HashSet();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Bundle f1356c = new Bundle();
        private boolean f = true;

        public a(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Result key can't be null");
            }
            this.f1354a = str;
        }

        public a a(CharSequence charSequence) {
            this.f1357d = charSequence;
            return this;
        }

        public m a() {
            return new m(this.f1354a, this.f1357d, this.f1358e, this.f, this.f1356c, this.f1355b);
        }
    }

    public static Bundle a(Intent intent) {
        if (Build.VERSION.SDK_INT >= 20) {
            return RemoteInput.getResultsFromIntent(intent);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            Intent intentB = b(intent);
            if (intentB == null) {
                return null;
            }
            return (Bundle) intentB.getExtras().getParcelable("android.remoteinput.resultsData");
        }
        Log.w("RemoteInput", "RemoteInput is only supported from API Level 16");
        return null;
    }

    static RemoteInput[] a(m[] mVarArr) {
        if (mVarArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[mVarArr.length];
        for (int i = 0; i < mVarArr.length; i++) {
            remoteInputArr[i] = a(mVarArr[i]);
        }
        return remoteInputArr;
    }

    static RemoteInput a(m mVar) {
        return new RemoteInput.Builder(mVar.a()).setLabel(mVar.b()).setChoices(mVar.c()).setAllowFreeFormInput(mVar.f()).addExtras(mVar.g()).build();
    }

    private static Intent b(Intent intent) {
        ClipData clipData = intent.getClipData();
        if (clipData == null) {
            return null;
        }
        ClipDescription description = clipData.getDescription();
        if (description.hasMimeType("text/vnd.android.intent") && description.getLabel().equals("android.remoteinput.results")) {
            return clipData.getItemAt(0).getIntent();
        }
        return null;
    }
}
