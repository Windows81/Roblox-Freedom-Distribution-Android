package a.a.h;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends HandlerThread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f477b;

    c(String str, String str2) {
        super(str);
        this.f477b = str2;
        start();
    }

    @Override // android.os.HandlerThread
    protected void onLooperPrepared() {
        super.onLooperPrepared();
        this.f476a = new a(getLooper(), this.f477b);
    }

    void a(b bVar) {
        Message message = new Message();
        message.obj = bVar;
        this.f476a.sendMessage(message);
    }

    private class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f478a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final transient String f480c;

        private a(Looper looper, String str) {
            super(looper);
            this.f480c = a.class.getSimpleName();
            this.f478a = str;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws Throwable {
            a.a.g.c cVarA;
            b bVar = (b) message.obj;
            if (bVar.f475d != null) {
                a.a.f.a.a(this.f480c, "Sending using custom request handler");
                cVarA = bVar.f475d.a(bVar.f472a);
            } else {
                a.a.f.a.a(this.f480c, "Sending report using default request handler");
                cVarA = d.a(this.f478a, a.a.b.a.a(bVar.f472a), bVar.f472a.a(), bVar.f472a.m, bVar.f474c);
            }
            if (bVar.f473b != null) {
                a.a.f.a.a(this.f480c, "Processing result using custom event");
                bVar.f473b.a(cVarA);
            }
        }
    }
}
