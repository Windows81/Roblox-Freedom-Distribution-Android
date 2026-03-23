.class public Lcom/roblox/client/remindernotification/ReminderNotificationService;
.super Landroid/support/v4/app/u;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/u;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 33
    const-string v0, "ReminderNotificationHelper"

    const-string v1, "enqueuingWork."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-class v0, Lcom/roblox/client/remindernotification/ReminderNotificationService;

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1, p1}, Lcom/roblox/client/remindernotification/ReminderNotificationService;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 39
    const-string v0, "ReminderNotificationHelper"

    const-string v1, "onHandleWord."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/roblox/client/remindernotification/ReminderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {}, Lcom/roblox/client/i/c;->a()Lcom/roblox/client/i/c;

    move-result-object v2

    sget-object v3, Lcom/roblox/client/i/c$b;->b:Lcom/roblox/client/i/c$b;

    invoke-virtual {v2, v0, v3}, Lcom/roblox/client/i/c;->a(Landroid/content/Context;Lcom/roblox/client/i/c$b;)V

    .line 47
    invoke-static {v0}, Lcom/roblox/client/http/b;->a(Landroid/content/Context;)V

    .line 49
    const-string v2, "reminder_notification_dismissed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    const-string v0, "ReminderNotificationHelper"

    const-string v1, "Reminder notification dismissed."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v0, "reminderNotificationDismissed"

    const-string v1, "reminderNotification"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    invoke-static {}, Lcom/roblox/client/i;->a()V

    .line 71
    return-void

    .line 52
    :cond_1
    const-string v2, "reminder_notification_alarm_triggered"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    const-string v1, "ReminderNotification"

    const-string v2, "AlarmTriggered"

    invoke-static {v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "ReminderNotificationHelper"

    const-string v2, "Trying to show the notification."

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {v0}, Lcom/roblox/client/b;->b(Landroid/content/Context;)V

    .line 61
    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->c(Landroid/content/Context;)V

    .line 62
    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 63
    :cond_2
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "ReminderNotificationHelper"

    const-string v2, "Device rebooted, resetting the alarm."

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v1, "ReminderNotification"

    const-string v2, "deviceRebooted"

    invoke-static {v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "deviceBooted"

    const-string v2, "reminderNotification"

    invoke-static {v1, v2}, Lcom/roblox/client/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 75
    const-string v0, "ReminderNotificationHelper"

    const-string v1, "onStopCurrentWork."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v0, "ReminderNotification"

    const-string v1, "onStopCurrentWork."

    invoke-static {v0, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "reminderNotificationJobStopped"

    const-string v1, "reminderNotification"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/roblox/client/i;->a()V

    .line 79
    invoke-super {p0}, Landroid/support/v4/app/u;->a()Z

    move-result v0

    return v0
.end method
