package com.roblox.client.pushnotification.notificationreceivers;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.support.v4.app.z;
import android.widget.RemoteViews;
import android.widget.Toast;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.http.h;
import com.roblox.client.http.i;
import com.roblox.client.http.j;
import com.roblox.client.http.post.FriendRequestActionRequestBody;
import com.roblox.client.util.g;
import com.roblox.client.util.k;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class FriendRequestReceivedNotificationReceiver extends a {
    @Override // com.roblox.client.pushnotification.notificationreceivers.a, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        String action = intent.getAction();
        if ("friend_request_received_accepted".equals(action)) {
            g.a("rbx.push", "FRRNR.onReceive() INTENT_ACTION_RECEIVED_FRIEND_REQUEST_ACCEPTED");
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
            new h().a(RobloxSettings.acceptFriendRequestUrl(), new FriendRequestActionRequestBody(longExtra), null, new i() { // from class: com.roblox.client.pushnotification.notificationreceivers.FriendRequestReceivedNotificationReceiver.1
                @Override // com.roblox.client.http.i, com.roblox.client.http.l
                public void a(j jVar) {
                    try {
                        if (jVar.b() == 401) {
                            Toast.makeText(context, context.getString(R.string.Application_Logout_Response_SorryLoggedOut), 0).show();
                            FriendRequestReceivedNotificationReceiver.this.a("unauthenticated", context, intent, "Accept", k.c(context), true, "FriendRequestReceived");
                        }
                        if (new JSONObject(jVar.a()).getString("success").equals("true")) {
                            FriendRequestReceivedNotificationReceiver.this.a(context, intent);
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                        FriendRequestReceivedNotificationReceiver.this.a(context, intent);
                    }
                }
            }).c();
        }
    }

    private void c(final Intent intent, final Context context) {
        long longExtra = intent.getLongExtra("EXTRA_NOTIFICATION_USER_ID", -1L);
        if (longExtra == -1) {
            a(context, 0);
            a(context);
        } else {
            new h().a(RobloxSettings.declineFriendRequest(), new FriendRequestActionRequestBody(longExtra), null, new i() { // from class: com.roblox.client.pushnotification.notificationreceivers.FriendRequestReceivedNotificationReceiver.2
                @Override // com.roblox.client.http.i, com.roblox.client.http.l
                public void a(j jVar) {
                    z.c cVarA = new z.c(context, "channel_general").a(R.drawable.ic_launcher_transparent).a(new RemoteViews(context.getPackageName(), R.layout.friend_request_ignored_layout)).a(true);
                    try {
                        if (jVar.b() == 401) {
                            Toast.makeText(context, context.getString(R.string.Application_Logout_Response_SorryLoggedOut), 0).show();
                            FriendRequestReceivedNotificationReceiver.this.a("unauthenticated", context, intent, "Decline", k.c(context), false, "FriendRequestReceived");
                        }
                        if (new JSONObject(jVar.a()).getString("success").equals("true")) {
                            ((NotificationManager) context.getSystemService("notification")).notify(0, cVarA.a());
                            new Handler().postDelayed(new Runnable() { // from class: com.roblox.client.pushnotification.notificationreceivers.FriendRequestReceivedNotificationReceiver.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    FriendRequestReceivedNotificationReceiver.this.a(context, 0);
                                    FriendRequestReceivedNotificationReceiver.this.a(context);
                                }
                            }, 6000L);
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                        FriendRequestReceivedNotificationReceiver.this.a(context, 0);
                        FriendRequestReceivedNotificationReceiver.this.a(context);
                    }
                }
            }).c();
        }
    }

    @Override // com.roblox.client.pushnotification.notificationreceivers.a
    protected Intent a(Context context, Intent intent, Intent intent2) {
        intent.putExtra("EXTRA_NOTIFICATION_TYPE", "FriendRequestReceived");
        intent.putExtra("EXTRA_NOTIFICATION_USER_ID", intent2.getLongExtra("EXTRA_NOTIFICATION_USER_ID", -1L));
        return intent;
    }
}
