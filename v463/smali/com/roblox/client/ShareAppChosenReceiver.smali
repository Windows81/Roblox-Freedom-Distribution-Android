.class public Lcom/roblox/client/ShareAppChosenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "android.intent.extra.CHOSEN_COMPONENT"

    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    instance-of p2, p1, Landroid/content/ComponentName;

    if-eqz p2, :cond_0

    .line 21
    check-cast p1, Landroid/content/ComponentName;

    .line 22
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/roblox/client/z/b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
