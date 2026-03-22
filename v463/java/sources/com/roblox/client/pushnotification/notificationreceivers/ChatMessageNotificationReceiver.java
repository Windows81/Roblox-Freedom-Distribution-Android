package com.roblox.client.pushnotification.notificationreceivers;

import android.content.Context;
import android.content.Intent;
import com.roblox.client.ae.k;
import com.roblox.client.pushnotification.b;
import com.roblox.client.pushnotification.h;
import com.roblox.client.pushnotification.o;
import com.roblox.client.r.b;
import com.roblox.client.s.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ChatMessageNotificationReceiver extends a {
    @Override // com.roblox.client.pushnotification.notificationreceivers.a, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        if (intent == null || !"chat_message_replied".equals(intent.getAction())) {
            return;
        }
        k.a("rbx.push", "CMNR.onReceive() INTENT_ACTION_CHAT_MESSAGE_REPLIED");
        long longExtra = intent.getLongExtra("EXTRA_CONVERSATION_ID", -1L);
        a(context, (int) longExtra);
        CharSequence charSequenceA = b.a(intent);
        if (charSequenceA != null) {
            String stringExtra = intent.getStringExtra("EXTRA_CATEGORY");
            String stringExtra2 = intent.getStringExtra("EXTRA_CONVERSATION_TITLE");
            String stringExtra3 = intent.getStringExtra("EXTRA_MESSAGE_ID");
            a(longExtra, charSequenceA.toString(), context, stringExtra, stringExtra2);
            o.a().c(stringExtra);
            a(longExtra, stringExtra3);
            a("chat message replied", context, intent, true, "ChatNewMessage");
        }
    }

    private void a(long j, String str) {
        k.a("rbx.push", "In markChatNotificationAsRead(), conversationId: " + j + " ,messageId: " + str);
        g.a().a(new com.roblox.client.r.a(j, str, null));
    }

    private void a(final long j, String str, final Context context, final String str2, final String str3) {
        g.a().a(new com.roblox.client.r.b(j, str, new b.a() { // from class: com.roblox.client.pushnotification.notificationreceivers.ChatMessageNotificationReceiver.1
            @Override // com.roblox.client.r.b.a
            public void a(String str4) {
            }

            @Override // com.roblox.client.r.b.a
            public void a(String str4, String str5) {
                new h().a(context, str2, j, str3, "Moderated".equals(str4));
            }
        }));
    }

    @Override // com.roblox.client.pushnotification.notificationreceivers.a
    protected void b(Context context, Intent intent) {
        o.a().c(intent.getStringExtra("EXTRA_CATEGORY"));
        a("dismissed", context, intent, false, "ChatNewMessage");
    }

    @Override // com.roblox.client.pushnotification.notificationreceivers.a
    protected void c(Context context, Intent intent) {
        o.a().c(intent.getStringExtra("EXTRA_CATEGORY"));
        a(context, intent);
        a("clicked", context, intent, true, "ChatNewMessage");
    }

    @Override // com.roblox.client.pushnotification.notificationreceivers.a
    protected Intent a(Context context, Intent intent, Intent intent2) {
        intent.putExtra("EXTRA_NOTIFICATION_TYPE", "ChatNewMessage");
        intent.putExtra("EXTRA_CONVERSATION_ID", intent2.getLongExtra("EXTRA_CONVERSATION_ID", -1L));
        return intent;
    }
}
