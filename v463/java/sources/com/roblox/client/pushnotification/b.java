package com.roblox.client.pushnotification;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import androidx.core.app.i;
import androidx.core.app.m;
import com.roblox.client.o;
import com.roblox.client.pushnotification.notificationreceivers.ChatMessageNotificationReceiver;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends a<com.roblox.client.pushnotification.b.b> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f6795c = "key_reply_message";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f6796b;

    @Override // com.roblox.client.pushnotification.a
    protected String a(int i) {
        return i == 2 ? "chat_message_received" : "chat_message_cleared";
    }

    @Override // com.roblox.client.pushnotification.a
    protected String f() {
        return "ChatNewMessage";
    }

    public b(long j) {
        this.f6796b = j;
    }

    @Override // com.roblox.client.pushnotification.b.e.a
    public boolean a(com.roblox.client.pushnotification.b.b bVar, com.roblox.client.pushnotification.b.b bVar2) {
        return bVar.g() == bVar2.g();
    }

    @Override // com.roblox.client.pushnotification.a, com.roblox.client.pushnotification.i
    public void a(Context context, com.roblox.client.pushnotification.b.b bVar) {
        this.f6783a.b("FAILURE_NOTIFICATION_ID");
        super.a(context, bVar);
    }

    @Override // com.roblox.client.pushnotification.a
    public int d() {
        return (int) this.f6796b;
    }

    @Override // com.roblox.client.pushnotification.a
    public long e() {
        return ((com.roblox.client.pushnotification.b.b) this.f6783a.get(0)).e();
    }

    @Override // com.roblox.client.pushnotification.a
    protected String b(Context context) {
        return a(this.f6783a);
    }

    private String h() {
        com.roblox.client.pushnotification.b.b bVarC = c();
        if (bVarC != null) {
            return a(bVarC);
        }
        return null;
    }

    private String a(List<com.roblox.client.pushnotification.b.b> list) {
        ArrayList arrayList = new ArrayList(list);
        String strA = null;
        if (arrayList.size() > 0) {
            for (int i = r5 - 1; i >= 0; i--) {
                com.roblox.client.pushnotification.b.b bVar = (com.roblox.client.pushnotification.b.b) arrayList.get(i);
                if (!(bVar instanceof com.roblox.client.pushnotification.b.a)) {
                    strA = strA == null ? a(bVar) : a(bVar) + "\n" + strA;
                }
            }
        }
        return strA;
    }

    private String a(com.roblox.client.pushnotification.b.b bVar) {
        if (!bVar.l().equals("OneToOneConversation")) {
            if (com.roblox.client.m.c.a().cQ()) {
                return bVar.k() + ": " + bVar.h();
            }
            return bVar.i() + ": " + bVar.h();
        }
        return bVar.h();
    }

    @Override // com.roblox.client.pushnotification.a
    protected String a(Context context) {
        return c().f();
    }

    @Override // com.roblox.client.pushnotification.a
    protected Class<?> g() {
        return ChatMessageNotificationReceiver.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.roblox.client.pushnotification.a
    public Intent a(Intent intent, com.roblox.client.pushnotification.b.b bVar) {
        intent.putExtra("EXTRA_CONVERSATION_ID", this.f6796b);
        intent.putExtra("EXTRA_CATEGORY", bVar.m());
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.roblox.client.pushnotification.a
    public Intent b(Intent intent, com.roblox.client.pushnotification.b.b bVar) {
        intent.putExtra("EXTRA_CONVERSATION_ID", this.f6796b);
        intent.putExtra("EXTRA_CATEGORY", bVar.m());
        return intent;
    }

    @Override // com.roblox.client.pushnotification.a
    protected i.c a(Context context, boolean z, Bitmap bitmap) {
        i.c cVarA = super.a(context, z, bitmap);
        com.roblox.client.pushnotification.b.b bVarC = c();
        if (bVarC instanceof com.roblox.client.pushnotification.b.a) {
            return a(context, cVarA, bVarC.f(), ((com.roblox.client.pushnotification.b.a) bVarC).a());
        }
        cVarA.b(h());
        return b(context, cVarA);
    }

    private i.c b(Context context, i.c cVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            String string = context.getString(o.j.Notifications_PushNotifications_Action_Reply);
            cVar.a(new i.a.C0027a(o.e.chat_notification_reply, string, a(c(), context)).a(new m.a(f6795c).a(string).a()).a(true).a());
        }
        return cVar;
    }

    private i.c a(Context context, i.c cVar, String str, boolean z) {
        String str2 = String.format(context.getString(o.j.Notifications_PushNotifications_Label_DirectChatReplySendingFailed), str);
        if (z) {
            str2 = String.format(context.getString(o.j.Notifications_PushNotifications_Label_DirectChatReplyMsgModerated), str);
        }
        cVar.b(str2);
        cVar.a((Bitmap) null);
        cVar.a((CharSequence) context.getString(o.j.Notifications_PushNotifications_Label_DirectChatReplyMessageNotDelivered));
        cVar.a(new i.b().a(str2));
        return cVar;
    }

    private PendingIntent a(com.roblox.client.pushnotification.b.b bVar, Context context) {
        if (bVar == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        Intent intent = new Intent(context, (Class<?>) ChatMessageNotificationReceiver.class);
        intent.setAction("chat_message_replied");
        intent.putExtra("EXTRA_CONVERSATION_ID", bVar.d());
        intent.putExtra("EXTRA_CATEGORY", bVar.m());
        intent.putExtra("EXTRA_CONVERSATION_TITLE", bVar.f());
        intent.putExtra("EXTRA_NOTIFICATION_ID", bVar.b());
        intent.putExtra("EXTRA_MESSAGE_ID", bVar.g());
        return PendingIntent.getBroadcast(context, (int) bVar.d(), intent, 268435456);
    }

    public static CharSequence a(Intent intent) {
        Bundle bundleA = androidx.core.app.m.a(intent);
        if (bundleA != null) {
            return bundleA.getCharSequence(f6795c);
        }
        return null;
    }
}
