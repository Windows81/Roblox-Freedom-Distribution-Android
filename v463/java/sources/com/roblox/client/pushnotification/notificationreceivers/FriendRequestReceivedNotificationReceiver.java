package com.roblox.client.pushnotification.notificationreceivers;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.widget.RemoteViews;
import android.widget.Toast;
import androidx.core.app.i;
import c.ad;
import com.roblox.client.ae.k;
import com.roblox.client.o;
import com.roblox.platform.i;
import e.b;
import e.d;
import e.l;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class FriendRequestReceivedNotificationReceiver extends a {
    @Override // com.roblox.client.pushnotification.notificationreceivers.a, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        String action = intent.getAction();
        if ("friend_request_received_accepted".equals(action)) {
            k.a("rbx.push", "FRRNR.onReceive() INTENT_ACTION_RECEIVED_FRIEND_REQUEST_ACCEPTED");
            a("FriendRequestReceived", context, intent, "Accept");
            a(context);
            a(context, 0);
            b(intent, context);
            return;
        }
        if ("friend_request_received_ignored".equals(action)) {
            a("FriendRequestReceived", context, intent, "Decline");
            c(intent, context);
        }
    }

    private void b(final Intent intent, final Context context) {
        long longExtra = intent.getLongExtra("EXTRA_NOTIFICATION_USER_ID", -1L);
        if (longExtra == -1) {
            a(context, intent);
        } else {
            i.a().d().a(longExtra).a(new d<ad>() { // from class: com.roblox.client.pushnotification.notificationreceivers.FriendRequestReceivedNotificationReceiver.1
                @Override // e.d
                public void a(b<ad> bVar, l<ad> lVar) {
                    com.roblox.platform.http.returntypes.b bVar2 = new com.roblox.platform.http.returntypes.b(lVar);
                    if (!bVar2.b()) {
                        int i = o.j.Notifications_PushNotifications_Response_UnableToCompleteAction;
                        String str = "code_" + bVar2.f7732a + "error_" + bVar2.c();
                        if (bVar2.f7732a == 401) {
                            i = o.j.Application_Logout_Response_SorryLoggedOut;
                            str = "unauthenticated";
                        }
                        a(i, str);
                    }
                    FriendRequestReceivedNotificationReceiver.this.a(context, intent);
                }

                @Override // e.d
                public void a(b<ad> bVar, Throwable th) {
                    a(o.j.Notifications_PushNotifications_Response_UnableToCompleteAction, "client_failure");
                    FriendRequestReceivedNotificationReceiver.this.a(context, intent);
                }

                private void a(int i, String str) {
                    Toast.makeText(context, i, 0).show();
                    FriendRequestReceivedNotificationReceiver friendRequestReceivedNotificationReceiver = FriendRequestReceivedNotificationReceiver.this;
                    Context context2 = context;
                    friendRequestReceivedNotificationReceiver.a(str, context2, intent, "Accept", com.roblox.client.ae.o.a(context2), true, "FriendRequestReceived");
                }
            });
        }
    }

    private void c(final Intent intent, final Context context) {
        long longExtra = intent.getLongExtra("EXTRA_NOTIFICATION_USER_ID", -1L);
        if (longExtra == -1) {
            a(context, 0);
            a(context);
        } else {
            i.a().d().b(longExtra).a(new d<ad>() { // from class: com.roblox.client.pushnotification.notificationreceivers.FriendRequestReceivedNotificationReceiver.2
                @Override // e.d
                public void a(b<ad> bVar, l<ad> lVar) {
                    com.roblox.platform.http.returntypes.b bVar2 = new com.roblox.platform.http.returntypes.b(lVar);
                    if (bVar2.b()) {
                        ((NotificationManager) context.getSystemService("notification")).notify(0, new i.c(context, "channel_general").a(o.e.ic_launcher_transparent).a(new RemoteViews(context.getPackageName(), o.g.friend_request_ignored_layout)).a(true).b());
                        new Handler().postDelayed(new Runnable() { // from class: com.roblox.client.pushnotification.notificationreceivers.FriendRequestReceivedNotificationReceiver.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                a();
                            }
                        }, 6000L);
                        return;
                    }
                    int i = o.j.Notifications_PushNotifications_Response_UnableToCompleteAction;
                    String str = "code_" + bVar2.f7732a + "error_" + bVar2.c();
                    if (bVar2.f7732a == 401) {
                        i = o.j.Application_Logout_Response_SorryLoggedOut;
                        str = "unauthenticated";
                    }
                    a(i, str);
                    a();
                }

                @Override // e.d
                public void a(b<ad> bVar, Throwable th) {
                    a(o.j.Notifications_PushNotifications_Response_UnableToCompleteAction, "client_failure");
                    a();
                }

                private void a(int i, String str) {
                    Toast.makeText(context, i, 0).show();
                    FriendRequestReceivedNotificationReceiver friendRequestReceivedNotificationReceiver = FriendRequestReceivedNotificationReceiver.this;
                    Context context2 = context;
                    friendRequestReceivedNotificationReceiver.a(str, context2, intent, "Decline", com.roblox.client.ae.o.a(context2), false, "FriendRequestReceived");
                }

                /* JADX INFO: Access modifiers changed from: private */
                public void a() {
                    FriendRequestReceivedNotificationReceiver.this.a(context, 0);
                    FriendRequestReceivedNotificationReceiver.this.a(context);
                }
            });
        }
    }

    @Override // com.roblox.client.pushnotification.notificationreceivers.a
    protected Intent a(Context context, Intent intent, Intent intent2) {
        intent.putExtra("EXTRA_NOTIFICATION_TYPE", "FriendRequestReceived");
        intent.putExtra("EXTRA_NOTIFICATION_USER_ID", intent2.getLongExtra("EXTRA_NOTIFICATION_USER_ID", -1L));
        return intent;
    }
}
