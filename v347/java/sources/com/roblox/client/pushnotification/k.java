package com.roblox.client.pushnotification;

import android.content.Context;
import android.content.Intent;
import com.roblox.client.h;
import com.roblox.client.pushnotification.notificationreceivers.PrivateMessageReceivedNotificationReceiver;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class k extends a<com.roblox.client.pushnotification.b.f> {
    @Override // com.roblox.client.pushnotification.b.e.a
    public boolean a(com.roblox.client.pushnotification.b.f fVar, com.roblox.client.pushnotification.b.f fVar2) {
        return fVar.a() == fVar2.a();
    }

    @Override // com.roblox.client.pushnotification.a
    public int d() {
        return 2;
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
    public long e() {
        return ((com.roblox.client.pushnotification.b.f) this.f7636a.get(this.f7636a.size() - 1)).e();
    }

    @Override // com.roblox.client.pushnotification.a
    protected String b(Context context) {
        return this.f7636a.size() == 1 ? String.format(context.getResources().getString(h.a.Notifications_PushNotifications_Label_SentPrivateMessage), c().d()) : String.format(context.getResources().getString(h.a.Notifications_PushNotifications_Label_NewPrivateMessages), String.valueOf(this.f7636a.size()));
    }

    @Override // com.roblox.client.pushnotification.a
    protected String f() {
        return "PrivateMessageReceived";
    }

    @Override // com.roblox.client.pushnotification.a
    protected String a(int i) {
        return i == 2 ? "private_message_received" : "private_message_received_cleared";
    }

    @Override // com.roblox.client.pushnotification.a
    protected Class<?> g() {
        return PrivateMessageReceivedNotificationReceiver.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.roblox.client.pushnotification.a
    public Intent a(Intent intent, com.roblox.client.pushnotification.b.f fVar) {
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.roblox.client.pushnotification.a
    public Intent b(Intent intent, com.roblox.client.pushnotification.b.f fVar) {
        if (this.f7636a.size() > 1) {
            intent.putExtra("EXTRA_CATEGORY", "PrivateMessageReceived");
            intent.putExtra("EXTRA_STACKED_NOTIFICATION", true);
        } else {
            intent.putExtra("EXTRA_CONVERSATION_ID", fVar.a());
            intent.putExtra("EXTRA_STACKED_NOTIFICATION", false);
        }
        return intent;
    }
}
