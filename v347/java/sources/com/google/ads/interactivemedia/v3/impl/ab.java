package com.google.ads.interactivemedia.v3.impl;

import android.os.Handler;
import android.os.Message;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class ab implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f2819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final long f2820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f2821c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<b> f2822d;

    public interface b {
        void a(VideoProgressUpdate videoProgressUpdate);
    }

    public abstract VideoProgressUpdate a();

    ab(long j) {
        this(null, j);
    }

    ab(a aVar, long j) {
        this.f2821c = false;
        this.f2822d = new ArrayList(1);
        this.f2820b = j;
        if (aVar != null) {
            this.f2819a = aVar;
        } else {
            this.f2819a = new a(new Handler(this));
        }
    }

    public void a(b bVar) {
        this.f2822d.add(bVar);
    }

    public void b(b bVar) {
        this.f2822d.remove(bVar);
    }

    public void b() {
        if (!this.f2821c) {
            this.f2821c = true;
            this.f2819a.b(1);
        }
    }

    public void c() {
        if (this.f2821c) {
            this.f2821c = false;
            this.f2819a.c(2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1:
                VideoProgressUpdate videoProgressUpdateA = a();
                Iterator<b> it = this.f2822d.iterator();
                while (it.hasNext()) {
                    it.next().a(videoProgressUpdateA);
                }
                this.f2819a.a(1, this.f2820b);
                return true;
            case 2:
                this.f2819a.a(1);
                return true;
            default:
                return true;
        }
    }

    protected static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f2823a;

        public a(Handler handler) {
            this.f2823a = handler;
        }

        protected void a(int i) {
            this.f2823a.removeMessages(i);
        }

        protected boolean b(int i) {
            return this.f2823a.sendEmptyMessage(i);
        }

        protected boolean a(int i, long j) {
            return this.f2823a.sendEmptyMessageDelayed(i, j);
        }

        protected boolean c(int i) {
            return this.f2823a.sendMessageAtFrontOfQueue(Message.obtain(this.f2823a, i));
        }
    }
}
