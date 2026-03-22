package android.support.v4.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class f {
    private static final Object f = new Object();
    private static f g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap<BroadcastReceiver, ArrayList<b>> f598b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap<String, ArrayList<b>> f599c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList<a> f600d = new ArrayList<>();
    private final Handler e;

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final IntentFilter f604a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final BroadcastReceiver f605b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f606c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f607d;

        b(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f604a = intentFilter;
            this.f605b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f605b);
            sb.append(" filter=");
            sb.append(this.f604a);
            if (this.f607d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f602a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ArrayList<b> f603b;

        a(Intent intent, ArrayList<b> arrayList) {
            this.f602a = intent;
            this.f603b = arrayList;
        }
    }

    public static f a(Context context) {
        f fVar;
        synchronized (f) {
            if (g == null) {
                g = new f(context.getApplicationContext());
            }
            fVar = g;
        }
        return fVar;
    }

    private f(Context context) {
        this.f597a = context;
        this.e = new Handler(context.getMainLooper()) { // from class: android.support.v4.a.f.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        f.this.a();
                        break;
                    default:
                        super.handleMessage(message);
                        break;
                }
            }
        };
    }

    public void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f598b) {
            b bVar = new b(intentFilter, broadcastReceiver);
            ArrayList<b> arrayList = this.f598b.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.f598b.put(broadcastReceiver, arrayList);
            }
            arrayList.add(bVar);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<b> arrayList2 = this.f599c.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.f599c.put(action, arrayList2);
                }
                arrayList2.add(bVar);
            }
        }
    }

    public boolean a(Intent intent) {
        String str;
        ArrayList arrayList;
        synchronized (this.f598b) {
            String action = intent.getAction();
            String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f597a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z = (intent.getFlags() & 8) != 0;
            if (z) {
                Log.v("LocalBroadcastManager", "Resolving type " + strResolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList<b> arrayList2 = this.f599c.get(intent.getAction());
            if (arrayList2 != null) {
                if (z) {
                    Log.v("LocalBroadcastManager", "Action list: " + arrayList2);
                }
                ArrayList arrayList3 = null;
                int i = 0;
                while (i < arrayList2.size()) {
                    b bVar = arrayList2.get(i);
                    if (z) {
                        Log.v("LocalBroadcastManager", "Matching against filter " + bVar.f604a);
                    }
                    if (bVar.f606c) {
                        if (z) {
                            Log.v("LocalBroadcastManager", "  Filter's target already added");
                            arrayList = arrayList3;
                        } else {
                            arrayList = arrayList3;
                        }
                    } else {
                        int iMatch = bVar.f604a.match(action, strResolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (iMatch >= 0) {
                            if (z) {
                                Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(iMatch));
                            }
                            arrayList = arrayList3 == null ? new ArrayList() : arrayList3;
                            arrayList.add(bVar);
                            bVar.f606c = true;
                        } else {
                            if (z) {
                                switch (iMatch) {
                                    case -4:
                                        str = "category";
                                        break;
                                    case -3:
                                        str = "action";
                                        break;
                                    case -2:
                                        str = "data";
                                        break;
                                    case -1:
                                        str = "type";
                                        break;
                                    default:
                                        str = "unknown reason";
                                        break;
                                }
                                Log.v("LocalBroadcastManager", "  Filter did not match: " + str);
                            }
                            arrayList = arrayList3;
                        }
                    }
                    i++;
                    arrayList3 = arrayList;
                }
                if (arrayList3 != null) {
                    for (int i2 = 0; i2 < arrayList3.size(); i2++) {
                        ((b) arrayList3.get(i2)).f606c = false;
                    }
                    this.f600d.add(new a(intent, arrayList3));
                    if (!this.e.hasMessages(1)) {
                        this.e.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        a[] aVarArr;
        while (true) {
            synchronized (this.f598b) {
                int size = this.f600d.size();
                if (size <= 0) {
                    return;
                }
                aVarArr = new a[size];
                this.f600d.toArray(aVarArr);
                this.f600d.clear();
            }
            for (a aVar : aVarArr) {
                int size2 = aVar.f603b.size();
                for (int i = 0; i < size2; i++) {
                    b bVar = aVar.f603b.get(i);
                    if (!bVar.f607d) {
                        bVar.f605b.onReceive(this.f597a, aVar.f602a);
                    }
                }
            }
        }
    }
}
