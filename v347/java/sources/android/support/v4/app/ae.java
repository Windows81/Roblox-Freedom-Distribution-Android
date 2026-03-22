package android.support.v4.app;

import android.app.RemoteInput;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.af;
import android.util.Log;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ae extends af.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CharSequence f678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CharSequence[] f679c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f680d;
    private final Bundle e;
    private final Set<String> f;

    ae(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, Bundle bundle, Set<String> set) {
        this.f677a = str;
        this.f678b = charSequence;
        this.f679c = charSequenceArr;
        this.f680d = z;
        this.e = bundle;
        this.f = set;
    }

    public String a() {
        return this.f677a;
    }

    public CharSequence b() {
        return this.f678b;
    }

    public CharSequence[] c() {
        return this.f679c;
    }

    public Set<String> d() {
        return this.f;
    }

    public boolean e() {
        return (f() || (c() != null && c().length != 0) || d() == null || d().isEmpty()) ? false : true;
    }

    public boolean f() {
        return this.f680d;
    }

    public Bundle g() {
        return this.e;
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f681a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private CharSequence f682b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CharSequence[] f683c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f684d = true;
        private Bundle e = new Bundle();
        private final Set<String> f = new HashSet();

        public a(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Result key can't be null");
            }
            this.f681a = str;
        }

        public a a(CharSequence charSequence) {
            this.f682b = charSequence;
            return this;
        }

        public ae a() {
            return new ae(this.f681a, this.f682b, this.f683c, this.f684d, this.e, this.f);
        }
    }

    public static Bundle a(Intent intent) {
        if (Build.VERSION.SDK_INT >= 20) {
            return RemoteInput.getResultsFromIntent(intent);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            Intent intentB = b(intent);
            if (intentB != null) {
                return (Bundle) intentB.getExtras().getParcelable("android.remoteinput.resultsData");
            }
            return null;
        }
        Log.w("RemoteInput", "RemoteInput is only supported from API Level 16");
        return null;
    }

    static RemoteInput[] a(ae[] aeVarArr) {
        if (aeVarArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[aeVarArr.length];
        for (int i = 0; i < aeVarArr.length; i++) {
            remoteInputArr[i] = a(aeVarArr[i]);
        }
        return remoteInputArr;
    }

    static RemoteInput a(ae aeVar) {
        return new RemoteInput.Builder(aeVar.a()).setLabel(aeVar.b()).setChoices(aeVar.c()).setAllowFreeFormInput(aeVar.f()).addExtras(aeVar.g()).build();
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
