package com.roblox.client.pushnotification;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.ae;
import android.support.v4.app.z;
import com.roblox.client.R;
import com.roblox.client.pushnotification.notificationreceivers.ChatMessageNotificationReceiver;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b extends a<com.roblox.client.pushnotification.b.b> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f7647c = "key_reply_message";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f7648b;

    public b(long j) {
        this.f7648b = j;
    }

    @Override // com.roblox.client.pushnotification.b.e.a
    public boolean a(com.roblox.client.pushnotification.b.b bVar, com.roblox.client.pushnotification.b.b bVar2) {
        return bVar.g() == bVar2.g();
    }

    @Override // com.roblox.client.pushnotification.a, com.roblox.client.pushnotification.i
    public void a(Context context, com.roblox.client.pushnotification.b.b bVar) {
        this.f7636a.b("FAILURE_NOTIFICATION_ID");
        super.a(context, bVar);
    }

    @Override // com.roblox.client.pushnotification.a
    public int d() {
        return (int) this.f7648b;
    }

    @Override // com.roblox.client.pushnotification.a
    public long e() {
        return ((com.roblox.client.pushnotification.b.b) this.f7636a.get(0)).e();
    }

    @Override // com.roblox.client.pushnotification.a
    protected String b(Context context) {
        return a(this.f7636a);
    }

    private String h() {
        com.roblox.client.pushnotification.b.b bVarC = c();
        if (bVarC != null) {
            return a(bVarC);
        }
        return null;
    }

    private String a(List<com.roblox.client.pushnotification.b.b> list) {
        String strA;
        ArrayList arrayList = new ArrayList(list);
        String str = null;
        int size = arrayList.size();
        if (size > 0) {
            int i = size - 1;
            while (i >= 0) {
                com.roblox.client.pushnotification.b.b bVar = (com.roblox.client.pushnotification.b.b) arrayList.get(i);
                if (bVar instanceof com.roblox.client.pushnotification.b.a) {
                    strA = str;
                } else if (str == null) {
                    strA = a(bVar);
                } else {
                    strA = a(bVar) + "\n" + str;
                }
                i--;
                str = strA;
            }
        }
        return str;
    }

    private String a(com.roblox.client.pushnotification.b.b bVar) {
        return !bVar.j().equals("OneToOneConversation") ? bVar.i() + ": " + bVar.h() : bVar.h();
    }

    @Override // com.roblox.client.pushnotification.a
    protected String a(Context context) {
        return c().f();
    }

    @Override // com.roblox.client.pushnotification.a
    protected String f() {
        return "ChatNewMessage";
    }

    @Override // com.roblox.client.pushnotification.a
    protected String a(int i) {
        return i == 2 ? "chat_message_received" : "chat_message_cleared";
    }

    @Override // com.roblox.client.pushnotification.a
    protected Class<?> g() {
        return ChatMessageNotificationReceiver.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.roblox.client.pushnotification.a
    public Intent a(Intent intent, com.roblox.client.pushnotification.b.b bVar) {
        intent.putExtra("EXTRA_CONVERSATION_ID", this.f7648b);
        intent.putExtra("EXTRA_CATEGORY", bVar.k());
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.roblox.client.pushnotification.a
    public Intent b(Intent intent, com.roblox.client.pushnotification.b.b bVar) {
        intent.putExtra("EXTRA_CONVERSATION_ID", this.f7648b);
        intent.putExtra("EXTRA_CATEGORY", bVar.k());
        return intent;
    }

    @Override // com.roblox.client.pushnotification.a
    protected z.c a(Context context, boolean z, Bitmap bitmap) {
        z.c cVarA = super.a(context, z, bitmap);
        cVarA.c(android.support.v4.a.c.c(context, R.color.RbxRed4));
        com.roblox.client.pushnotification.b.b bVarC = c();
        if (bVarC instanceof com.roblox.client.pushnotification.b.a) {
            return a(context, cVarA, bVarC.f(), ((com.roblox.client.pushnotification.b.a) bVarC).a());
        }
        cVarA.b(h());
        return b(context, cVarA);
    }

    private z.c b(Context context, z.c cVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            String string = context.getString(R.string.Notifications_PushNotifications_Action_Reply);
            cVar.a(new z.a.C0016a(R.drawable.chat_notification_reply, string, a(c(), context)).a(new ae.a(f7647c).a(string).a()).a(true).a());
        }
        return cVar;
    }

    private z.c a(Context context, z.c cVar, String str, boolean z) {
        String str2 = String.format(context.getString(R.string.Notifications_PushNotifications_Label_DirectChatReplySendingFailed), str);
        if (z) {
            str2 = String.format(context.getString(R.string.Notifications_PushNotifications_Label_DirectChatReplyMsgModerated), str);
        }
        cVar.b(str2);
        cVar.a((Bitmap) null);
        cVar.a((CharSequence) context.getString(R.string.Notifications_PushNotifications_Label_DirectChatReplyMessageNotDelivered));
        cVar.a(new z.b().a(str2));
        return cVar;
    }

    private PendingIntent a(com.roblox.client.pushnotification.b.b bVar, Context context) {
        if (bVar == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        Intent intent = new Intent(context, (Class<?>) ChatMessageNotificationReceiver.class);
        intent.setAction("chat_message_replied");
        intent.putExtra("EXTRA_CONVERSATION_ID", bVar.d());
        intent.putExtra("EXTRA_CATEGORY", bVar.k());
        intent.putExtra("EXTRA_CONVERSATION_TITLE", bVar.f());
        intent.putExtra("EXTRA_NOTIFICATION_ID", bVar.b());
        intent.putExtra("EXTRA_MESSAGE_ID", bVar.g());
        return PendingIntent.getBroadcast(context, (int) bVar.d(), intent, 268435456);
    }

    public static CharSequence a(Intent intent) {
        Bundle bundleA = ae.a(intent);
        if (bundleA != null) {
            return bundleA.getCharSequence(f7647c);
        }
        return null;
    }
}
