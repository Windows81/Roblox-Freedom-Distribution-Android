package com.roblox.client.o;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends com.roblox.client.datastructures.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f6615b;

    /* JADX INFO: renamed from: com.roblox.client.o.b$b, reason: collision with other inner class name */
    private static class C0162b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f6620a = new b();
    }

    public static b b() {
        return C0162b.f6620a;
    }

    public class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f6621a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f6622b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Socket f6623c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f6624d;

        public c() {
        }
    }

    private class a implements com.roblox.client.datastructures.c {
        @Override // com.roblox.client.datastructures.c
        public boolean a() {
            return true;
        }

        private a() {
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [com.roblox.client.o.b$a$1] */
        @Override // com.roblox.client.datastructures.c
        public void a(final com.roblox.client.datastructures.a aVar) {
            if (b.this.f6615b == null) {
                return;
            }
            Log.d("InfluxV2Queue", "fireAction: Close the existing socket...");
            new AsyncTask<Void, Void, Void>() { // from class: com.roblox.client.o.b.a.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Void doInBackground(Void... voidArr) {
                    Socket socket = b.this.f6615b.f6623c;
                    if (socket != null) {
                        try {
                            socket.close();
                        } catch (IOException e2) {
                            Log.w("InfluxV2Queue", "[Close-connection-item] Error closing socket: " + e2.getMessage());
                        }
                        b.this.f6615b.f6623c = null;
                    }
                    b.this.f6615b = null;
                    return null;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void onPostExecute(Void r1) {
                    com.roblox.client.datastructures.a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.a();
                    }
                }
            }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    public c c() {
        c cVar = this.f6615b;
        if (cVar != null && cVar.f6623c != null) {
            return this.f6615b;
        }
        String strT = com.roblox.client.b.t();
        int iU = com.roblox.client.b.u();
        int iV = com.roblox.client.b.v();
        c cVar2 = new c();
        this.f6615b = cVar2;
        cVar2.f6621a = strT;
        this.f6615b.f6622b = iU;
        this.f6615b.f6624d = iV;
        try {
            Log.d("InfluxV2Queue", "getSocketInfo: Create a socket to " + strT + ":" + iU + "...");
            this.f6615b.f6623c = new Socket(InetAddress.getByName(strT), iU);
            if (this.f6615b.f6624d > 0) {
                Handler handler = new Handler(Looper.getMainLooper());
                Log.d("InfluxV2Queue", "Schedule a special close-connection item with delay=" + this.f6615b.f6624d + "s...");
                handler.postDelayed(new Runnable() { // from class: com.roblox.client.o.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        b.b().a(new a());
                    }
                }, ((long) this.f6615b.f6624d) * 1000);
            }
            return this.f6615b;
        } catch (IOException e2) {
            Log.w("InfluxV2Queue", "Error creating the socket: " + e2.getMessage());
            return this.f6615b;
        }
    }
}
