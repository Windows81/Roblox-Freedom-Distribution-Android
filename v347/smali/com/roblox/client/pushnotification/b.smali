.class public Lcom/roblox/client/pushnotification/b;
.super Lcom/roblox/client/pushnotification/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/client/pushnotification/a",
        "<",
        "Lcom/roblox/client/pushnotification/b/b;",
        ">;"
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "key_reply_message"

    sput-object v0, Lcom/roblox/client/pushnotification/b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/a;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/roblox/client/pushnotification/b;->b:J

    .line 33
    return-void
.end method

.method private a(Lcom/roblox/client/pushnotification/b/b;Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 191
    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    const-string v1, "chat_message_replied"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v1, "EXTRA_CONVERSATION_ID"

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 195
    const-string v1, "EXTRA_CATEGORY"

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v1, "EXTRA_CONVERSATION_TITLE"

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, "EXTRA_NOTIFICATION_ID"

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "EXTRA_MESSAGE_ID"

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->d()J

    move-result-wide v2

    long-to-int v1, v2

    const/high16 v2, 0x10000000

    invoke-static {p2, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/support/v4/app/z$c;Ljava/lang/String;Z)Landroid/support/v4/app/z$c;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    const v0, 0x7f0e01a2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 177
    if-eqz p4, :cond_0

    .line 178
    const v0, 0x7f0e01a1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_0
    invoke-virtual {p2, v0}, Landroid/support/v4/app/z$c;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$c;

    .line 181
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/support/v4/app/z$c;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/z$c;

    .line 182
    const v1, 0x7f0e01a0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/app/z$c;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$c;

    .line 184
    new-instance v1, Landroid/support/v4/app/z$b;

    invoke-direct {v1}, Landroid/support/v4/app/z$b;-><init>()V

    invoke-virtual {v1, v0}, Landroid/support/v4/app/z$b;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$b;

    move-result-object v0

    .line 185
    invoke-virtual {p2, v0}, Landroid/support/v4/app/z$c;->a(Landroid/support/v4/app/z$d;)Landroid/support/v4/app/z$c;

    .line 186
    return-object p2
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 205
    invoke-static {p0}, Landroid/support/v4/app/ae;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    sget-object v1, Lcom/roblox/client/pushnotification/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/roblox/client/pushnotification/b/b;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneToOneConversation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 98
    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/roblox/client/pushnotification/b/b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 76
    if-lez v0, :cond_2

    .line 77
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    .line 78
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/b;

    .line 80
    instance-of v4, v0, Lcom/roblox/client/pushnotification/b/a;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 77
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 86
    :cond_0
    if-nez v1, :cond_1

    .line 87
    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/b;->a(Lcom/roblox/client/pushnotification/b/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 89
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/b;->a(Lcom/roblox/client/pushnotification/b/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 93
    :cond_2
    return-object v1
.end method

.method private b(Landroid/content/Context;Landroid/support/v4/app/z$c;)Landroid/support/v4/app/z$c;
    .locals 5

    .prologue
    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 163
    const v0, 0x7f0e019f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    new-instance v0, Landroid/support/v4/app/ae$a;

    sget-object v2, Lcom/roblox/client/pushnotification/b;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/support/v4/app/ae$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ae$a;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ae$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ae$a;->a()Landroid/support/v4/app/ae;

    move-result-object v2

    .line 166
    new-instance v3, Landroid/support/v4/app/z$a$a;

    const v4, 0x7f07006e

    .line 167
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/b;->c()Lcom/roblox/client/pushnotification/b/m;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/b;

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/pushnotification/b;->a(Lcom/roblox/client/pushnotification/b/b;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {v3, v4, v1, v0}, Landroid/support/v4/app/z$a$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 168
    invoke-virtual {v3, v2}, Landroid/support/v4/app/z$a$a;->a(Landroid/support/v4/app/ae;)Landroid/support/v4/app/z$a$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/z$a$a;->a(Z)Landroid/support/v4/app/z$a$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/z$a$a;->a()Landroid/support/v4/app/z$a;

    move-result-object v0

    .line 169
    invoke-virtual {p2, v0}, Landroid/support/v4/app/z$c;->a(Landroid/support/v4/app/z$a;)Landroid/support/v4/app/z$c;

    .line 171
    :cond_0
    return-object p2
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/b;->c()Lcom/roblox/client/pushnotification/b/m;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/b;

    .line 69
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/b;->a(Lcom/roblox/client/pushnotification/b/b;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/b;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 131
    const-string v0, "EXTRA_CONVERSATION_ID"

    iget-wide v2, p0, Lcom/roblox/client/pushnotification/b;->b:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 132
    const-string v0, "EXTRA_CATEGORY"

    invoke-virtual {p2}, Lcom/roblox/client/pushnotification/b/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    return-object p1
.end method

.method protected bridge synthetic a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/m;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 26
    check-cast p2, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/b;->a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/b;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;ZLandroid/graphics/Bitmap;)Landroid/support/v4/app/z$c;
    .locals 3

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/pushnotification/a;->a(Landroid/content/Context;ZLandroid/graphics/Bitmap;)Landroid/support/v4/app/z$c;

    move-result-object v2

    .line 147
    const v0, 0x7f05001a

    invoke-static {p1, v0}, Landroid/support/v4/a/c;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/z$c;->c(I)Landroid/support/v4/app/z$c;

    .line 149
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/b;->c()Lcom/roblox/client/pushnotification/b/m;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/b;

    .line 150
    instance-of v1, v0, Lcom/roblox/client/pushnotification/b/a;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 151
    check-cast v1, Lcom/roblox/client/pushnotification/b/a;

    invoke-virtual {v1}, Lcom/roblox/client/pushnotification/b/a;->a()Z

    move-result v1

    .line 152
    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/b;->f()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/roblox/client/pushnotification/b;->a(Landroid/content/Context;Landroid/support/v4/app/z$c;Ljava/lang/String;Z)Landroid/support/v4/app/z$c;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/z$c;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$c;

    .line 156
    invoke-direct {p0, p1, v2}, Lcom/roblox/client/pushnotification/b;->b(Landroid/content/Context;Landroid/support/v4/app/z$c;)Landroid/support/v4/app/z$c;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 118
    const-string v0, "chat_message_received"

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "chat_message_cleared"

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/b;->c()Lcom/roblox/client/pushnotification/b/m;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/b;)V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b;->a:Lcom/roblox/client/pushnotification/b/e;

    const-string v1, "FAILURE_NOTIFICATION_ID"

    invoke-virtual {v0, v1}, Lcom/roblox/client/pushnotification/b/e;->b(Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1, p2}, Lcom/roblox/client/pushnotification/a;->a(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/m;)V

    .line 48
    return-void
.end method

.method public bridge synthetic a(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/m;)V
    .locals 0

    .prologue
    .line 26
    check-cast p2, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/b;->a(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/b;)V

    return-void
.end method

.method public a(Lcom/roblox/client/pushnotification/b/b;Lcom/roblox/client/pushnotification/b/b;)Z
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/roblox/client/pushnotification/b/b;->g()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/roblox/client/pushnotification/b/b;

    check-cast p2, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/b;->a(Lcom/roblox/client/pushnotification/b/b;Lcom/roblox/client/pushnotification/b/b;)Z

    move-result v0

    return v0
.end method

.method protected b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/b;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 138
    const-string v0, "EXTRA_CONVERSATION_ID"

    iget-wide v2, p0, Lcom/roblox/client/pushnotification/b;->b:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 139
    const-string v0, "EXTRA_CATEGORY"

    invoke-virtual {p2}, Lcom/roblox/client/pushnotification/b/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    return-object p1
.end method

.method protected bridge synthetic b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/m;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 26
    check-cast p2, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/b;->b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/b;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b;->b:J

    long-to-int v0, v0

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
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

    .prologue
    .line 112
    const-string v0, "ChatNewMessage"

    return-object v0
.end method

.method protected g()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 126
    const-class v0, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;

    return-object v0
.end method
