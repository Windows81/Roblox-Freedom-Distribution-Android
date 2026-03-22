package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.core.a;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i {

    public static class c {
        String A;
        Bundle B;
        int C;
        int D;
        Notification E;
        RemoteViews F;
        RemoteViews G;
        RemoteViews H;
        String I;
        int J;
        String K;
        long L;
        int M;
        Notification N;

        @Deprecated
        public ArrayList<String> O;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Context f1310a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ArrayList<a> f1311b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ArrayList<a> f1312c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        CharSequence f1313d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        CharSequence f1314e;
        PendingIntent f;
        PendingIntent g;
        RemoteViews h;
        Bitmap i;
        CharSequence j;
        int k;
        int l;
        boolean m;
        boolean n;
        d o;
        CharSequence p;
        CharSequence[] q;
        int r;
        int s;
        boolean t;
        String u;
        boolean v;
        String w;
        boolean x;
        boolean y;
        boolean z;

        public c(Context context, String str) {
            this.f1311b = new ArrayList<>();
            this.f1312c = new ArrayList<>();
            this.m = true;
            this.x = false;
            this.C = 0;
            this.D = 0;
            this.J = 0;
            this.M = 0;
            Notification notification = new Notification();
            this.N = notification;
            this.f1310a = context;
            this.I = str;
            notification.when = System.currentTimeMillis();
            this.N.audioStreamType = -1;
            this.l = 0;
            this.O = new ArrayList<>();
        }

        @Deprecated
        public c(Context context) {
            this(context, null);
        }

        public c a(long j) {
            this.N.when = j;
            return this;
        }

        public c a(int i) {
            this.N.icon = i;
            return this;
        }

        public c a(CharSequence charSequence) {
            this.f1313d = d(charSequence);
            return this;
        }

        public c b(CharSequence charSequence) {
            this.f1314e = d(charSequence);
            return this;
        }

        public c b(int i) {
            this.k = i;
            return this;
        }

        public c a(RemoteViews remoteViews) {
            this.N.contentView = remoteViews;
            return this;
        }

        public c a(PendingIntent pendingIntent) {
            this.f = pendingIntent;
            return this;
        }

        public c b(PendingIntent pendingIntent) {
            this.N.deleteIntent = pendingIntent;
            return this;
        }

        public c c(CharSequence charSequence) {
            this.N.tickerText = d(charSequence);
            return this;
        }

        public c a(Bitmap bitmap) {
            this.i = b(bitmap);
            return this;
        }

        private Bitmap b(Bitmap bitmap) {
            if (bitmap == null || Build.VERSION.SDK_INT >= 27) {
                return bitmap;
            }
            Resources resources = this.f1310a.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(a.b.compat_notification_large_icon_max_width);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(a.b.compat_notification_large_icon_max_height);
            if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
                return bitmap;
            }
            double d2 = dimensionPixelSize;
            double dMax = Math.max(1, bitmap.getWidth());
            Double.isNaN(d2);
            Double.isNaN(dMax);
            double d3 = d2 / dMax;
            double d4 = dimensionPixelSize2;
            double dMax2 = Math.max(1, bitmap.getHeight());
            Double.isNaN(d4);
            Double.isNaN(dMax2);
            double dMin = Math.min(d3, d4 / dMax2);
            double width = bitmap.getWidth();
            Double.isNaN(width);
            int iCeil = (int) Math.ceil(width * dMin);
            double height = bitmap.getHeight();
            Double.isNaN(height);
            return Bitmap.createScaledBitmap(bitmap, iCeil, (int) Math.ceil(height * dMin), true);
        }

        public c a(Uri uri) {
            this.N.sound = uri;
            this.N.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                this.N.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        public c a(boolean z) {
            a(16, z);
            return this;
        }

        public c b(boolean z) {
            this.x = z;
            return this;
        }

        public c c(int i) {
            this.N.defaults = i;
            if ((i & 4) != 0) {
                this.N.flags |= 1;
            }
            return this;
        }

        private void a(int i, boolean z) {
            if (z) {
                Notification notification = this.N;
                notification.flags = i | notification.flags;
            } else {
                Notification notification2 = this.N;
                notification2.flags = (i ^ (-1)) & notification2.flags;
            }
        }

        public c d(int i) {
            this.l = i;
            return this;
        }

        public Bundle a() {
            if (this.B == null) {
                this.B = new Bundle();
            }
            return this.B;
        }

        public c a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f1311b.add(new a(i, charSequence, pendingIntent));
            return this;
        }

        public c a(a aVar) {
            this.f1311b.add(aVar);
            return this;
        }

        public c a(d dVar) {
            if (this.o != dVar) {
                this.o = dVar;
                if (dVar != null) {
                    dVar.a(this);
                }
            }
            return this;
        }

        public c e(int i) {
            this.C = i;
            return this;
        }

        public c f(int i) {
            this.D = i;
            return this;
        }

        public c a(String str) {
            this.I = str;
            return this;
        }

        public Notification b() {
            return new j(this).b();
        }

        protected static CharSequence d(CharSequence charSequence) {
            return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
        }
    }

    public static abstract class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected c f1315a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        CharSequence f1316b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        CharSequence f1317c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1318d = false;

        public void a(Bundle bundle) {
        }

        public void a(h hVar) {
        }

        public RemoteViews b(h hVar) {
            return null;
        }

        public RemoteViews c(h hVar) {
            return null;
        }

        public RemoteViews d(h hVar) {
            return null;
        }

        public void a(c cVar) {
            if (this.f1315a != cVar) {
                this.f1315a = cVar;
                if (cVar != null) {
                    cVar.a(this);
                }
            }
        }
    }

    public static class b extends d {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private CharSequence f1309e;

        public b a(CharSequence charSequence) {
            this.f1309e = c.d(charSequence);
            return this;
        }

        @Override // androidx.core.app.i.d
        public void a(h hVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigTextStyleBigText = new Notification.BigTextStyle(hVar.a()).setBigContentTitle(this.f1316b).bigText(this.f1309e);
                if (this.f1318d) {
                    bigTextStyleBigText.setSummaryText(this.f1317c);
                }
            }
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Bundle f1299a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f1300b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1301c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public CharSequence f1302d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public PendingIntent f1303e;
        private final m[] f;
        private final m[] g;
        private boolean h;
        private final int i;

        public a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true);
        }

        a(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, m[] mVarArr, m[] mVarArr2, boolean z, int i2, boolean z2) {
            this.f1300b = true;
            this.f1301c = i;
            this.f1302d = c.d(charSequence);
            this.f1303e = pendingIntent;
            this.f1299a = bundle == null ? new Bundle() : bundle;
            this.f = mVarArr;
            this.g = mVarArr2;
            this.h = z;
            this.i = i2;
            this.f1300b = z2;
        }

        public int a() {
            return this.f1301c;
        }

        public CharSequence b() {
            return this.f1302d;
        }

        public PendingIntent c() {
            return this.f1303e;
        }

        public Bundle d() {
            return this.f1299a;
        }

        public boolean e() {
            return this.h;
        }

        public m[] f() {
            return this.f;
        }

        public int g() {
            return this.i;
        }

        public m[] h() {
            return this.g;
        }

        public boolean i() {
            return this.f1300b;
        }

        /* JADX INFO: renamed from: androidx.core.app.i$a$a, reason: collision with other inner class name */
        public static final class C0027a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final int f1304a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final CharSequence f1305b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final PendingIntent f1306c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private boolean f1307d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private final Bundle f1308e;
            private ArrayList<m> f;
            private int g;
            private boolean h;

            public C0027a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
                this(i, charSequence, pendingIntent, new Bundle(), null, true, 0, true);
            }

            private C0027a(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, m[] mVarArr, boolean z, int i2, boolean z2) {
                this.f1307d = true;
                this.h = true;
                this.f1304a = i;
                this.f1305b = c.d(charSequence);
                this.f1306c = pendingIntent;
                this.f1308e = bundle;
                this.f = mVarArr == null ? null : new ArrayList<>(Arrays.asList(mVarArr));
                this.f1307d = z;
                this.g = i2;
                this.h = z2;
            }

            public C0027a a(m mVar) {
                if (this.f == null) {
                    this.f = new ArrayList<>();
                }
                this.f.add(mVar);
                return this;
            }

            public C0027a a(boolean z) {
                this.f1307d = z;
                return this;
            }

            public a a() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList<m> arrayList3 = this.f;
                if (arrayList3 != null) {
                    for (m mVar : arrayList3) {
                        if (mVar.e()) {
                            arrayList.add(mVar);
                        } else {
                            arrayList2.add(mVar);
                        }
                    }
                }
                m[] mVarArr = arrayList.isEmpty() ? null : (m[]) arrayList.toArray(new m[arrayList.size()]);
                return new a(this.f1304a, this.f1305b, this.f1306c, this.f1308e, arrayList2.isEmpty() ? null : (m[]) arrayList2.toArray(new m[arrayList2.size()]), mVarArr, this.f1307d, this.g, this.h);
            }
        }
    }

    public static Bundle a(Notification notification) {
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return k.a(notification);
        }
        return null;
    }
}
