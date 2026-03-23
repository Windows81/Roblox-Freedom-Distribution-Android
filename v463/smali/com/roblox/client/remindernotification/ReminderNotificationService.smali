.class public Lcom/roblox/client/remindernotification/ReminderNotificationService;
.super Landroidx/core/app/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/core/app/f;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "ReminderNotificationHelper"

    const-string v1, "enqueuingWork."

    .line 33
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-class v0, Lcom/roblox/client/remindernotification/ReminderNotificationService;

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1, p1}, Lcom/roblox/client/remindernotification/ReminderNotificationService;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "ReminderNotificationHelper"

    const-string v1, "onHandleWord."

    .line 39
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/roblox/client/remindernotification/ReminderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object v2

    sget-object v3, Lcom/roblox/client/s/c$b;->b:Lcom/roblox/client/s/c$b;

    invoke-virtual {v2, v1, v3}, Lcom/roblox/client/s/c;->a(Landroid/content/Context;Lcom/roblox/client/s/c$b;)V

    .line 47
    invoke-static {v1}, Lcom/roblox/client/http/b;->a(Landroid/content/Context;)V

    const-string v2, "reminder_notification_dismissed"

    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "reminderNotification"

    if-eqz v2, :cond_0

    const-string p1, "Reminder notification dismissed."

    .line 50
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "reminderNotificationDismissed"

    .line 51
    invoke-static {p1, v3}, Lcom/roblox/client/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "reminder_notification_alarm_triggered"

    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "ReminderNotification"

    if-eqz v2, :cond_1

    const-string p1, "AlarmTriggered"

    .line 53
    invoke-static {v4, p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Trying to show the notification."

    .line 54
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {v1}, Lcom/roblox/client/b;->b(Landroid/content/Context;)V

    .line 61
    invoke-static {v1}, Lcom/roblox/client/remindernotification/a;->c(Landroid/content/Context;)V

    .line 62
    invoke-static {v1}, Lcom/roblox/client/remindernotification/a;->d(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Device rebooted, resetting the alarm."

    .line 64
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "deviceRebooted"

    .line 65
    invoke-static {v4, p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "deviceBooted"

    .line 66
    invoke-static {p1, v3}, Lcom/roblox/client/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {v1}, Lcom/roblox/client/remindernotification/a;->a(Landroid/content/Context;)V

    .line 70
    :cond_2
    :goto_0
    invoke-static {}, Lcom/roblox/client/p;->a()V

    return-void
.end method

.method public a()Z
    .locals 2

    const-string v0, "ReminderNotificationHelper"

    const-string v1, "onStopCurrentWork."

    .line 75
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ReminderNotification"

    .line 76
    invoke-static {v0, v1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "reminderNotificationJobStopped"

    const-string v1, "reminderNotification"

    .line 77
    invoke-static {v0, v1}, Lcom/roblox/client/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/roblox/client/p;->a()V

    .line 79
    invoke-super {p0}, Landroidx/core/app/f;->a()Z

    move-result v0

    return v0
.end method
