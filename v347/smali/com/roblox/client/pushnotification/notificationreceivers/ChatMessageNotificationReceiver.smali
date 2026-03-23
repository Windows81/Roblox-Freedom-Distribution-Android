.class public Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;
.super Lcom/roblox/client/pushnotification/notificationreceivers/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/notificationreceivers/a;-><init>()V

    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 49
    const-string v0, "rbx.push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In markChatNotificationAsRead(), conversationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lcom/roblox/client/h/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/roblox/client/h/g;-><init>(JLjava/lang/String;Lcom/roblox/client/h/g$a;)V

    .line 51
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 52
    return-void
.end method

.method private a(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 55
    new-instance v7, Lcom/roblox/client/h/h;

    new-instance v0, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;-><init>(Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {v7, p1, p2, p3, v0}, Lcom/roblox/client/h/h;-><init>(JLjava/lang/String;Lcom/roblox/client/h/h$a;)V

    .line 65
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 89
    const-string v0, "EXTRA_NOTIFICATION_TYPE"

    const-string v1, "ChatNewMessage"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v0, "EXTRA_CONVERSATION_ID"

    const-string v1, "EXTRA_CONVERSATION_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 91
    return-object p2
.end method

.method protected b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 70
    const-string v0, "EXTRA_CATEGORY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/pushnotification/o;->c(Ljava/lang/String;)V

    .line 74
    const-string v1, "dismissed"

    const/4 v4, 0x0

    const-string v5, "ChatNewMessage"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;)V

    .line 75
    return-void
.end method

.method protected c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 79
    const-string v0, "EXTRA_CATEGORY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/pushnotification/o;->c(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 84
    const-string v1, "clicked"

    const/4 v4, 0x1

    const-string v5, "ChatNewMessage"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;)V

    .line 85
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 23
    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v1, "chat_message_replied"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "rbx.push"

    const-string v1, "CMNR.onReceive() INTENT_ACTION_CHAT_MESSAGE_REPLIED"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v0, "EXTRA_CONVERSATION_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 29
    long-to-int v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;->a(Landroid/content/Context;I)V

    .line 31
    invoke-static {p2}, Lcom/roblox/client/pushnotification/b;->a(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    const-string v1, "EXTRA_CATEGORY"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 34
    const-string v1, "EXTRA_CONVERSATION_TITLE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 35
    const-string v1, "EXTRA_MESSAGE_ID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 37
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;->a(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/roblox/client/pushnotification/o;->c(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, v2, v3, v8}, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;->a(JLjava/lang/String;)V

    .line 42
    const-string v1, "chat message replied"

    const/4 v4, 0x1

    const-string v5, "ChatNewMessage"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method
