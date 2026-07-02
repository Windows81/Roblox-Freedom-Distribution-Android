package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import com.google.android.gms.internal.ads.agv;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.mj;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
final class au extends AsyncTask<Void, Void, String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ aq f3025a;

    private au(aq aqVar) {
        this.f3025a = aqVar;
    }

    /* synthetic */ au(aq aqVar, ar arVar) {
        this(aqVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String doInBackground(Void... voidArr) {
        try {
            this.f3025a.h = (agv) this.f3025a.f3020c.get(((Long) aoo.f().a(aro.cz)).longValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            mj.c("", e);
        }
        return this.f3025a.c();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(String str) {
        String str2 = str;
        if (this.f3025a.f == null || str2 == null) {
            return;
        }
        this.f3025a.f.loadUrl(str2);
    }
}
