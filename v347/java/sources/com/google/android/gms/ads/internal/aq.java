package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.agv;
import com.google.android.gms.internal.ads.agw;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aor;
import com.google.android.gms.internal.ads.aou;
import com.google.android.gms.internal.ads.apg;
import com.google.android.gms.internal.ads.apk;
import com.google.android.gms.internal.ads.apo;
import com.google.android.gms.internal.ads.apu;
import com.google.android.gms.internal.ads.aqc;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.asi;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.gh;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jk;
import com.google.android.gms.internal.ads.ly;
import com.google.android.gms.internal.ads.zzang;
import com.google.android.gms.internal.ads.zzjj;
import com.google.android.gms.internal.ads.zzjn;
import com.google.android.gms.internal.ads.zzlu;
import com.google.android.gms.internal.ads.zzmu;
import java.util.Map;
import java.util.concurrent.Future;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class aq extends apg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzang f3018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzjn f3019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Future<agv> f3020c = jk.a(new at(this));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f3021d;
    private final av e;
    private WebView f;
    private aou g;
    private agv h;
    private AsyncTask<Void, Void, String> i;

    public aq(Context context, zzjn zzjnVar, String str, zzang zzangVar) {
        this.f3021d = context;
        this.f3018a = zzangVar;
        this.f3019b = zzjnVar;
        this.f = new WebView(this.f3021d);
        this.e = new av(str);
        a(0);
        this.f.setVerticalScrollBarEnabled(false);
        this.f.getSettings().setJavaScriptEnabled(true);
        this.f.setWebViewClient(new ar(this));
        this.f.setOnTouchListener(new as(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String c(String str) {
        if (this.h == null) {
            return str;
        }
        Uri uriA = Uri.parse(str);
        try {
            uriA = this.h.a(uriA, this.f3021d, null, null);
        } catch (agw e) {
            jd.c("Unable to process ad data", e);
        }
        return uriA.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        this.f3021d.startActivity(intent);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final String C() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final apo D() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final aou E() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void H() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final String a() throws RemoteException {
        return null;
    }

    final void a(int i) {
        if (this.f == null) {
            return;
        }
        this.f.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(com.google.android.gms.internal.ads.af afVar, String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(aor aorVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(aou aouVar) throws RemoteException {
        this.g = aouVar;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(apk apkVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(apo apoVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(apu apuVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(asi asiVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(gh ghVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(com.google.android.gms.internal.ads.y yVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(zzjn zzjnVar) throws RemoteException {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(zzlu zzluVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(zzmu zzmuVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    final int b(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter("height");
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            aoo.a();
            return ly.a(this.f3021d, Integer.parseInt(queryParameter));
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void b(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final boolean b(zzjj zzjjVar) throws RemoteException {
        com.google.android.gms.common.internal.w.a(this.f, "This Search Ad has already been torn down");
        this.e.a(zzjjVar, this.f3018a);
        this.i = new au(this, null).execute(new Void[0]);
        return true;
    }

    final String c() {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath((String) aoo.f().a(aro.cx));
        builder.appendQueryParameter("query", this.e.b());
        builder.appendQueryParameter("pubId", this.e.c());
        Map<String, String> mapD = this.e.d();
        for (String str : mapD.keySet()) {
            builder.appendQueryParameter(str, mapD.get(str));
        }
        Uri uriBuild = builder.build();
        if (this.h != null) {
            try {
                uriBuild = this.h.a(uriBuild, this.f3021d);
            } catch (agw e) {
                jd.c("Unable to process ad data", e);
            }
        }
        String strD = d();
        String encodedQuery = uriBuild.getEncodedQuery();
        return new StringBuilder(String.valueOf(strD).length() + 1 + String.valueOf(encodedQuery).length()).append(strD).append("#").append(encodedQuery).toString();
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void c(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    final String d() {
        String strA = this.e.a();
        String str = TextUtils.isEmpty(strA) ? "www.google.com" : strA;
        String str2 = (String) aoo.f().a(aro.cx);
        return new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(str2).length()).append("https://").append(str).append(str2).toString();
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void i() throws RemoteException {
        com.google.android.gms.common.internal.w.b("destroy must be called on the main UI thread.");
        this.i.cancel(true);
        this.f3020c.cancel(true);
        this.f.destroy();
        this.f = null;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final com.google.android.gms.b.a j() throws RemoteException {
        com.google.android.gms.common.internal.w.b("getAdFrame must be called on the main UI thread.");
        return com.google.android.gms.b.b.a(this.f);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final zzjn k() throws RemoteException {
        return this.f3019b;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final boolean l() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void m() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void n() throws RemoteException {
        com.google.android.gms.common.internal.w.b("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void o() throws RemoteException {
        com.google.android.gms.common.internal.w.b("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final Bundle p() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final String p_() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void q() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final boolean r() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final aqc s() {
        return null;
    }
}
