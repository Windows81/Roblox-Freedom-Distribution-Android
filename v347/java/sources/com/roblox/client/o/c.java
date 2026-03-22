package com.roblox.client.o;

import android.os.AsyncTask;
import android.util.Log;
import com.roblox.client.g.b;
import java.io.IOException;
import java.io.PrintWriter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c extends AsyncTask<Void, Void, d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f7507a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f7508b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f7509c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    a f7510d;

    public c(String str, int i, String str2, a aVar) {
        this.f7510d = null;
        this.f7510d = aVar;
        this.f7507a = str;
        this.f7509c = str2;
        this.f7508b = i;
        if (this.f7509c == null) {
            this.f7509c = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public d doInBackground(Void... voidArr) {
        b.c cVarC = com.roblox.client.g.b.b().c();
        if (cVarC == null || cVarC.f6985c == null) {
            d dVar = new d(this.f7507a, this.f7508b);
            dVar.a(this.f7509c);
            dVar.a(false);
            return dVar;
        }
        d dVarA = a(cVarC, this.f7509c);
        if (cVarC.f6986d == 0) {
            try {
                Log.d("RbxTcpRequest", "doInBackground: timeToLive is 0. Close socket immediately...");
                cVarC.f6985c.close();
                return dVarA;
            } catch (IOException e) {
                Log.w("RbxTcpRequest", "Error closing the socket: " + e.getMessage());
                return dVarA;
            }
        }
        return dVarA;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(d dVar) {
        super.onPostExecute(dVar);
        if (dVar == null) {
            dVar = new d(this.f7507a, this.f7508b);
            dVar.a(false);
        }
        if (this.f7510d != null) {
            this.f7510d.a(dVar);
        }
    }

    public void a() {
        executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    private static d a(b.c cVar, String str) {
        d dVar = new d(cVar.f6983a, cVar.f6984b);
        dVar.a(str);
        try {
            PrintWriter printWriter = new PrintWriter(cVar.f6985c.getOutputStream(), true);
            if (!printWriter.checkError()) {
                printWriter.println(str);
                printWriter.flush();
                dVar.a("");
            } else {
                dVar.a(false);
            }
        } catch (Exception e) {
            Log.w("RbxTcpRequest", "Error sending influx data over TCP = " + e.getMessage());
            dVar.a(false);
        }
        return dVar;
    }
}
