package android.support.v4.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.z;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class aa implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Notification.Builder f648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final z.c f649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RemoteViews f650c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RemoteViews f651d;
    private final List<Bundle> e = new ArrayList();
    private final Bundle f = new Bundle();
    private int g;
    private RemoteViews h;

    aa(z.c cVar) {
        this.f649b = cVar;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f648a = new Notification.Builder(cVar.f832a, cVar.H);
        } else {
            this.f648a = new Notification.Builder(cVar.f832a);
        }
        Notification notification = cVar.M;
        this.f648a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, cVar.g).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(cVar.f834c).setContentText(cVar.f835d).setContentInfo(cVar.i).setContentIntent(cVar.e).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(cVar.f, (notification.flags & 128) != 0).setLargeIcon(cVar.h).setNumber(cVar.j).setProgress(cVar.q, cVar.r, cVar.s);
        if (Build.VERSION.SDK_INT >= 16) {
            this.f648a.setSubText(cVar.o).setUsesChronometer(cVar.m).setPriority(cVar.k);
            Iterator<z.a> it = cVar.f833b.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            if (cVar.A != null) {
                this.f.putAll(cVar.A);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (cVar.w) {
                    this.f.putBoolean("android.support.localOnly", true);
                }
                if (cVar.t != null) {
                    this.f.putString("android.support.groupKey", cVar.t);
                    if (cVar.u) {
                        this.f.putBoolean("android.support.isGroupSummary", true);
                    } else {
                        this.f.putBoolean("android.support.useSideChannel", true);
                    }
                }
                if (cVar.v != null) {
                    this.f.putString("android.support.sortKey", cVar.v);
                }
            }
            this.f650c = cVar.E;
            this.f651d = cVar.F;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.f648a.setShowWhen(cVar.l);
            if (Build.VERSION.SDK_INT < 21 && cVar.N != null && !cVar.N.isEmpty()) {
                this.f.putStringArray("android.people", (String[]) cVar.N.toArray(new String[cVar.N.size()]));
            }
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f648a.setLocalOnly(cVar.w).setGroup(cVar.t).setGroupSummary(cVar.u).setSortKey(cVar.v);
            this.g = cVar.L;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f648a.setCategory(cVar.z).setColor(cVar.B).setVisibility(cVar.C).setPublicVersion(cVar.D);
            Iterator<String> it2 = cVar.N.iterator();
            while (it2.hasNext()) {
                this.f648a.addPerson(it2.next());
            }
            this.h = cVar.G;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.f648a.setExtras(cVar.A).setRemoteInputHistory(cVar.p);
            if (cVar.E != null) {
                this.f648a.setCustomContentView(cVar.E);
            }
            if (cVar.F != null) {
                this.f648a.setCustomBigContentView(cVar.F);
            }
            if (cVar.G != null) {
                this.f648a.setCustomHeadsUpContentView(cVar.G);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f648a.setBadgeIconType(cVar.I).setShortcutId(cVar.J).setTimeoutAfter(cVar.K).setGroupAlertBehavior(cVar.L);
            if (cVar.y) {
                this.f648a.setColorized(cVar.x);
            }
        }
    }

    @Override // android.support.v4.app.y
    public Notification.Builder a() {
        return this.f648a;
    }

    public Notification b() {
        Bundle bundleA;
        RemoteViews remoteViewsD;
        RemoteViews remoteViewsC;
        z.d dVar = this.f649b.n;
        if (dVar != null) {
            dVar.a(this);
        }
        RemoteViews remoteViewsB = dVar != null ? dVar.b(this) : null;
        Notification notificationC = c();
        if (remoteViewsB != null) {
            notificationC.contentView = remoteViewsB;
        } else if (this.f649b.E != null) {
            notificationC.contentView = this.f649b.E;
        }
        if (Build.VERSION.SDK_INT >= 16 && dVar != null && (remoteViewsC = dVar.c(this)) != null) {
            notificationC.bigContentView = remoteViewsC;
        }
        if (Build.VERSION.SDK_INT >= 21 && dVar != null && (remoteViewsD = this.f649b.n.d(this)) != null) {
            notificationC.headsUpContentView = remoteViewsD;
        }
        if (Build.VERSION.SDK_INT >= 16 && dVar != null && (bundleA = z.a(notificationC)) != null) {
            dVar.a(bundleA);
        }
        return notificationC;
    }

    private void a(z.a aVar) {
        Bundle bundle;
        if (Build.VERSION.SDK_INT >= 20) {
            Notification.Action.Builder builder = new Notification.Action.Builder(aVar.a(), aVar.b(), aVar.c());
            if (aVar.f() != null) {
                for (RemoteInput remoteInput : ae.a(aVar.f())) {
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
            builder.addExtras(bundle);
            this.f648a.addAction(builder.build());
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.e.add(ab.a(this.f648a, aVar));
        }
    }

    protected Notification c() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f648a.build();
        }
        if (Build.VERSION.SDK_INT >= 24) {
            Notification notificationBuild = this.f648a.build();
            if (this.g != 0) {
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & 512) != 0 && this.g == 2) {
                    a(notificationBuild);
                }
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & 512) == 0 && this.g == 1) {
                    a(notificationBuild);
                    return notificationBuild;
                }
                return notificationBuild;
            }
            return notificationBuild;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f648a.setExtras(this.f);
            Notification notificationBuild2 = this.f648a.build();
            if (this.f650c != null) {
                notificationBuild2.contentView = this.f650c;
            }
            if (this.f651d != null) {
                notificationBuild2.bigContentView = this.f651d;
            }
            if (this.h != null) {
                notificationBuild2.headsUpContentView = this.h;
            }
            if (this.g != 0) {
                if (notificationBuild2.getGroup() != null && (notificationBuild2.flags & 512) != 0 && this.g == 2) {
                    a(notificationBuild2);
                }
                if (notificationBuild2.getGroup() != null && (notificationBuild2.flags & 512) == 0 && this.g == 1) {
                    a(notificationBuild2);
                    return notificationBuild2;
                }
                return notificationBuild2;
            }
            return notificationBuild2;
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f648a.setExtras(this.f);
            Notification notificationBuild3 = this.f648a.build();
            if (this.f650c != null) {
                notificationBuild3.contentView = this.f650c;
            }
            if (this.f651d != null) {
                notificationBuild3.bigContentView = this.f651d;
            }
            if (this.g != 0) {
                if (notificationBuild3.getGroup() != null && (notificationBuild3.flags & 512) != 0 && this.g == 2) {
                    a(notificationBuild3);
                }
                if (notificationBuild3.getGroup() != null && (notificationBuild3.flags & 512) == 0 && this.g == 1) {
                    a(notificationBuild3);
                    return notificationBuild3;
                }
                return notificationBuild3;
            }
            return notificationBuild3;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            SparseArray<Bundle> sparseArrayA = ab.a(this.e);
            if (sparseArrayA != null) {
                this.f.putSparseParcelableArray("android.support.actionExtras", sparseArrayA);
            }
            this.f648a.setExtras(this.f);
            Notification notificationBuild4 = this.f648a.build();
            if (this.f650c != null) {
                notificationBuild4.contentView = this.f650c;
            }
            if (this.f651d != null) {
                notificationBuild4.bigContentView = this.f651d;
                return notificationBuild4;
            }
            return notificationBuild4;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            Notification notificationBuild5 = this.f648a.build();
            Bundle bundleA = z.a(notificationBuild5);
            Bundle bundle = new Bundle(this.f);
            for (String str : this.f.keySet()) {
                if (bundleA.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            bundleA.putAll(bundle);
            SparseArray<Bundle> sparseArrayA2 = ab.a(this.e);
            if (sparseArrayA2 != null) {
                z.a(notificationBuild5).putSparseParcelableArray("android.support.actionExtras", sparseArrayA2);
            }
            if (this.f650c != null) {
                notificationBuild5.contentView = this.f650c;
            }
            if (this.f651d != null) {
                notificationBuild5.bigContentView = this.f651d;
            }
            return notificationBuild5;
        }
        return this.f648a.getNotification();
    }

    private void a(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }
}
