.class public Lcom/roblox/client/pushnotification/b;
.super Lcom/roblox/client/pushnotification/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/client/pushnotification/a<",
        "Lcom/roblox/client/pushnotification/b/b;",
        ">;"
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String; = "key_reply_message"


# instance fields
.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/a;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/roblox/client/pushnotification/b;->b:J

    return-void
.end method

.method private a(Lcom/roblox/client/pushnotification/b/b;Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4

    if-eqz p1, :cond_0

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "chat_message_replied"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->d()J

    move-result-wide v1

    const-string v3, "EXTRA_CONVERSATION_ID"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 198
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_CATEGORY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_CONVERSATION_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_NOTIFICATION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_MESSAGE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->d()J

    move-result-wide v1

    long-to-int p1, v1

    const/high16 v1, 0x10000000

    invoke-static {p2, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroidx/core/app/i$c;Ljava/lang/String;Z)Landroidx/core/app/i$c;
    .locals 4

    .line 179
    sget v0, Lcom/roblox/client/o$j;->Notifications_PushNotifications_Label_DirectChatReplySendingFailed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 181
    sget p4, Lcom/roblox/client/o$j;->Notifications_PushNotifications_Label_DirectChatReplyMsgModerated:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p3, v0, v3

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_0
    invoke-virtual {p2, v0}, Landroidx/core/app/i$c;->b(Ljava/lang/CharSequence;)Landroidx/core/app/i$c;

    const/4 p3, 0x0

    .line 184
    invoke-virtual {p2, p3}, Landroidx/core/app/i$c;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/i$c;

    .line 185
    sget p3, Lcom/roblox/client/o$j;->Notifications_PushNotifications_Label_DirectChatReplyMessageNotDelivered:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/app/i$c;->a(Ljava/lang/CharSequence;)Landroidx/core/app/i$c;

    .line 187
    new-instance p1, Landroidx/core/app/i$b;

    invoke-direct {p1}, Landroidx/core/app/i$b;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/core/app/i$b;->a(Ljava/lang/CharSequence;)Landroidx/core/app/i$b;

    move-result-object p1

    .line 188
    invoke-virtual {p2, p1}, Landroidx/core/app/i$c;->a(Landroidx/core/app/i$d;)Landroidx/core/app/i$c;

    return-object p2
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1

    .line 208
    invoke-static {p0}, Landroidx/core/app/m;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 210
    sget-object v0, Lcom/roblox/client/pushnotification/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/roblox/client/pushnotification/b/b;)Ljava/lang/String;
    .locals 3

    .line 97
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneToOneConversation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cQ()Z

    move-result v0

    const-string v1, ": "

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 105
    :cond_1
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->h()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/roblox/client/pushnotification/b/b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 78
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/pushnotification/b/b;

    .line 80
    instance-of v3, v2, Lcom/roblox/client/pushnotification/b/a;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 87
    invoke-direct {p0, v2}, Lcom/roblox/client/pushnotification/b;->a(Lcom/roblox/client/pushnotification/b/b;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 89
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/roblox/client/pushnotification/b;->a(Lcom/roblox/client/pushnotification/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private b(Landroid/content/Context;Landroidx/core/app/i$c;)Landroidx/core/app/i$c;
    .locals 5

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 166
    sget v0, Lcom/roblox/client/o$j;->Notifications_PushNotifications_Action_Reply:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v1, Landroidx/core/app/m$a;

    sget-object v2, Lcom/roblox/client/pushnotification/b;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/core/app/m$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/core/app/m$a;->a(Ljava/lang/CharSequence;)Landroidx/core/app/m$a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/m$a;->a()Landroidx/core/app/m;

    move-result-object v1

    .line 169
    new-instance v2, Landroidx/core/app/i$a$a;

    sget v3, Lcom/roblox/client/o$e;->chat_notification_reply:I

    .line 170
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/b;->c()Lcom/roblox/client/pushnotification/b/m;

    move-result-object v4

    check-cast v4, Lcom/roblox/client/pushnotification/b/b;

    invoke-direct {p0, v4, p1}, Lcom/roblox/client/pushnotification/b;->a(Lcom/roblox/client/pushnotification/b/b;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v2, v3, v0, p1}, Landroidx/core/app/i$a$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 171
    invoke-virtual {v2, v1}, Landroidx/core/app/i$a$a;->a(Landroidx/core/app/m;)Landroidx/core/app/i$a$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/core/app/i$a$a;->a(Z)Landroidx/core/app/i$a$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/i$a$a;->a()Landroidx/core/app/i$a;

    move-result-object p1

    .line 172
    invoke-virtual {p2, p1}, Landroidx/core/app/i$c;->a(Landroidx/core/app/i$a;)Landroidx/core/app/i$c;

    :cond_0
    return-object p2
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/b;->c()Lcom/roblox/client/pushnotification/b/m;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/b;

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/b;->a(Lcom/roblox/client/pushnotification/b/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/b;)Landroid/content/Intent;
    .locals 3

    .line 135
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b;->b:J

    const-string v2, "EXTRA_CONVERSATION_ID"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 136
    invoke-virtual {p2}, Lcom/roblox/client/pushnotification/b/b;->m()Ljava/lang/String;

    move-result-object p2

    const-string v0, "EXTRA_CATEGORY"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method protected bridge synthetic a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/m;)Landroid/content/Intent;
    .locals 0

    .line 26
    check-cast p2, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/b;->a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/b;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/content/Context;ZLandroid/graphics/Bitmap;)Landroidx/core/app/i$c;
    .locals 1

    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/pushnotification/a;->a(Landroid/content/Context;ZLandroid/graphics/Bitmap;)Landroidx/core/app/i$c;

    move-result-object p2

    .line 152
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/b;->c()Lcom/roblox/client/pushnotification/b/m;

    move-result-object p3

    check-cast p3, Lcom/roblox/client/pushnotification/b/b;

    .line 153
    instance-of v0, p3, Lcom/roblox/client/pushnotification/b/a;

    if-eqz v0, :cond_0

    .line 154
    move-object v0, p3

    check-cast v0, Lcom/roblox/client/pushnotification/b/a;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/a;->a()Z

    move-result v0

    .line 155
    invoke-virtual {p3}, Lcom/roblox/client/pushnotification/b/b;->f()Ljava/lang/String;

    move-result-object p3

    .line 156
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/roblox/client/pushnotification/b;->a(Landroid/content/Context;Landroidx/core/app/i$c;Ljava/lang/String;Z)Landroidx/core/app/i$c;

    move-result-object p1

    goto :goto_0

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/b;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/core/app/i$c;->b(Ljava/lang/CharSequence;)Landroidx/core/app/i$c;

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/pushnotification/b;->b(Landroid/content/Context;Landroidx/core/app/i$c;)Landroidx/core/app/i$c;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "chat_message_received"

    return-object p1

    :cond_0
    const-string p1, "chat_message_cleared"

    return-object p1
