package com.roblox.client;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class RobloxService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f6431a = "robloxservice";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Messenger f6432b = new Messenger(new a());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<Messenger> f6433c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6434d = false;
    private boolean e = false;

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 2;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (intent.getBooleanExtra("roblox_launcher_debugger_attached", false)) {
            this.f6434d = true;
        }
        return this.f6432b.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.i(f6431a, "RobloxService onCreate");
        new com.roblox.engine.f(com.roblox.client.b.c.a()).a(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.w(f6431a, "RobloxService onDestroy");
        super.onDestroy();
    }

    @SuppressLint({"HandlerLeak"})
    private class a extends Handler {
        private a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (RobloxService.this.f6434d && !RobloxService.this.e) {
                Log.w(RobloxService.f6431a, "RobloxService waiting for debugger");
                Debug.waitForDebugger();
                RobloxService.this.e = true;
            }
            switch (message.what) {
                case 1:
                    RobloxService.this.f6433c.add(message.replyTo);
                    break;
                case 2:
                    RobloxService.this.f6433c.remove(message.replyTo);
                    break;
                case 3:
                    for (Messenger messenger : RobloxService.this.f6433c) {
                        if (!message.replyTo.equals(messenger)) {
                            try {
                                messenger.send(Message.obtain(message));
                            } catch (RemoteException e) {
                                Log.e(RobloxService.f6431a, p.a("Remote exception: ." + e.getMessage(), new Object[0]));
                            }
                        }
                    }
                    break;
                default:
                    super.handleMessage(message);
                    break;
            }
        }
    }
}
