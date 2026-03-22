package com.roblox.client.pushnotification;

import android.content.Context;
import android.content.Intent;
import com.roblox.client.h;
import com.roblox.client.pushnotification.notificationreceivers.FriendRequestAcceptedNotificationReceiver;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e extends a<com.roblox.client.pushnotification.b.c> {
    @Override // com.roblox.client.pushnotification.b.e.a
    public boolean a(com.roblox.client.pushnotification.b.c cVar, com.roblox.client.pushnotification.b.c cVar2) {
        return cVar.a() == cVar2.a();
    }

    @Override // com.roblox.client.pushnotification.a
    public int d() {
        return 1;
    }

    @Override // com.roblox.client.pushnotification.a
    protected long e() {
        return ((com.roblox.client.pushnotification.b.c) this.f7636a.get(0)).a();
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
        String strD = ((com.roblox.client.pushnotification.b.c) this.f7636a.get(this.f7636a.size() - 1)).d();
        String strD2 = this.f7636a.size() > 1 ? ((com.roblox.client.pushnotification.b.c) this.f7636a.get(this.f7636a.size() - 2)).d() : "";
        if (this.f7636a.size() == 1) {
            return String.format(context.getResources().getString(h.a.Notifications_PushNotifications_Label_SingleFriendAcceptedRequest), strD);
        }
        if (this.f7636a.size() == 2) {
            return String.format(context.getResources().getString(h.a.Notifications_PushNotifications_Label_TwoFriendsAcceptedRequests), strD, strD2);
        }
        if (this.f7636a.size() == 3) {
            return String.format(context.getResources().getString(h.a.Notifications_PushNotifications_Label_ThreeFriendsAcceptedRequests), strD, strD2);
        }
        if (this.f7636a.size() > 3) {
            return String.format(context.getResources().getString(h.a.Notifications_PushNotifications_Label_MoreThanThreeFriendsAcceptedRequests), strD, strD2);
        }
        return null;
    }

    @Override // com.roblox.client.pushnotification.a
    protected String f() {
        return "FriendRequestAccepted";
    }

    @Override // com.roblox.client.pushnotification.a
    protected String a(int i) {
        return i == 2 ? "friend_request_accepted" : "friend_request_accepted_cleared";
    }

    @Override // com.roblox.client.pushnotification.a
    protected Class<?> g() {
        return FriendRequestAcceptedNotificationReceiver.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.roblox.client.pushnotification.a
    public Intent a(Intent intent, com.roblox.client.pushnotification.b.c cVar) {
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.roblox.client.pushnotification.a
    public Intent b(Intent intent, com.roblox.client.pushnotification.b.c cVar) {
        if (this.f7636a.size() > 1) {
            intent.putExtra("EXTRA_NOTIFICATION_TYPE", "FriendRequestAccepted");
            intent.putExtra("EXTRA_CATEGORY", "FriendRequestAccepted");
            intent.putExtra("EXTRA_STACKED_NOTIFICATION", true);
        } else {
            intent.putExtra("EXTRA_NOTIFICATION_USER_ID", cVar.a());
            intent.putExtra("EXTRA_STACKED_NOTIFICATION", false);
        }
        return intent;
    }
}
