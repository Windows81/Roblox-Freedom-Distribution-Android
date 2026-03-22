package androidx.core.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.core.app.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class j implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Notification.Builder f1319a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i.c f1320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RemoteViews f1321c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RemoteViews f1322d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<Bundle> f1323e = new ArrayList();
    private final Bundle f = new Bundle();
    private int g;
    private RemoteViews h;

    j(i.c cVar) {
        this.f1320b = cVar;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1319a = new Notification.Builder(cVar.f1310a, cVar.I);
        } else {
            this.f1319a = new Notification.Builder(cVar.f1310a);
        }
        Notification notification = cVar.N;
        this.f1319a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, cVar.h).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(cVar.f1313d).setContentText(cVar.f1314e).setContentInfo(cVar.j).setContentIntent(cVar.f).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(cVar.g, (notification.flags & 128) != 0).setLargeIcon(cVar.i).setNumber(cVar.k).setProgress(cVar.r, cVar.s, cVar.t);
        if (Build.VERSION.SDK_INT < 21) {
            this.f1319a.setSound(notification.sound, notification.audioStreamType);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1319a.setSubText(cVar.p).setUsesChronometer(cVar.n).setPriority(cVar.l);
            Iterator<i.a> it = cVar.f1311b.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            if (cVar.B != null) {
                this.f.putAll(cVar.B);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (cVar.x) {
                    this.f.putBoolean("android.support.localOnly", true);
                }
                if (cVar.u != null) {
                    this.f.putString("android.support.groupKey", cVar.u);
                    if (cVar.v) {
                        this.f.putBoolean("android.support.isGroupSummary", true);
                    } else {
                        this.f.putBoolean("android.support.useSideChannel", true);
                    }
                }
                if (cVar.w != null) {
                    this.f.putString("android.support.sortKey", cVar.w);
                }
            }
            this.f1321c = cVar.F;
            this.f1322d = cVar.G;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1319a.setShowWhen(cVar.m);
            if (Build.VERSION.SDK_INT < 21 && cVar.O != null && !cVar.O.isEmpty()) {
                this.f.putStringArray("android.people", (String[]) cVar.O.toArray(new String[cVar.O.size()]));
            }
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f1319a.setLocalOnly(cVar.x).setGroup(cVar.u).setGroupSummary(cVar.v).setSortKey(cVar.w);
            this.g = cVar.M;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1319a.setCategory(cVar.A).setColor(cVar.C).setVisibility(cVar.D).setPublicVersion(cVar.E).setSound(notification.sound, notification.audioAttributes);
            Iterator<String> it2 = cVar.O.iterator();
            while (it2.hasNext()) {
                this.f1319a.addPerson(it2.next());
            }
            this.h = cVar.H;
            if (cVar.f1312c.size() > 0) {
                Bundle bundle = cVar.a().getBundle("android.car.EXTENSIONS");
                bundle = bundle == null ? new Bundle() : bundle;
                Bundle bundle2 = new Bundle();
                for (int i = 0; i < cVar.f1312c.size(); i++) {
                    bundle2.putBundle(Integer.toString(i), k.a(cVar.f1312c.get(i)));
                }
                bundle.putBundle("invisible_actions", bundle2);
                cVar.a().putBundle("android.car.EXTENSIONS", bundle);
                this.f.putBundle("android.car.EXTENSIONS", bundle);
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.f1319a.setExtras(cVar.B).setRemoteInputHistory(cVar.q);
            if (cVar.F != null) {
                this.f1319a.setCustomContentView(cVar.F);
            }
            if (cVar.G != null) {
                this.f1319a.setCustomBigContentView(cVar.G);
            }
            if (cVar.H != null) {
                this.f1319a.setCustomHeadsUpContentView(cVar.H);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1319a.setBadgeIconType(cVar.J).setShortcutId(cVar.K).setTimeoutAfter(cVar.L).setGroupAlertBehavior(cVar.M);
            if (cVar.z) {
                this.f1319a.setColorized(cVar.y);
            }
            if (TextUtils.isEmpty(cVar.I)) {
                return;
            }
            this.f1319a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
        }
    }

    @Override // androidx.core.app.h
    public Notification.Builder a() {
        return this.f1319a;
    }

    public Notification b() {
        Bundle bundleA;
        RemoteViews remoteViewsD;
        RemoteViews remoteViewsC;
        i.d dVar = this.f1320b.o;
        if (dVar != null) {
            dVar.a(this);
        }
        RemoteViews remoteViewsB = dVar != null ? dVar.b(this) : null;
        Notification notificationC = c();
        if (remoteViewsB != null) {
            notificationC.contentView = remoteViewsB;
        } else if (this.f1320b.F != null) {
            notificationC.contentView = this.f1320b.F;
        }
        if (Build.VERSION.SDK_INT >= 16 && dVar != null && (remoteViewsC = dVar.c(this)) != null) {
            notificationC.bigContentView = remoteViewsC;
        }
        if (Build.VERSION.SDK_INT >= 21 && dVar != null && (remoteViewsD = this.f1320b.o.d(this)) != null) {
            notificationC.headsUpContentView = remoteViewsD;
        }
        if (Build.VERSION.SDK_INT >= 16 && dVar != null && (bundleA = i.a(notificationC)) != null) {
            dVar.a(bundleA);
        }
        return notificationC;
    }

    private void a(i.a aVar) {
        Bundle bundle;
        if (Build.VERSION.SDK_INT >= 20) {
            Notification.Action.Builder builder = new Notification.Action.Builder(aVar.a(), aVar.b(), aVar.c());
            if (aVar.f() != null) {
                for (RemoteInput remoteInput : m.a(aVar.f())) {
                    builder.addRemoteInput(remoteInput);
                }
            }
            if (aVar.d() != null) {
                bundle = new Bundle(aVar.d());
            } else {
                bundle = new Bundle();
            }
            bundle.putBoolean("android.support.allowGeneratedReplies", aVar.e());
            if (Build.VERSION.SDK_INT >= 24) {
                builder.setAllowGeneratedReplies(aVar.e());
            }
            bundle.putInt("android.support.action.semanticAction", aVar.g());
            if (Build.VERSION.SDK_INT >= 28) {
                builder.setSemanticAction(aVar.g());
            }
            bundle.putBoolean("android.support.action.showsUserInterface", aVar.i());
            builder.addExtras(bundle);
            this.f1319a.addAction(builder.build());
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1323e.add(k.a(this.f1319a, aVar));
        }
    }

    protected Notification c() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f1319a.build();
        }
        if (Build.VERSION.SDK_INT >= 24) {
            Notification notificationBuild = this.f1319a.build();
            if (this.g != 0) {
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & 512) != 0 && this.g == 2) {
                    a(notificationBuild);
                }
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & 512) == 0 && this.g == 1) {
                    a(notificationBuild);
                }
            }
            return notificationBuild;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1319a.setExtras(this.f);
            Notification notificationBuild2 = this.f1319a.build();
            RemoteViews remoteViews = this.f1321c;
            if (remoteViews != null) {
                notificationBuild2.contentView = remoteViews;
            }
            RemoteViews remoteViews2 = this.f1322d;
            if (remoteViews2 != null) {
                notificationBuild2.bigContentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.h;
            if (remoteViews3 != null) {
                notificationBuild2.headsUpContentView = remoteViews3;
            }
            if (this.g != 0) {
                if (notificationBuild2.getGroup() != null && (notificationBuild2.flags & 512) != 0 && this.g == 2) {
                    a(notificationBuild2);
                }
                if (notificationBuild2.getGroup() != null && (notificationBuild2.flags & 512) == 0 && this.g == 1) {
                    a(notificationBuild2);
                }
            }
            return notificationBuild2;
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f1319a.setExtras(this.f);
            Notification notificationBuild3 = this.f1319a.build();
            RemoteViews remoteViews4 = this.f1321c;
            if (remoteViews4 != null) {
                notificationBuild3.contentView = remoteViews4;
            }
            RemoteViews remoteViews5 = this.f1322d;
            if (remoteViews5 != null) {
                notificationBuild3.bigContentView = remoteViews5;
            }
            if (this.g != 0) {
                if (notificationBuild3.getGroup() != null && (notificationBuild3.flags & 512) != 0 && this.g == 2) {
                    a(notificationBuild3);
                }
                if (notificationBuild3.getGroup() != null && (notificationBuild3.flags & 512) == 0 && this.g == 1) {
                    a(notificationBuild3);
                }
            }
            return notificationBuild3;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            SparseArray<Bundle> sparseArrayA = k.a(this.f1323e);
            if (sparseArrayA != null) {
                this.f.putSparseParcelableArray("android.support.actionExtras", sparseArrayA);
            }
            this.f1319a.setExtras(this.f);
            Notification notificationBuild4 = this.f1319a.build();
            RemoteViews remoteViews6 = this.f1321c;
            if (remoteViews6 != null) {
                notificationBuild4.contentView = remoteViews6;
            }
            RemoteViews remoteViews7 = this.f1322d;
            if (remoteViews7 != null) {
                notificationBuild4.bigContentView = remoteViews7;
            }
            return notificationBuild4;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            Notification notificationBuild5 = this.f1319a.build();
            Bundle bundleA = i.a(notificationBuild5);
            Bundle bundle = new Bundle(this.f);
            for (String str : this.f.keySet()) {
                if (bundleA.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            bundleA.putAll(bundle);
            SparseArray<Bundle> sparseArrayA2 = k.a(this.f1323e);
            if (sparseArrayA2 != null) {
                i.a(notificationBuild5).putSparseParcelableArray("android.support.actionExtras", sparseArrayA2);
            }
            RemoteViews remoteViews8 = this.f1321c;
            if (remoteViews8 != null) {
                notificationBuild5.contentView = remoteViews8;
            }
            RemoteViews remoteViews9 = this.f1322d;
            if (remoteViews9 != null) {
                notificationBuild5.bigContentView = remoteViews9;
            }
            return notificationBuild5;
        }
        return this.f1319a.getNotification();
    }

    private void a(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }
}