.end method

.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/b;->c()Lcom/roblox/client/pushnotification/b/m;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/b;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b;->a:Lcom/roblox/client/pushnotification/b/e;

    const-string v1, "FAILURE_NOTIFICATION_ID"

    invoke-virtual {v0, v1}, Lcom/roblox/client/pushnotification/b/e;->b(Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1, p2}, Lcom/roblox/client/pushnotification/a;->a(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/m;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/m;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/b;->a(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/b;)V

    return-void
.end method

.method public a(Lcom/roblox/client/pushnotification/b/b;Lcom/roblox/client/pushnotification/b/b;)Z
    .locals 0

    .line 37
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/roblox/client/pushnotification/b/b;->g()Ljava/lang/String;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/roblox/client/pushnotification/b/b;

    check-cast p2, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/b;->a(Lcom/roblox/client/pushnotification/b/b;Lcom/roblox/client/pushnotification/b/b;)Z

    move-result p1

    return p1
.end method

.method protected b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/b;)Landroid/content/Intent;
    .locals 3

    .line 142
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b;->b:J

    const-string v2, "EXTRA_CONVERSATION_ID"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 143
    invoke-virtual {p2}, Lcom/roblox/client/pushnotification/b/b;->m()Ljava/lang/String;

    move-result-object p2

    const-string v0, "EXTRA_CATEGORY"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method protected bridge synthetic b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/m;)Landroid/content/Intent;
    .locals 0

    .line 26
    check-cast p2, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/b;->b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/b;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/roblox/client/pushnotification/b;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()I
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b;->b:J

    long-to-int v1, v0

    return v1
.end method

.method public e()J
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b;->a:Lcom/roblox/client/pushnotification/b/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/b;

    .line 59
    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/b;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "ChatNewMessage"

    return-object v0
.end method

.method protected g()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 130
    const-class v0, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;

    return-object v0
.end method
