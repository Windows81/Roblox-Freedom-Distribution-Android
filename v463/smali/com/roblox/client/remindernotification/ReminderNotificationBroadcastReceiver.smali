.class public Lcom/roblox/client/remindernotification/ReminderNotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 16
    invoke-static {p1, p2}, Lcom/roblox/client/remindernotification/ReminderNotificationService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
