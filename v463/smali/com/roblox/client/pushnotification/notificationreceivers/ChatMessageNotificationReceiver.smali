.class public Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;
.super Lcom/roblox/client/pushnotification/notificationreceivers/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/notificationreceivers/a;-><init>()V

    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In markChatNotificationAsRead(), conversationId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,messageId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.push"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lcom/roblox/client/r/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/roblox/client/r/a;-><init>(JLjava/lang/String;Lcom/roblox/client/r/a$a;)V

    .line 51
    invoke-static {}, Lcom/roblox/client/s/g;->a()Lcom/birbit/android/jobqueue/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/i;->a(Lcom/birbit/android/jobqueue/g;)V

    return-void
.end method

.method private a(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 55
    new-instance v0, Lcom/roblox/client/r/b;

    new-instance v8, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-wide v5, p1

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;-><init>(Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {v0, p1, p2, p3, v8}, Lcom/roblox/client/r/b;-><init>(JLjava/lang/String;Lcom/roblox/client/r/b$a;)V

    .line 65
    invoke-static {}, Lcom/roblox/client/s/g;->a()Lcom/birbit/android/jobqueue/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/i;->a(Lcom/birbit/android/jobqueue/g;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    const-string p1, "EXTRA_NOTIFICATION_TYPE"

    const-string v0, "ChatNewMessage"

    .line 89
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "EXTRA_CONVERSATION_ID"

    const-wide/16 v0, -0x1

    .line 90
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object p2
.end method

.method protected b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string v0, "EXTRA_CATEGORY"

    .line 70
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/pushnotification/o;->c(Ljava/lang/String;)V

    const-string v3, "dismissed"

    const/4 v6, 0x0

    const-string v7, "ChatNewMessage"

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    .line 74
    invoke-virtual/range {v2 .. v7}, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;)V

    return-void
.end method

.method protected c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string v0, "EXTRA_CATEGORY"

    .line 79
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/pushnotification/o;->c(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v3, "clicked"

    const/4 v6, 0x1

    const-string v7, "ChatNewMessage"

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    .line 84
    invoke-virtual/range {v2 .. v7}, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 21
    invoke-super {p0, p1, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chat_message_replied"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rbx.push"

    const-string v1, "CMNR.onReceive() INTENT_ACTION_CHAT_MESSAGE_REPLIED"

    .line 27
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    const-string v2, "EXTRA_CONVERSATION_ID"

    .line 28
    invoke-virtual {p2, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v2, v0

    .line 29
    invoke-virtual {p0, p1, v2}, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;->a(Landroid/content/Context;I)V

    .line 31
    invoke-static {p2}, Lcom/roblox/client/pushnotification/b;->a(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "EXTRA_CATEGORY"

    .line 33
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "EXTRA_CONVERSATION_TITLE"

    .line 34
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "EXTRA_MESSAGE_ID"

    .line 35
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 37
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-wide v4, v0

    move-object v7, p1

    move-object v8, v10

    invoke-direct/range {v3 .. v9}, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;->a(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/roblox/client/pushnotification/o;->c(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, v0, v1, v11}, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;->a(JLjava/lang/String;)V

    const/4 v7, 0x1

    const-string v4, "chat message replied"

    const-string v8, "ChatNewMessage"

    move-object v5, p1

    move-object v6, p2

    .line 42
    invoke-virtual/range {v3 .. v8}, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
