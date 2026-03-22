package com.roblox.client.pushnotification;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.widget.RemoteViews;
import androidx.core.app.i;
import com.roblox.client.o;
import com.roblox.client.pushnotification.notificationreceivers.FriendRequestReceivedNotificationReceiver;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f extends a<com.roblox.client.pushnotification.b.d> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.roblox.client.pushnotification.a
    public Intent a(Intent intent, com.roblox.client.pushnotification.b.d dVar) {
        return intent;
    }

    @Override // com.roblox.client.pushnotification.a
    protected String a(int i) {
        return i == 2 ? "friend_request_received" : "friend_request_received_cleared";
    }

    @Override // com.roblox.client.pushnotification.a
    public int d() {
        return 0;
    }

    @Override // com.roblox.client.pushnotification.a
    protected String f() {
        return "FriendRequestReceived";
    }

    @Override // com.roblox.client.pushnotification.b.e.a
    public boolean a(com.roblox.client.pushnotification.b.d dVar, com.roblox.client.pushnotification.b.d dVar2) {
        return dVar.a() == dVar2.a();
    }

    @Override // com.roblox.client.pushnotification.a
    protected void a(Context context, i.c cVar) {
        if (this.f6783a.isEmpty()) {
            return;
        }
        if (this.f6783a.size() == 1) {
            a(context, cVar, (com.roblox.client.pushnotification.b.d) this.f6783a.get(0));
        }
        Notification notificationB = cVar.b();
        if (this.f6783a.size() > 1 && Build.VERSION.SDK_INT < 21) {
            a(notificationB);
        }
        ((NotificationManager) context.getSystemService("notification")).notify(0, notificationB);
    }

    private void a(Notification notification) {
        RemoteViews remoteViews = notification.bigContentView;
        if (remoteViews != null) {
            Resources system = Resources.getSystem();
            int identifier = system.getIdentifier("actions", "id", "android");
            int identifier2 = system.getIdentifier("action_divider", "id", "android");
            if (identifier == 0 || identifier2 == 0) {
                return;
            }
            remoteViews.removeAllViews(identifier);
            remoteViews.setViewVisibility(identifier, 8);
            remoteViews.setViewVisibility(identifier2, 8);
        }
    }

    private i.c a(Context context, i.c cVar, com.roblox.client.pushnotification.b.d dVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            cVar.a(o.e.accept_friend_request, context.getString(o.j.Notifications_PushNotifications_Action_Accept), a(dVar, context, "friend_request_received_accepted"));
            cVar.a(o.e.ignore_friend_request, context.getString(o.j.Notifications_PushNotifications_Action_Ignore), a(dVar, context, "friend_request_received_ignored"));
        } else {
            cVar.a(o.e.accept_friend_request_pre_lolipop, context.getString(o.j.Notifications_PushNotifications_Action_Accept), a(dVar, context, "friend_request_received_accepted"));
            cVar.a(o.e.ignore_friend_request_pre_lolipop, context.getString(o.j.Notifications_PushNotifications_Action_Ignore), a(dVar, context, "friend_request_received_ignored"));
        }
        return cVar;
    }

    private PendingIntent a(com.roblox.client.pushnotification.b.d dVar, Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) FriendRequestReceivedNotificationReceiver.class);
        intent.setAction(str);
        intent.putExtra("EXTRA_NOTIFICATION_USER_ID", dVar.a());
        intent.putExtra("EXTRA_NOTIFICATION_ID", dVar.b());
        return PendingIntent.getBroadcast(context, 0, intent, 268435456);
    }

    @Override // com.roblox.client.pushnotification.a
    protected long e() {
        return ((com.roblox.client.pushnotification.b.d) this.f6783a.get(0)).a();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.roblox.client.pushnotification.a
    protected String b(Context context) {
        if (this.f6783a.size() == 1) {
            return String.format(context.getResources().getString(o.j.Notifications_PushNotifications_Messages_SingleFriendSentRequest), a((com.roblox.client.pushnotification.b.d) this.f6783a.get(this.f6783a.size() - 1)));
        }
        if (this.f6783a.size() == 2) {
            return String.format(context.getResources().getString(o.j.Notifications_PushNotifications_Label_TwoFriendsSentRequests), a((com.roblox.client.pushnotification.b.d) this.f6783a.get(this.f6783a.size() - 1)), a((com.roblox.client.pushnotification.b.d) this.f6783a.get(this.f6783a.size() - 2)));
        }
        if (this.f6783a.size() == 3) {
            return String.format(context.getResources().getString(o.j.Notifications_PushNotifications_Label_ThreeFriendsSentRequests), a((com.roblox.client.pushnotification.b.d) this.f6783a.get(this.f6783a.size() - 1)), a((com.roblox.client.pushnotification.b.d) this.f6783a.get(this.f6783a.size() - 2)));
        }
        if (this.f6783a.size() > 3) {
            return String.format(context.getResources().getString(o.j.Notifications_PushNotifications_Label_MoreThanThreeFriendsSentRequests), a((com.roblox.client.pushnotification.b.d) this.f6783a.get(this.f6783a.size() - 1)), a((com.roblox.client.pushnotification.b.d) this.f6783a.get(this.f6783a.size() - 2)));
        }
        return null;
    }

    @Override // com.roblox.client.pushnotification.a
    protected Class<?> g() {
        return FriendRequestReceivedNotificationReceiver.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.roblox.client.pushnotification.a
    public Intent b(Intent intent, com.roblox.client.pushnotification.b.d dVar) {
        if (this.f6783a.size() > 1) {
            intent.putExtra("EXTRA_CATEGORY", "FriendRequestReceived");
            intent.putExtra("EXTRA_STACKED_NOTIFICATION", true);
        } else {
            intent.putExtra("EXTRA_NOTIFICATION_USER_ID", dVar.a());
            intent.putExtra("EXTRA_STACKED_NOTIFICATION", false);
        }
        return intent;
    }

    private String a(com.roblox.client.pushnotification.b.d dVar) {
        return dVar.d();
    }
}
