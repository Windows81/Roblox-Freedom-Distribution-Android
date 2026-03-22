package com.roblox.client.aa;

import android.os.AsyncTask;
import android.util.Log;
import com.roblox.client.o.b;
import java.io.IOException;
import java.io.PrintWriter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends AsyncTask<Void, Void, d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f5580a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f5581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f5582c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    a f5583d;

    public c(String str, int i, String str2, a aVar) {
        this.f5583d = null;
        this.f5583d = aVar;
        this.f5580a = str;
        this.f5582c = str2;
        this.f5581b = i;
        if (str2 == null) {
            this.f5582c = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public d doInBackground(Void... voidArr) {
        b.c cVarC = com.roblox.client.o.b.b().c();
        if (cVarC == null || cVarC.f6623c == null) {
            d dVar = new d(this.f5580a, this.f5581b);
            dVar.a(this.f5582c);
            dVar.a(false);
            return dVar;
        }
        d dVarA = a(cVarC, this.f5582c);
        if (cVarC.f6624d == 0) {
            try {
                Log.d("RbxTcpRequest", "doInBackground: timeToLive is 0. Close socket immediately...");
                cVarC.f6623c.close();
            } catch (IOException e2) {
                Log.w("RbxTcpRequest", "Error closing the socket: " + e2.getMessage());
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
            dVar = new d(this.f5580a, this.f5581b);
            dVar.a(false);
        }
        a aVar = this.f5583d;
        if (aVar != null) {
            aVar.a(dVar);
        }
    }

    public void a() {
        executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    private static d a(b.c cVar, String str) {
        d dVar = new d(cVar.f6621a, cVar.f6622b);
        dVar.a(str);
        try {
            PrintWriter printWriter = new PrintWriter(cVar.f6623c.getOutputStream(), true);
            if (!printWriter.checkError()) {
                printWriter.println(str);
                printWriter.flush();
                dVar.a("");
            } else {
                dVar.a(false);
            }
        } catch (Exception e2) {
            Log.w("RbxTcpRequest", "Error sending influx data over TCP = " + e2.getMessage());
            dVar.a(false);
        }
        return dVar;
    }
}
