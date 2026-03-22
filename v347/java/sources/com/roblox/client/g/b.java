package com.roblox.client.g;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b extends com.roblox.client.datastructures.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f6977b;

    /* JADX INFO: renamed from: com.roblox.client.g.b$b, reason: collision with other inner class name */
    private static class C0105b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f6982a = new b();
    }

    public static b b() {
        return C0105b.f6982a;
    }

    public class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f6983a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f6984b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Socket f6985c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f6986d;

        public c() {
        }
    }

    private class a implements com.roblox.client.datastructures.c {
        private a() {
        }

        @Override // com.roblox.client.datastructures.c
        public boolean a() {
            return true;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [com.roblox.client.g.b$a$1] */
        @Override // com.roblox.client.datastructures.c
        public void a(final com.roblox.client.datastructures.a aVar) {
            if (b.this.f6977b != null) {
                Log.d("InfluxV2Queue", "fireAction: Close the existing socket...");
                new AsyncTask<Void, Void, Void>() { // from class: com.roblox.client.g.b.a.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Void doInBackground(Void... voidArr) {
                        Socket socket = b.this.f6977b.f6985c;
                        if (socket != null) {
                            try {
                                socket.close();
                            } catch (IOException e) {
                                Log.w("InfluxV2Queue", "[Close-connection-item] Error closing socket: " + e.getMessage());
                            }
                            b.this.f6977b.f6985c = null;
                        }
                        b.this.f6977b = null;
                        return null;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onPostExecute(Void r2) {
                        if (aVar != null) {
                            aVar.a();
                        }
                    }
                }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        }
    }

    public c c() {
        if (this.f6977b != null && this.f6977b.f6985c != null) {
            return this.f6977b;
        }
        String strY = com.roblox.client.b.y();
        int iZ = com.roblox.client.b.z();
        int iA = com.roblox.client.b.A();
        this.f6977b = new c();
        this.f6977b.f6983a = strY;
        this.f6977b.f6984b = iZ;
        this.f6977b.f6986d = iA;
        try {
            Log.d("InfluxV2Queue", "getSocketInfo: Create a socket to " + strY + ":" + iZ + "...");
            this.f6977b.f6985c = new Socket(InetAddress.getByName(strY), iZ);
            if (this.f6977b.f6986d > 0) {
                Handler handler = new Handler(Looper.getMainLooper());
                Log.d("InfluxV2Queue", "Schedule a special close-connection item with delay=" + this.f6977b.f6986d + "s...");
                handler.postDelayed(new Runnable() { // from class: com.roblox.client.g.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        b.b().a(new a());
                    }
                }, ((long) this.f6977b.f6986d) * 1000);
            }
            return this.f6977b;
        } catch (IOException e) {
            Log.w("InfluxV2Queue", "Error creating the socket: " + e.getMessage());
            return this.f6977b;
        }
    }
}
