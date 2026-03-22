package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class z {

    public static class c {
        Bundle A;
        int B;
        int C;
        Notification D;
        RemoteViews E;
        RemoteViews F;
        RemoteViews G;
        String H;
        int I;
        String J;
        long K;
        int L;
        Notification M;

        @Deprecated
        public ArrayList<String> N;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Context f832a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ArrayList<a> f833b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        CharSequence f834c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        CharSequence f835d;
        PendingIntent e;
        PendingIntent f;
        RemoteViews g;
        Bitmap h;
        CharSequence i;
        int j;
        int k;
        boolean l;
        boolean m;
        d n;
        CharSequence o;
        CharSequence[] p;
        int q;
        int r;
        boolean s;
        String t;
        boolean u;
        String v;
        boolean w;
        boolean x;
        boolean y;
        String z;

        public c(Context context, String str) {
            this.f833b = new ArrayList<>();
            this.l = true;
            this.w = false;
            this.B = 0;
            this.C = 0;
            this.I = 0;
            this.L = 0;
            this.M = new Notification();
            this.f832a = context;
            this.H = str;
            this.M.when = System.currentTimeMillis();
            this.M.audioStreamType = -1;
            this.k = 0;
            this.N = new ArrayList<>();
        }

        @Deprecated
        public c(Context context) {
            this(context, null);
        }

        public c a(long j) {
            this.M.when = j;
            return this;
        }

        public c a(int i) {
            this.M.icon = i;
            return this;
        }

        public c a(CharSequence charSequence) {
            this.f834c = d(charSequence);
            return this;
        }

        public c b(CharSequence charSequence) {
            this.f835d = d(charSequence);
            return this;
        }

        public c b(int i) {
            this.j = i;
            return this;
        }

        public c a(RemoteViews remoteViews) {
            this.M.contentView = remoteViews;
            return this;
        }

        public c a(PendingIntent pendingIntent) {
            this.e = pendingIntent;
            return this;
        }

        public c b(PendingIntent pendingIntent) {
            this.M.deleteIntent = pendingIntent;
            return this;
        }

        public c c(CharSequence charSequence) {
            this.M.tickerText = d(charSequence);
            return this;
        }

        public c a(Bitmap bitmap) {
            this.h = bitmap;
            return this;
        }

        public c a(Uri uri) {
            this.M.sound = uri;
            this.M.audioStreamType = -1;
            return this;
        }

        public c a(boolean z) {
            a(16, z);
            return this;
        }

        public c b(boolean z) {
            this.w = z;
            return this;
        }

        private void a(int i, boolean z) {
            if (z) {
                this.M.flags |= i;
            } else {
                this.M.flags &= i ^ (-1);
            }
        }

        public c a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f833b.add(new a(i, charSequence, pendingIntent));
            return this;
        }

        public c a(a aVar) {
            this.f833b.add(aVar);
            return this;
        }

        public c a(d dVar) {
            if (this.n != dVar) {
                this.n = dVar;
                if (this.n != null) {
                    this.n.a(this);
                }
            }
            return this;
        }

        public c c(int i) {
            this.B = i;
            return this;
        }

        public c a(String str) {
            this.H = str;
            return this;
        }

        public Notification a() {
            return new aa(this).b();
        }

        protected static CharSequence d(CharSequence charSequence) {
            if (charSequence != null && charSequence.length() > 5120) {
                return charSequence.subSequence(0, 5120);
            }
            return charSequence;
        }
    }

    public static abstract class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected c f836a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        CharSequence f837b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        CharSequence f838c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f839d = false;

        public void a(c cVar) {
            if (this.f836a != cVar) {
                this.f836a = cVar;
                if (this.f836a != null) {
                    this.f836a.a(this);
                }
            }
        }

        public void a(y yVar) {
        }

        public RemoteViews b(y yVar) {
            return null;
        }

        public RemoteViews c(y yVar) {
            return null;
        }

        public RemoteViews d(y yVar) {
            return null;
        }

        public void a(Bundle bundle) {
        }
    }

    public static class b extends d {
        private CharSequence e;

        public b a(CharSequence charSequence) {
            this.e = c.d(charSequence);
            return this;
        }

        @Override // android.support.v4.app.z.d
        public void a(y yVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigTextStyleBigText = new Notification.BigTextStyle(yVar.a()).setBigContentTitle(this.f837b).bigText(this.e);
                if (this.f839d) {
                    bigTextStyleBigText.setSummaryText(this.f838c);
                }
            }
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Bundle f824a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f825b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public CharSequence f826c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public PendingIntent f827d;
        private final ae[] e;
        private final ae[] f;
        private boolean g;

        public a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i, charSequence, pendingIntent, new Bundle(), null, null, true);
        }

        a(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, ae[] aeVarArr, ae[] aeVarArr2, boolean z) {
            this.f825b = i;
            this.f826c = c.d(charSequence);
            this.f827d = pendingIntent;
            this.f824a = bundle == null ? new Bundle() : bundle;
            this.e = aeVarArr;
            this.f = aeVarArr2;
            this.g = z;
        }

        public int a() {
            return this.f825b;
        }

        public CharSequence b() {
            return this.f826c;
        }

        public PendingIntent c() {
            return this.f827d;
        }

        public Bundle d() {
            return this.f824a;
        }

        public boolean e() {
            return this.g;
        }

        public ae[] f() {
            return this.e;
        }

        public ae[] g() {
            return this.f;
        }

        /* JADX INFO: renamed from: android.support.v4.app.z$a$a, reason: collision with other inner class name */
        public static final class C0016a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final int f828a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final CharSequence f829b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final PendingIntent f830c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private boolean f831d;
            private final Bundle e;
            private ArrayList<ae> f;

            public C0016a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
                this(i, charSequence, pendingIntent, new Bundle(), null, true);
            }

            private C0016a(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, ae[] aeVarArr, boolean z) {
                this.f831d = true;
                this.f828a = i;
                this.f829b = c.d(charSequence);
                this.f830c = pendingIntent;
                this.e = bundle;
                this.f = aeVarArr == null ? null : new ArrayList<>(Arrays.asList(aeVarArr));
                this.f831d = z;
            }

            public C0016a a(ae aeVar) {
                if (this.f == null) {
                    this.f = new ArrayList<>();
                }
                this.f.add(aeVar);
                return this;
            }

            public C0016a a(boolean z) {
                this.f831d = z;
                return this;
            }

            public a a() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (this.f != null) {
                    for (ae aeVar : this.f) {
                        if (aeVar.e()) {
                            arrayList.add(aeVar);
                        } else {
                            arrayList2.add(aeVar);
                        }
                    }
                }
                return new a(this.f828a, this.f829b, this.f830c, this.e, arrayList2.isEmpty() ? null : (ae[]) arrayList2.toArray(new ae[arrayList2.size()]), arrayList.isEmpty() ? null : (ae[]) arrayList.toArray(new ae[arrayList.size()]), this.f831d);
            }
        }
    }

    public static Bundle a(Notification notification) {
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return ab.a(notification);
        }
        return null;
    }
}
